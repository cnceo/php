<?php /* Smarty version 2.6.26, created on 2015-07-28 15:16:54
         compiled from admin/admin_hotjob_info.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'admin/admin_hotjob_info.htm', 89, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="images/reset.css" rel="stylesheet" type="text/css" />
<link href="images/system.css" rel="stylesheet" type="text/css" /> 
<link href="images/table_form.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script src="js/png.js"></script>
<script>
  DD_belatedPNG.fix('#bg');
</script>
<![endif]-->

<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>  
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script> 

<script src="js/admin_public.js" language="javascript"></script> 
<script src="js/show_pub.js"></script> 
<script>  
function check_form(){
	var hot_pic=$("#hot_pic").val();//Ĭ��logo
	var pic=$("input[name=hot_pic]").val();
	var start = $("#time_start").val();	
	var end = $("#time_end").val();
	if(start==""||end=="")
	{ 
		parent.layer.msg('��ʼʱ�䣬����ʱ�䲻��Ϊ�գ�', 2, 2);
		return false
	}else{
		var st=toDate(start);
		var ed=toDate(end);
		if(st>ed){ 	
			parent.layer.msg('��ʼʱ�䲻�ô��ڽ���ʱ�䣡', 2, 2);
			return false
		}
	}
	if(hot_pic=="" && pic==""){
		parent.layer.msg('��ҵչʾLOGO����Ϊ�գ�', 2, 2);
		return false
	}
}
</script>
<style>
* {margin: 0 ;padding: 0;}
body,div{ margin: 0 ;padding: 0;}
.table_form tr{height:40px;}
</style>
<title>��̨����</title>
</head>
<body> 
	<div id="houtai_div"  style="width:468px;height:450px; overflow:auto; overflow-x:hidden"> 
		<div class="common-form">
			<form name="myform" action="index.php?m=admin_company&c=save" method="post" id="myform" enctype="multipart/form-data" onSubmit="return check_form();" target="supportiframe"> 
		   <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
			<table width="100%" class="table_form contentWrap"> 
				<tr>
					<td align="right"><div  style="width:59px;">��ҵ����:</div></td>
					<td id="comname" align="left">
					<?php echo $this->_tpl_vars['hotjob']['username']; ?>
<input name="username" type="hidden" value="<?php echo $this->_tpl_vars['hotjob']['username']; ?>
">
					</td>
				</tr>
				<tr>
					<td align="right">��Ա����:</td>
					<td id="ratname" align="left">
						<?php echo $this->_tpl_vars['hotjob']['rating']; ?>
<input name="rating" type="hidden" value="<?php echo $this->_tpl_vars['hotjob']['rating']; ?>
">
					</td>
				</tr>
				  <tr>
					<td align="right">��ҵչʾLOGO:</td>
					<td id="logo" align="left">
                    <input type="hidden" name="defpic" id="hot_pic" value="<?php echo $this->_tpl_vars['hotjob']['hot_pic']; ?>
">
					<input type="file" name="hot_pic">
                     <div><?php if ($this->_tpl_vars['hotjob']['hot_pic']): ?><img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['hotjob']['hot_pic']; ?>
"><?php endif; ?></div>
					</td>
				</tr>
				<tr>
					<td align="right">����۸�:</td>
					<td align="left">
					<input type="text" name="service_price" id="service_price" class="input-text" size="5" value="<?php echo $this->_tpl_vars['hotjob']['service_price']; ?>
" onKeyUp="this.value=this.value.replace(/[^0-9.]/g,'')">Ԫ
					</td>
				</tr>
				  <tr>
					<td align="right">��ʼʱ��:</td>
					<td align="left">
			<link href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/jscal2.css" type="text/css" rel="stylesheet">
			<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/calendar.js" type="text/javascript"></script>
			<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/en.js" type="text/javascript"></script>
			<input id="time_start" class="input-text" type="text" readonly size="20" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['hotjob']['time_start'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
" name="time_start">
			<script type="text/javascript">
			Calendar.setup({
			weekNumbers: true,
			inputField : "time_start",
			trigger : "time_start",
			dateFormat: "%Y-%m-%d",
			showTime: false,
			onSelect : function() {this.hide();}
			});
			</script>
					</td>
				</tr>
				  <tr>
					<td align="right">����ʱ��:</td>
					<td align="left">
			   <input id="time_end" class="input-text" type="text" readonly size="20" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['hotjob']['time_end'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
" name="time_end">
			<script type="text/javascript">
			Calendar.setup({
			weekNumbers: true,
			inputField : "time_end",
			trigger : "time_end",
			dateFormat: "%Y-%m-%d",
			showTime: false,
			onSelect : function() {this.hide();}
			});
			</script>
					</td>
				</tr>
				<tr>
					<td align="right">��ע:</td>
					<td id="beizhu" align="left">
				   <textarea name="beizhu" rows="3" cols="50" class="text"><?php echo $this->_tpl_vars['hotjob']['beizhu']; ?>
</textarea>
					</td>
				</tr>
				  <tr>
					<td align="right">����:</td>
					<td align="left">
						<input class="input-text" id="sort" value="<?php echo $this->_tpl_vars['hotjob']['sort']; ?>
" name="sort" size="5"> Сǰ���
					</td>
				</tr>
			<tr>
			<td colspan="2" align="center">
				<input name="uid" id="com_uid" type="hidden" value="<?php echo $this->_tpl_vars['hotjob']['uid']; ?>
">
				<?php if ($this->_tpl_vars['hotjob']['id']): ?>
					 <input id="hotjob_id"  name="id" type="hidden" value="<?php echo $this->_tpl_vars['hotjob']['id']; ?>
">
					<input class="admin_submit4" name="hotup" type="submit" value="�޸�" id="dosubmit">  
				<?php else: ?>
				  <input class="admin_submit4" name="hotad" type="submit" value="�ύ" id="dosubmit">
				<?php endif; ?>
			</td>
			 </table>
			 </form>
		</div> 
	</div>  
</body>
</html>