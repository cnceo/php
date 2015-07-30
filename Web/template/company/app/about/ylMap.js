/*
** yl_map ���
*/
var ylmap = ylmap || {};
ylmap.init = function(){
	var mapBox			= $('.ylMap'),												//��ͼ����Jquery����
	
		latTarget		= Number(mapBox.next(".mapVal").find('.latitude').val()),	//��ȡĿ��γ������
		lngTarget		= Number(mapBox.next(".mapVal").find('.longitude').val()),	//��ȡĿ�꾭������
		
		way				= null,					//�����ķ�ʽ
		transit 		= null,					//����������
		driving 		= null,					//�Լݵ���
		location_point 	= null;					//�豸��ǰ��point����

	/*
	** ��ͼ��ʼ��
	** _marker��ʶȫ�ֱ���
	** _map��ͼȫ�ֱ���
	*/
	var mapInit = function() {
		
		mapBox.each(function(index, element) {
           var $t =  $(this), mapBoxId = $(this).attr("id");
		 
		  if(mapBox.size()>0){
			var map = new BMap.Map(mapBoxId);			//����Mapʵ��--�����ǵ�ǰjquery����
			var latTarget = Number($t.next(".mapVal").find('.latitude').val()),//��ȡĿ��γ������
			 lngTarget = Number($t.next(".mapVal").find('.longitude').val()), 	//��ȡĿ�꾭������
				point = new BMap.Point(lngTarget,latTarget),   //ȫ�ֱ���
				marker = new BMap.Marker(point);     			//ȫ�ֱ�����ͼ��ע
				  console.log("lngTarget:"+lngTarget);
			window.map = map;									//��map����Ϊȫ�ֱ���
			window.point = point;
			window.marker = marker;								//��marker����Ϊȫ�ֱ���
			map.enableScrollWheelZoom();        		  		//���ù��ַŴ���С
			map.enableInertialDragging();         				//���õ�ͼ��ҷ
			map.centerAndZoom(point,15);						//��Ŀ�궨λ�ڵ�ͼ������
			map.addOverlay(marker);              				//����ע��ӵ���ͼ��
			
			marker.addEventListener("click", function(e){    	//marker������´򿪴���
				mapOpenInfo();
			});
			map.addEventListener("click", function(e){    		//��ͼ������ڲ��ر�
				return false;
			}); 
		}
		var mapVal = $(this).next(".mapVal").find('.address').val();		//��ȡ��������ݵ�Jquery����
		var data = eval('('+mapVal+')');						//json���󣬴��Ŀ�������Ϣ
		mapOpenInfo(marker,data);
        });
		
	},
	
	
	/*
	**�����ͼ�����ı�������Ϣ���ڳ���
	*/
	mapOpenInfo = function(marker,data){
	
		mapAddInfo(marker,data);								//���Ҵ�info������ʾĿ����Ϣ
       
	},

	/**
	 **����Ŀ����Ϣ����
	 * @param marker  �ٶȵ�ͼmarker��ע
	 * @param data    ���ݱ�plugin_store��¼
	 * @text 		  ��ΪJquery������
	 */
	mapAddInfo = function(marker_,data) {
		/*
		**��̬������ϢԪ��
		*/
		var content_infoWindow = $('<div class="infoWindow">'+'<h4>'+data.sign_name+'</h4>'+'<p class="tel"><a href="tel:'+data.contact_tel+'">'+data.contact_tel+'</a></p>'+'<p class="address">'+data.address+'</p>'+'<div class="window_btn"><button class="open_navigate open_bus" onclick="open_navigate(this)">����</button><button class="open_navigate open_car" onclick="open_navigate(this)">�Լ�</button><span class="State"></span></div>'+'</div>');
		
		/*
		**����Ϣ����
		*/
		var opts = {    
			width : 400,    	 // ��Ϣ���ڿ�� 0Ϊauto   
			height: 0,  		 // ��Ϣ���ڸ߶� 0Ϊauto  
			title:' '
		}  

		var info = new BMap.InfoWindow(content_infoWindow[0],opts);
		marker_.openInfoWindow(info,map.getCenter());

	};

	open_navigate = function(obj){
		$(obj).hasClass("open_bus") ? way = 'bus' : way = 'car';				 //�򿪵�������
		navigate();
		$('.infoWindow').find('span.State').html('���ڶ�λ����λ�ã�');	
	
	},


	//��ȡ�豸��ǰ�����겢�Ҵ�ŵ�location_point��
	/**************************************************************************************************************
	 * �豸��λ��ȡlocation����ֵ
	 */
	navigate = function(){
		if (window.navigator.geolocation) {
			window.navigator.geolocation.getCurrentPosition(handleSuccess, handleError, {timeout: 10000});
		}else{
			alert('sorry�������豸��֧�ֶ�λ����')
		}
	},

	/**
	 * ��λʧ��
	 */
	handleError = function(error){
		var msg;
		switch(error.code) {
		    case error.TIMEOUT:
		    	msg = "��ȡ��ʱ!���Ժ�����!";
		        break;
		    case error.POSITION_UNAVAILABLE:
		    	msg = '�޷���ȡ��ǰλ��!';
		        break;
		    case error.PERMISSION_DENIED:
		    	msg = '���Ѿܾ��������λ��!';
		        break;
		    case error.UNKNOWN_ERROR:
		    	msg = '�޷���ȡ��ǰλ��!';
		        break;
		}
		if ($('.infoWindow').find('span.State').length>0) {
			$('.infoWindow').find('span.State').html(msg);
		} else {
			alert(msg);
		}
	},
	
	/**
	 * ��õ�ǰ�ֻ�λ����Ϣ
	 */
	handleSuccess = function(position){
		// ��ȡ����ǰλ�þ�γ�� 
		var coords = position.coords;
		var lat = coords.latitude;
		var lng = coords.longitude;
		location_point = new BMap.Point(lng,lat);
		$('.infoWindow').find('span.State').html('��ȡ��Ϣ�ɹ������ڼ����У�');
		//ѡ�񵼺���ʽ
		if(way=="bus")	bus_transit();
		else self_transit();
		//չ����ͼ����
		mapBox.parent().addClass("open");
		//��ȡ���¼�
		mapBox.parent().find(".close_map").click(function(){
			mapBox.parent().removeClass("open");

			//���·��
			if(transit)	transit.clearResults();
			if(driving)	driving.clearResults();
			
			//�������Ķ�λ��
			map.reset();
			map.centerAndZoom(point,15);
			mapBox.parent().find(".close_map").hide();
			//������Ϣ����
			mapOpenInfo();

			//ҳ���л��¼���
			$(".m-page").on('mousedown touchstart',page_touchstart);
			$(".m-page").on('mousemove touchmove',page_touchmove);
			$(".m-page").on('mouseup touchend mouseout',page_touchend);

			//�Գ�����
			$('.fn-audio').show();
			
			//�رյ������ֺ��л���ť
			$('#transit_result').removeClass("open");
			$(".transitBtn").hide();
			
			
		});

		/*ȡ��������ͼ��ҳ���л�*/
		$(".m-page").off('mousedown touchstart');
		$(".m-page").off('mousemove touchmove');
		$(".m-page").off('mouseup touchend mouseout');

	};
	
	/*
	**�򿪵���
	*/
	$(".m-map .tit p").click(function(){
		mapBox.parent().toggleClass("open");
		if(mapBox.parent().hasClass("open")){
			//�ر�����
			$('.fn-audio').hide();
			/*ȡ��������ͼ��ҳ���л�*/
			$(".m-page").off('mousedown touchstart');
			$(".m-page").off('mousemove touchmove');
			$(".m-page").off('mouseup touchend mouseout');
		}else{
			//�Գ�����
			$('.fn-audio').show();
			//ҳ���л��¼���
			$(".m-page").on('mousedown touchstart',page_touchstart);
			$(".m-page").on('mousemove touchmove',page_touchmove);
			$(".m-page").on('mouseup touchend mouseout',page_touchend);
		}
	});


	/************************************************************************************************************/
	/**
	 * ������·��
		*/
	bus_transit = function(){
		//���·��
		if(transit)	transit.clearResults();
		if(driving)	driving.clearResults();

		
		if(!location_point){
			alert('��Ǹ����λʧ�ܣ�');
			return;
		}
		$('.fn-audio').hide();
		if(typeof(loadingPageShow)=="function") loadingPageShow();
		$('.infoWindow').find('span.State').html('���ڻ��Ƴ�����·��');
		var transit_result = $("#transit_result") || $('<div id="transit_result"></div>');
		transit_result.appendTo(mapBox);
		transit = new BMap.TransitRoute(map, {
			renderOptions: {map: map,panel: "transit_result",autoViewport: true },onSearchComplete :searchComplete
		});
		transit.search(location_point, point);
	},

	/**
	 * ���Լ�·��
		*/
	self_transit = function(){
		//���·��
		if(transit)	transit.clearResults();
		if(driving)	driving.clearResults();
		
		if(!location_point){
			alert('��Ǹ����λʧ�ܣ�');
			return;
		}
		$('.fn-audio').hide();
		if(typeof(loadingPageShow)=="function") loadingPageShow();
		$('.infoWindow').find('span.State').html('���ڻ��Ƴ�����·��');
		var transit_result = $("#transit_result") || $('<div id="transit_result"></div>');
		transit_result.appendTo(mapBox);
		driving = new BMap.DrivingRoute(map, {
				renderOptions: {map: map,panel: transit_result.attr('id'),autoViewport: true },onSearchComplete :searchComplete
			});
		driving.search(location_point, point);
	},
	/**
	 * @param result
	 * ��·�����ص�
	 */
	searchComplete = function(result) {
		if (result.getNumPlans() == 0) {
			
			alert('�ǳ���Ǹ,δ����������·��');
			//���õ�ͼ
			map.reset();
			map.centerAndZoom(point,15);
			mapBox.parent().find(".close_map").hide();
			mapOpenInfo();
			$('#transit_result').removeClass("open").hide();
			$(".transitBtn").hide();
			
		}else{
			$('#transit_result').addClass("open");	
			$('.infoWindow').find('span.State').html('');
			if(!$('.transitBtn').length>0){
				$('#transit_result').after($('<p class="transitBtn close" onclick="transit_result_close()"><a href="javascript:void(0)">�ر�</a></p>'));
				$('#transit_result').after($('<p class="transitBtn bus" onclick="bus_transit()"><a href="javascript:void(0)">����</a></p>'));
				$('#transit_result').after($('<p class="transitBtn car" onclick="self_transit()"><a href="javascript:void(0)">�Լ�</a></p>'));
			}
			mapBox.parent().find(".close_map").show();
			//�򿪵������ֺ��л���ť
			$("#transit_result").addClass("open");
			$(".transitBtn").show();
		}
		if(typeof(loadingPageHide)=="function") loadingPageHide();
		
		if($("#transit_result").hasClass("open")){
			$(".close").find("a").html("�ر�");
		}
		else{
			$(".close").find("a").html("��");
		}
		
	};
	
	/*
	**transit_result���������л�
	*/
	transit_result_close = function(){
		if($("#transit_result").hasClass("open")){
			$('#transit_result').removeClass("open");
			$(".close").find("a").html("��");
		}
		else{
			$('#transit_result').addClass("open");
			$(".close").find("a").html("�ر�");
		}
	};

	/*
	**�첽��������һ���ű�--map
	*/
	window.mapInit = mapInit;	//����ʼ����������Ϊȫ�ֺ��� ���Ե��ö�̬API��ͼ
	
	function loadfunction() {  
		/*���ذٶȵ�ͼAPI*/
		var script = document.createElement("script");  
		script.src = "http://api.map.baidu.com/api?v=1.4&callback=mapInit";
		document.head.appendChild(script);

		/*���ذٶȵ�ͼ��ʽ--�����ʽ*/
		var Style = document.createElement("style");  
		Style.type = "text/css";
		
		var style_map =
				 "#transit_result{display:none;position:absolute;top:0;left:0;width:100%;height:100%;z-index:1000;overflow-y:scroll;}"+
				 "#transit_result.open{display:block;}"+
				 "#ylMap img{width:auto;height:auto;}"+
				 "#ylMap .transitBtn {display:none;position:absolute;z-index:3000;}"+
				 "#ylMap .transitBtn a{display:block;width:80px;box-shadow:0 0 2px rgba(0,0,0,0.6) inset, 0 0 2px rgba(0,0,0,0.6);height:80px;border-radius:80%;color:#fff;background:rgba(230,45,36,0.8);text-align:center;line-height:80px;font-size:24px; font-weight:bold}"+
				 "#ylMap .transitBtn.close {top:10px;right:10px;}"+
				 "#ylMap .transitBtn.bus {top:10px;right:110px;}"+
				 "#ylMap .transitBtn.car {top:110px;right:10px;}"+
				 "#ylMap .transitBtn.bus a{background:rgba(28,237,235,0.8);}"+
				 "#ylMap .transitBtn.car a{background:rgba(89,237,37,0.8);}"+
				 ".m-map.open{height:92%;width:100%;}"+
				 "#transit_result h1{font-size:26px!important;}"+
				 "#transit_result div[onclick^='Instance']{background:none!important;}"+
				 "#transit_result span{display:inline-block;font-size:20px;padding:0 5px;}"+
				 "#transit_result table {font-size:20px!important;}"+
				 "#transit_result table td{padding:5px 10px!important;line-height:150%!important;}"+
				 ".infoWindow h4{font-size:24px;}"+
				 ".infoWindow p{margin-bottom:10px;font-size:24px;}"+
				 ".infoWindow .window_btn{font-size:24px;}"+
				 ".infoWindow .window_btn .open_navigate{display:inline-block;padding:10px 15px;margin-right:10px;border:1px solid #ccc;border-radius:6px;text-align:center;cursor:pointer;}"+
				 ".anchorBL{display:none!important;}";
		Style.innerHTML = style_map ;
		document.head.appendChild(Style);
	}
	loadfunction();
};


