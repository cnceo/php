<?php /* Smarty version 2.6.26, created on 2015-06-17 15:25:20
         compiled from admin/admin_addresume.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="images/reset.css" rel="stylesheet" type="text/css" />
<link href="images/system.css" rel="stylesheet" type="text/css" />
<link href="images/table_form.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>  
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script> 
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/admin/js/admin_public.js" language="javascript"></script>
<script language="javascript"> 
var weburl="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
";
function addresume(){
	var password=$.trim($("#password").val());
	var passconfirm=$.trim($("#passconfirm").val());
	var resume_name=$.trim($("#resume_name").val());
	var living=$.trim($("#living").val());
	var telphone=$.trim($("#telphone").val());
	var email=$.trim($("#email").val());
	var description=$.trim($("#description").val());
	var reg= /^[1][358]\d{9}$/;
	var myreg = /^([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9\-]+@([a-zA-Z0-9\-]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;	
	<?php if ($this->_tpl_vars['row']['uid'] == ''): ?>
	if(password.length<6){parent.layer.msg("密码长度错误！",2,8);return false;}
	if(password!=passconfirm){parent.layer.msg("两次密码不一致！",2,8);return false;}
	<?php endif; ?>
	if(resume_name==''){parent.layer.msg("用户姓名不能为空！",2,8);return false;}
	if(living==''){parent.layer.msg("现居住地不能为空！",2,8);return false;}
	if(telphone==''){parent.layer.msg("手机号码不能为空！",2,8);return false;}else if(!reg.test(telphone)){
		parent.layer.msg("手机号码格式错误！",2,8);return false;
	}
	if(email==''){parent.layer.msg("邮箱不能为空！",2,8);return false;}else if(!myreg.test(email)){
		parent.layer.msg("邮箱格式错误！",2,8);return false;
	}
	if(description==''){parent.layer.msg("自我评价不能为空！",2,8);return false;}
} 
</script>
<style>
* {margin: 0 ;padding: 0;}
body,div{ margin: 0 ;padding: 0;}
</style>
<title>后台管理</title>
</head>
<body class="body_ifm">
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
  <div class="infoboxp_top">
    <h6>添加简历</h6>
  </div>
  <div class="admin_table_border"> 
    <form action=""  method="post" onSubmit="return addresume()">
	<input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
		<table width="100%" class="table_form" style="background:#fff;">
			<?php if ($this->_tpl_vars['row']['uid'] == ''): ?>
			<tr>
				<td colspan='4'><div style="font-size:14px; padding-left:30px;">账户信息</div></td> 
			</tr>
			<tr>
			<th>登录账户：</th>
			<td colspan='3'><input type="text" name="username" id="username" class="input-text" value="" onblur="check_username();"></td>
			</tr>
			<tr class="admin_table_trbg">
			<th>密码：</th>
			<td colspan='3'><input type="password" name="password" id="password" class="input-text" value=""></td>
			</tr>
			<tr>
			<th>确认密码：</th>
			<td colspan='3'><input type="password" name="passconfirm" id="passconfirm" class="input-text" value=""></td>
			</tr>
			<?php endif; ?>
	 
		<tr><td colspan='4'><div style="font-size:14px; padding-left:30px;">基本资料</div></td></tr>
      <tr class="admin_table_trbg">
        <th>用户姓名：</th>
        <td colspan='3'><input type="text" name="resume_name" id="resume_name" class="input-text" value="<?php echo $this->_tpl_vars['row']['name']; ?>
"></td>
      </tr>
	<tr  >
        <th>性 别：</th>
        <td colspan='3'>
		<?php $_from = $this->_tpl_vars['userdata']['user_sex']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
		  <input id="sex<?php echo $this->_tpl_vars['v']; ?>
" type="radio" <?php if ($this->_tpl_vars['row']['sex'] == $this->_tpl_vars['v']): ?>checked="checked"<?php endif; ?> value="<?php echo $this->_tpl_vars['v']; ?>
" name="sex">
		  <label for="sex<?php echo $this->_tpl_vars['v']; ?>
"><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</label>
		  <?php endforeach; endif; unset($_from); ?>
		</td>
      </tr>
       <tr class="admin_table_trbg">
		<th>教育程度：</th>
		<td colspan='3'>
			<select name='edu'>
				<?php $_from = $this->_tpl_vars['userdata']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
				<option value='<?php echo $this->_tpl_vars['v']; ?>
' <?php if ($this->_tpl_vars['row']['edu'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?> ><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
			</select>
		</td>
	  </tr>
	 
	 <tr>
		<th>现居住地：</th>
		<td colspan='3'><input type="text" name="living" id="living" class="input-text" size="30" value="<?php echo $this->_tpl_vars['row']['living']; ?>
"></td>
	  </tr> 
       <tr class="admin_table_trbg">
		<th>工作经验：</th>
		<td colspan='3'>
			<select name='exp'>
				 <?php $_from = $this->_tpl_vars['userdata']['user_word']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
				 <option value='<?php echo $this->_tpl_vars['v']; ?>
' <?php if ($this->_tpl_vars['row']['exp'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
				 <?php endforeach; endif; unset($_from); ?>
			</select>
		</td>
	  </tr>
	   <tr >
        <th>出生日期：</th>
        <td colspan='3'>
			<link href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/jscal2.css" type="text/css" rel="stylesheet">
              <script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/calendar.js" type="text/javascript"></script>
              <script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/en.js" type="text/javascript"></script>
            <input id="birthday" type="text"  size="10" value="<?php echo $this->_tpl_vars['row']['birthday']; ?>
" name="birthday" class="text_date_cs">
            <script type="text/javascript">
			Calendar.setup({
			weekNumbers: true,
			inputField : "birthday",
			trigger : "birthday",
			dateFormat: "%Y-%m-%d",
			showTime: false,
			onSelect : function() {this.hide();}
			});
			</script>
		</td>
      </tr>
     
     
     
     
     
	
	  <tr class="admin_table_trbg">
		<th>手机：</th>
		<td colspan='3'><input type="text" name="moblie" id='telphone' onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" class="input-text" value="<?php echo $this->_tpl_vars['row']['telphone']; ?>
"></td>
	  </tr>
	  <tr >
			<th>邮箱：</th>
			<td colspan='3'><input type="text" name="email" id="email" class="input-text" value="<?php echo $this->_tpl_vars['row']['email']; ?>
"></td>
			</tr>
	   <tr class="admin_table_trbg">
		<th>自我评价：</th>
		<td colspan='3'><textarea id="description" class="infor_textarea " name="description" style="width: 339px; height: 64px;"><?php echo $this->_tpl_vars['row']['description']; ?>
</textarea></td>
	  </tr> 
		<tr class="admin_table_trbg" >
        <th width="120"></th>
        <td><input name='uid' type='hidden' value='<?php echo $this->_tpl_vars['row']['uid']; ?>
'><input class="admin_submit4" type="submit" name="next" value="&nbsp;下一步&nbsp;" /></td>
      </tr>
	   </table>
    </form>
 
</div>
</div>
</body>
</html>