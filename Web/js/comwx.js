

function check_company_cert(){
	layer.closeAll();
	if($.trim($("#wxname").val())==''){
		layer.msg('��½�ʺŲ���Ϊ�գ�',2,8,function(){getyyzz('���ϴ�����ƽ̨�ĵ�½�ʺ�');});
		return false;
	}
	if($.trim($("#wxpassword").val())==''){
		layer.msg('��½���벻��Ϊ�գ�',2,8,function(){getyyzz('���ϴ�����ƽ̨�ĵ�½����');});
		return false;
	}
	if($.trim($("#APPID").val())==''){
		layer.msg('AppID(Ӧ��ID)����Ϊ�գ�',2,8,function(){getyyzz('�����빫�ں�AppID(Ӧ��ID)');});
		return false;
	}
	if($.trim($("#APPSECRET").val())==''){
		layer.msg('AppSecret(Ӧ����Կ)����Ϊ�գ�',2,8,function(){getyyzz('�����빫�ں�AppSecret(Ӧ����Կ)');});
		return false;
	}
	layer.load('���������ϴ��У����Ժ�...',0);return true;
}


function getyyzz(title){
	$.layer({
		type : 1,
		title :title,
		offset: [($(window).height() - 380)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['500px','auto'],
		page : {dom :"#yyzz"}
	});
}
