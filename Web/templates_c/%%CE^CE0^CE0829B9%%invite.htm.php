<?php /* Smarty version 2.6.26, created on 2015-06-15 20:23:07
         compiled from wap/invite.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header_cont.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 

<link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/css/member-wap.css" type="text/css"> 

<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">��ҵ��Ա����</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>


<div class="main_member_body">
 
 <div style="padding:10px 10px;">
 <input name="uid" id="uid" value="<?php echo $_GET['uid']; ?>
" type="hidden">
<div class="wap_member_comp_h1"><span>��������</span></div> 
<div class="wap_member_Receive">
       <div class="com_box_yq" id='job_box' >
       <div style="background:#fff;">
        <dl class="resume-cont_wate_list">
          <dt>
			<span class="city_01">����ְλ��</span>
		  </dt>
          <dd>
          <div class="yq_in_selectOption" style="width:100%"><select id='jobname'>
          	<?php $_from = $this->_tpl_vars['joblist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
            <option value="<?php echo $this->_tpl_vars['one']['name']; ?>
"><?php echo $this->_tpl_vars['one']['name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
          </select></div></dd>
        </dl>
		 <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">��ϵ�ˣ�</span></dt>
			<dd> <input   class="invite_text"  id='linkman' value='<?php echo $_GET['linkman']; ?>
'></dd>
        </dl>
       <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">��ϵ�绰��</span></dt>
		  <dd>  <input  class="invite_text" id='linktel' value='<?php echo $_GET['linktel']; ?>
'></dd> 
        </dl>
	 <dl class="resume-cont_wate_list" >
          <dt style="width:auto;"> <span class="city_01">����ʱ�䣺�磺2015-5-20 ����8��-10��</span> </dt>
            <dd><input  class="invite_text" id='intertime' value='<?php echo $_GET['intertime']; ?>
'></dd> 
        </dl>
		 <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">���Ե�ַ��</span></dt>
			<dd><input  class="invite_text" id='address' value='<?php echo $_GET['address']; ?>
'></dd> 
        </dl>
		<dl class="resume-cont_wate_list">
			<dt><span class="city_01">���Ա�ע��</span></dt>
			<dd><textarea id="content" class="textAreaMsg tip"><?php echo $_GET['jobname']; ?>
</textarea></dd>  
		</dl>
      <dl  class="resume-cont_wate_list" id="resume_job"> 
        <dd><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="reinputText2"  type="button" value="��������"  ></dd>
    </dl>
   </div>
 </div>
 </div> 
</div> 
</div> </div>

<script language="javascript" type="text/javascript">
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
	
	//��������
	$("#click_invite").click(function(){
		var uid=$("#uid").val();
		var content=$("#content").val();
		var username=$("#username").val();
		var job=$("#jobname").val();
		var intertime=$("#intertime").val();
		var linkman=$("#linkman").val();
		var linktel=$("#linktel").val();
		var address=$("#address").val();
		job=job.split("+");
		var jobname=job[0];
		var jobid=job[1];
		if($("#update_yq").attr("checked")=='checked'){
			var update_yq=1;
		}else{
			var update_yq=0;
		}
		if($.trim(content)==""){
			layermsg('���ݲ���Ϊ�գ�');return false;
		}
		//layer.closeAll();
		//loadi = layer.load('ִ���У����Ժ�...',0);
		$.post(weburl+"/index.php?m=ajax&c=sava_ajaxresume",{uid:uid,content:content,username:username,jobname:jobname,update_yq:update_yq,address:address,linkman:linkman,linktel:linktel,intertime:intertime,jobid:jobid},function(data){
			//layer.close(loadi);
			var data=eval('('+data+')');
			var status=data.status;
			var integral=data.integral;
			if(status==8){
				layermsg('���ѱ����û������������');return false;
			}else if(status==9){
				layermsg('���û��ѱ��������������');return false;
			}else if(!status || status==0){
				//layer.alert('���ȵ�¼��', 0, '��ʾ',function(){window.location.href ="index.php?m=login&usertype=2&type=out";window.event.returnValue = false;return false;  });
			}else if(status==5){
				//layer.confirm('������'+integral+integral_pricename+'�������������ԣ��Ƿ��ֵ��', function(){window.location.href =weburl+"/member/index.php?c=pay";window.event.returnValue = false;return false;  });
			}else if(status==3){
				layermsg('���ѳɹ����룡',2,function(){history.back();});
			}else if(status==7){
				layermsg('���Ѿ���������˲ţ��벻Ҫ�ظ����룡',2,function(){history.back();});
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