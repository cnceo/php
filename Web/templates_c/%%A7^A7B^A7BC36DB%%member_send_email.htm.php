<?php /* Smarty version 2.6.26, created on 2015-06-15 19:31:12
         compiled from D:%5Cwwwroot%5Ctoptophr.com%5CWeb/template/admin/member_send_email.htm */ ?>
<script>
function send_email(email){
	$("#email_user").val(email);
	$.layer({
		type : 1,
		title :'�����ʼ�',
		offset: [($(window).height() - 250)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['410px','250px'],
		page : {dom :"#email_div"}
	});
}
function send_moblie(moblie){
	$("#userarr").val(moblie);
	$.layer({
		type : 1,
		title :'���Ͷ���',
		offset: [($(window).height() - 210)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['410px','220px'],
		page : {dom :"#moblie_div"}
	});
}

function confirm_email(msg,name){
	var chk_value=[];
	var email=moblie=[];
	$('input[name="del[]"]:checked').each(function(){
		chk_value.push($(this).val());
	});
	if(chk_value.length==0){
		parent.layer.msg("��ѡ���˻���",2,8);return false;
	}else{
		var cf=parent.layer.confirm(msg,function(){
			parent.layer.close(cf);
			if(name=='email_div'){
				$('input[name="del[]"]:checked').each(function(){
					email.push($(this).attr('email'));
				});
				$("#email_user").val(email);
				$.layer({
					type : 1,
					title :'�����ʼ�',
					offset: [($(window).height() - 250)/2 + 'px', ''],
					closeBtn : [0 , true],
					border : [10 , 0.3 , '#000', true],
					area : ['410px','250px'],
					page : {dom :"#email_div"}
				});
			}else{
				$('input[name="del[]"]:checked').each(function(){
					moblie.push($(this).attr('moblie'));
				});
				$("#userarr").val(moblie);
				$.layer({
					type : 1,
					title :'���Ͷ���',
					offset: [($(window).height() - 210)/2 + 'px', ''],
					closeBtn : [0 , true],
					border : [10 , 0.3 , '#000', true],
					area : ['410px','220px'],
					page : {dom :"#moblie_div"}
				});
			}
		});
	}
}
function emailload(){
	if($.trim($("input[name='email_title']").val())==''){
		parent.layer.msg('�������ʼ����⣡', 2, 8);return false;
	}
	if($.trim($("#content").val())==''){
		parent.layer.msg('�������ʼ����ݣ�', 2, 8);return false;
	}
	layer.closeAll();
	parent.layer.load('ִ���У����Ժ�...',0);
}
function moblieload(){
	if($.trim($("#mcontent").val())==''){
		parent.layer.msg('������������ݣ�', 2, 8);return false;
	}
	layer.closeAll();
	parent.layer.load('ִ���У����Ժ�...',0);
}
</script>
<div id="moblie_div" style=" display:none;">
	<form id="formstatus" method="post" target="supportiframe" action="index.php?m=information&c=save" onsubmit="return moblieload();" >
	  <table class="table_form ">
			<tr><td>�������ݣ�</td><td><textarea name="content" id="mcontent" style="width:320px;height:90px;"class="text"></textarea></td></tr>
			<tr><td colspan='2' style='border-bottom:none'>
				<div class="admin_Operating_sub" style="margin-top:0px">
				<input class="submit_btn" type="submit" name='message_send' value="ȷ��">
				<input  class="cancel_btn" type="button" value="ȡ��" onclick="layer.closeAll();">
				</div>
			</td></tr>
			<input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
			<input type="hidden" id='userarr' name="userarr">
			<input type="hidden" value="4" name="all">
	  </table>
	 </form>
</div>
<div id="email_div" style=" display:none;">
	<form id="formstatus" method="post" target="supportiframe" action="index.php?m=email&c=send" onsubmit="return emailload();" >
	  <table class="table_form "  id="">
			<tr><td>�ʼ����⣺</td><td><input name="email_title"  class="input-text" type="text" size="40"></td></tr>
			<tr><td>�ʼ����ݣ�</td><td><textarea name="content" id="content" style="width:320px;height:90px;" class="text"></textarea></td></tr>
			<tr><td colspan='2' style='border-bottom:none'>
				<div class="admin_Operating_sub" style="margin-top:0px">
				<input class="submit_btn" type="submit" name='email_send' value="ȷ��">
				<input  class="cancel_btn" type="button" value="ȡ��" onclick="layer.closeAll();">
				</div>
			</td></tr>
			<input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
			<input type="hidden" id='email_user' name="email_user">
			<input type="hidden" value="3" name="all[]">
	  </table>
	 </form>
</div>