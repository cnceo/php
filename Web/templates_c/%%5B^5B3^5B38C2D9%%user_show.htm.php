<?php /* Smarty version 2.6.26, created on 2015-06-15 20:13:37
         compiled from wap/user_show.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/user_show.htm', 64, false),array('function', 'image', 'wap/user_show.htm', 133, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">���˲�</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 
<section>
  <div class="user_header_warp">
    <div class="user_header_img">
      <div class="user_header_bg"><img src="http://www.hr135.com/data/upload/user/20150606/1433560499629_1.JPG" ></div>
    </div>
    <div class="user_header_mag">
      <div class="user_header_u_name"><?php echo $this->_tpl_vars['Info']['username_n']; ?>
 </div>
      <div class="user_header_u_info"><i class="fa fa-venus"></i><span class="user_header_u_s"><?php echo $this->_tpl_vars['Info']['user_sex']; ?>
</span><i class="fa fa-leaf"></i><span class="user_header_u_s">����</span><i class="fa fa-tasks"></i><span class="user_header_u_s"><?php echo $this->_tpl_vars['Info']['user_exp']; ?>
</span></div>
    </div>
  </div>
</section>


<section>
  <div class="user_contnet mt10">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">������Ϣ</span></div>
      <ul class="user_contnet_ul">
        <li><span class="user_contnet_info_n">ѧ����</span>����</li>
        <li><span class="user_contnet_info_n">��ߣ�</span>160cm </li>        <li><span class="user_contnet_info_n">���أ�</span>45kg</li>        <li><span class="user_contnet_info_n">�����</span>δ��</li>        <li><span class="user_contnet_info_n">���壺</span>��</li>        <li><span class="user_contnet_info_n">���ڵأ�</span>���� </li>        <li><span class="user_contnet_info_n">��ס�أ�</span>����ʡ��Ǩ���������ռ���</li>        <li><span class="user_contnet_info_n">���£�</span>2015-06-12</li>
      </ul>
    </div>
    <div class="user_contnet_box mt10 ">
      <div class="wap_title"><span class="">��ְ����</span></div>
      <ul class="user_contnet_ul">
        <li style="width:100%; height:auto"><span class="user_contnet_info_n">����</span><span class="c288"><?php echo $this->_tpl_vars['Info']['jobname']; ?>
</span></li>
        <li><span class="user_contnet_info_n">нˮ��</span><?php echo $this->_tpl_vars['Info']['salary']; ?>
</li>
        <li><span class="user_contnet_info_n">���ʣ�</span>ȫְ</li>
        <li><span class="user_contnet_info_n">���ڣ�</span>��ʱ����</li>
        <li><span class="user_contnet_info_n">�ص㣺</span>�Ϻ� �Ϻ� ������ </li>
        <li><span class="user_contnet_info_n">��ҵ��</span><?php echo $this->_tpl_vars['Info']['hy']; ?>
</li>
        <li><span class="user_contnet_info_n">״̬��</span></li>
      </ul>
    </div>
    <div class="user_contnet_box mt10 ">
      <div class="wap_title"><span class="">��������</span></div>
      <?php echo $this->_tpl_vars['Info']['description']; ?>
 </div>
  </div>
</section>

<div class="user_contnet">
<div class="user_contnet_box">

<?php if ($this->_tpl_vars['Info']['user_work']): ?>
<section class="com_post_title">
  <div class="wap_title"><span class="">��������</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['worklist']):
?>
  <div class="user_jl_jy_list">     
  <div class="job_jl_list">
      <div class="firm_name_h1_h"><?php echo $this->_tpl_vars['worklist']['name']; ?>
</div>
      <aside><em>��ְְλ��</em><?php echo $this->_tpl_vars['worklist']['title']; ?>
</aside>
      <aside><em>��ְʱ�䣺</em><?php echo ((is_array($_tmp=$this->_tpl_vars['worklist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 �� <?php if ($this->_tpl_vars['worklist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['worklist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>����<?php endif; ?> </aside>
      <aside><em>����ְ��</em><?php echo $this->_tpl_vars['worklist']['content']; ?>
</aside>
    </div>
     </div>
	 <?php endforeach; endif; unset($_from); ?>
</section>
<?php endif; ?>

<?php if ($this->_tpl_vars['Info']['user_edu']): ?>
<section class="com_post_title">
  <div class="wap_title"><span class="">��������</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['edulist']):
?>
  <div class="user_jl_jy_list">     <div class="job_jl_list">
      <div class="firm_name_h1_h"><?php echo $this->_tpl_vars['edulist']['name']; ?>
</div>
      <aside><em>����ְλ��</em><?php echo $this->_tpl_vars['edulist']['title']; ?>
  </aside>
      <aside><em>��Уʱ�䣺</em><?php echo ((is_array($_tmp=$this->_tpl_vars['edulist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 �� <?php if ($this->_tpl_vars['edulist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['edulist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>����<?php endif; ?></aside>
      <aside><em>רҵ������</em><?php echo $this->_tpl_vars['edulist']['content']; ?>
</aside>
    </div>
     </div>
	 <?php endforeach; endif; unset($_from); ?>
</section>
<?php endif; ?>
 
<?php if ($this->_tpl_vars['Info']['user_skill']): ?>  
<section class="com_post_title">
  <div class="wap_title"><span class="">רҵ����</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['skilllist']):
?>
  <div class="user_jl_jy_list">     <div class="job_jl_list">
      <aside><em>�������ƣ�</em><?php echo $this->_tpl_vars['skilllist']['skill_n']; ?>
 </aside>
      <aside><em>����ʱ�䣺</em><?php echo $this->_tpl_vars['skilllist']['longtime']; ?>
</aside>
      <aside><em>�������</em><?php echo $this->_tpl_vars['skilllist']['name']; ?>
</aside>
      <aside><em>�����̶ȣ�</em><?php echo $this->_tpl_vars['skilllist']['ing_n']; ?>
</aside> </div>
   <?php endforeach; endif; unset($_from); ?>	  
</section>
<?php endif; ?>

<?php if ($this->_tpl_vars['Info']['user_cert']): ?>
        <section class="com_post_title">
    <div class="wap_title"><span class="">֤��</span></div>
	<?php $_from = $this->_tpl_vars['Info']['user_cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['certlist']):
?>
    <div class="user_jl_jy_list">       <div class="job_jl_list">
        <aside><em>֤��ȫ�ƣ�</em><?php echo $this->_tpl_vars['certlist']['name']; ?>
</aside>
        <aside><em> �䷢ʱ�䣺</em><?php echo ((is_array($_tmp=$this->_tpl_vars['certlist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 �� <?php if ($this->_tpl_vars['certlist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['certlist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>����<?php endif; ?></aside>
        <aside><em> �䷢��λ��</em><?php echo $this->_tpl_vars['certlist']['title']; ?>
</aside>
        <aside><em>֤��������</em><?php echo $this->_tpl_vars['certlist']['content']; ?>
</aside>
         </div>
	<?php endforeach; endif; unset($_from); ?>	 
      </section>
<?php endif; ?>
   
<?php if ($this->_tpl_vars['Info']['user_other']): ?>
          <section class="com_post_title">
        <div class="wap_title"><span class="">������Ϣ</span></div>
		<?php $_from = $this->_tpl_vars['Info']['user_other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['otherlist']):
?>
        <div class="user_jl_jy_list">           <div class="job_jl_list">
            <aside><em>�������⣺</em><?php echo $this->_tpl_vars['otherlist']['title']; ?>
</aside>
            <aside><em>����������</em><?php echo $this->_tpl_vars['otherlist']['content']; ?>
</aside>
          </div>
           </div>
		   <?php endforeach; endif; unset($_from); ?>
      </section>
<?php endif; ?>
	  
<section class="com_post_title">
        <div class="wap_title"><span class="">��ϵ��ʽ</span></div>
        <div style="clear:both"></div>
		
		<?php if ($this->_tpl_vars['Info']['m_status'] == '1'): ?>
                 
				<aside class="wap_touch_img"><em>���֤��</em> <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'idcard','width' => 180), $this);?>
<?php if ($this->_tpl_vars['Info']['idcard_status'] == 1): ?>����֤<?php endif; ?></aside>
				<aside class="wap_touch_img"><em>��ϵ�ֻ���</em><?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telphone','width' => 200), $this);?>
</aside>
				<?php if ($this->_tpl_vars['Info']['basic_info'] == '1'): ?>
				<aside class="wap_touch_img"><em>��ϵ������</em> <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telhome','width' => 200), $this);?>
</aside>
				<?php endif; ?> 
				<aside class="wap_touch_img"><em>��ϵ���䣺</em><?php echo $this->_tpl_vars['Info']['email']; ?>
</aside>
		<?php else: ?>
				 <div class="com_post_login"> ����û�е�¼������<a href="javascript:void(0);" onclick="showlogin('2');">��¼</a>��</div>
        <?php endif; ?>     
</section>



	  
	  
	  
    </div>
  </div> 


<div id="yun_cz" class="fn-dbox center">
  <input name="uid" value="<?php echo $this->_tpl_vars['cuid']; ?>
" type="hidden">
  <div class="deep fn-dbox-flex fn-dbox-flex-flex1"> 
  <i class="fa fa-send-o"></i>
  <input class="btn_1 user_post_talentadd" type="button" onClick="talent_pool('<?php echo $this->_tpl_vars['Info']['uid']; ?>
','<?php echo $this->_tpl_vars['Info']['id']; ?>
')" value="�����˲ſ�" style="border:0px;color:#fff;background:#288EDF">
  </div>
  <div id="favBtn" class="light" style="width:100px">
  <i class="fa fa-star-o"></i> 
  <input class="btn_1 sq_resume user_post_invite" type="button"  uid="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" eid="<?php echo $this->_tpl_vars['Info']['id']; ?>
" username="<?php echo $this->_tpl_vars['Info']['name']; ?>
" name="submit" value="����" style="border:0px;color:#fff;background:#4CA1E4">
  </div>
</div>
  

</div>
       <div class="com_box_yq" id='job_box' style="display:none;float:left; z-index:100; position:absolute;top:10px;">
        <dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">����ְλ��</span>
		  </dt>
          <dd><select id='jobname'></select></dd>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">��ϵ�ˣ�</span>
             <dd> <input   id='linkman' value=''>
</dd>
        </dl>
        <dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">��ϵ�绰��</span>
              <dd>  <input id='linktel' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">����ʱ�䣺</span>
            <dd><input id='intertime' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">���Ե�ַ��</span><dd><input id='address' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
			<dt><span class="city_01">���Ա�ע��</span><dd><textarea id="content"  class="resyme_text"></textarea></dd>
		</dl>
      <dl class="com_box_yq_dl" id="resume_job" style="height:40px;">
        <dt><span class="city_01">&nbsp;</span><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
		<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="resume_sub_yq" id="click_invite" type="button" value="��������"  >
    </dl>
  
 </div>
 
 
 
<script language="javascript" type="text/javascript">
function for_link(eid){
	$.post(weburl+"/index.php?m=ajax&c=for_link",{eid:eid},function(data){  
		var data=eval('('+data+')');
		var status=data.status;
		if(status==1){
			layermsg(data.msg);
		}else if(status==2){
				layer.open({
					content:data.msg,
					btn: ['ȷ��', 'ȡ��'],
					shadeClose: false,
					yes: function(){
						down_integral(eid,data.uid);
					} 
				});
		}else if(status==3){
			location.reload();
		} 
	});
}
function down_integral(eid,uid){
	$.post(weburl+"/index.php?m=ajax&c=down_resume",{type:"integral",eid:eid,uid:uid},function(data){ 
		var data=eval('('+data+')');
		var status=data.status;
		var integral=data.integral;
		if(status==5){
			layermsg('������'+integral+integral_pricename+'���������ؼ���!');
		}else if(status==3){
			location.reload();
		}else{
			layermsg(data.msg);return false;
		}
	})
}
function talent_pool(uid,eid)
{
	$.post(weburl+"/index.php?m=ajax&c=talent_pool",{eid:eid,uid:uid},function(data){
		if(data=='0'){
			layermsg('ֻ����ҵ�û����ſ��Բ�����');
		}else if(data=='1'){
			layermsg('����ɹ���');
		}else if(data=='2'){
			layermsg('�ü����Ѽ��뵽�˲ſ⣡');
		}else{
			layermsg('�Բ��𣬲�������');
		}
	});
}
$(document).ready(function(){
	$(".sq_resume").click(function(){
		if($(this).attr("uid")){$("#uid").val($(this).attr("uid"));}
		if($(this).attr("username")){$("#username").val($(this).attr("username"));}
		$.post(weburl+"/index.php?m=ajax&c=index_ajaxresume",{show_job:'1'},function(data){
			var data=eval('('+data+')');
			var status=data.status;
			var integral=data.integral;
			if(data.html){
				$("#jobname").html(data.html);
			}
			if(data.linkman){
				$("#linkman").val(data.linkman);
			}
			if(data.linktel){
				$("#linktel").val(data.linktel);
			}
			if(data.address){
				$("#address").val(data.address);
			}
			if(data.intertime){
				$("#intertime").val(data.intertime);
			}
			if(data.content){
				$("#content").text(data.content);
				$("#update_yq").attr("checked",true);
			}
			if(status == 6){
			    layermsg('���ȵ�¼��');return false;
			}
			if(!status || status == 0){
				 layermsg('��������ҵ�û������ȵ�¼��');
				/*layer.alert('��������ҵ�û������ȵ�¼��', 0, '��ʾ',function(){
					window.location.href =weburl+"/index.php?m=login&usertype=2&type=out"; window.event.returnValue = false;return false;
				});*/

			}else if(status==1){
				layer.open({
					content:"�������Խ��۳�"+integral+integral_pricename+"���Ƿ������",
					btn: ['ȷ��', 'ȡ��'],
					shadeClose: false,
					yes: function(){
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
					} 
				});
				/*layer.confirm("�������Խ��۳�"+integral+integral_pricename+"���Ƿ������",function(){
					layer.closeAll();
					$.layer({
						type : 1,
						title :'��������',
						offset: [($(window).height() - 280)/2 + 'px', ''],
						closeBtn : [0 , true],
						border : [10 , 0.3 , '#000', true],
						area : ['380px','auto'],
						page : {dom :"#job_box"}
					});
				});*/
			}else if(status==2){
				layer.open({
					content:"��ĵȼ���Ȩ�Ѿ�����,���۳�"+integral+integral_pricename,
					btn: ['ȷ��', 'ȡ��'],
					shadeClose: false,
					yes: function(){
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
					} 
				});
				/*layer.confirm("��ĵȼ���Ȩ�Ѿ�����,���۳�"+integral+integral_pricename,function(){
					layer.closeAll();
					$.layer({
						type : 1,
						title :'��������',
						offset: [($(window).height() -380)/2 + 'px', ''],
						closeBtn : [0 , true],
						border : [10 , 0.3 , '#000', true],
						area : ['380px','auto'],
						page : {dom :"#job_box"}
					});
				});*/
			}else if(status==3){ 
				/*$.layer({
					type : 1,
					title :'��������',
					offset: [($(window).height() - 380)/2 + 'px', ''],
					closeBtn : [0 , true],
					border : [10 , 0.3 , '#000', true],
					area : ['380px','auto'],
					page : {dom :"#job_box"}
				});*/
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
			}else if(status==4){
				layermsg('��Ա������������꣡');return false;
			}else if(status==5){
				layermsg('�����޷����е�ְλ��');return false;
			}
		});
	})
});
</script>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>