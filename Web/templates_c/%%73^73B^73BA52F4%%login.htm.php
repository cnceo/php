<?php /* Smarty version 2.6.26, created on 2015-06-17 15:17:31
         compiled from admin/login.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="images/admin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="js/admin_public.js" language="javascript"></script>
<title>��������̨����ϵͳ</title>
</head>
<body>
<div class="admin_logo_bg">
<div class="logoin_top"></div>
<div class="logoin_cont">
<div class="login_box">
<div class="logoin_c">
<div class="logoin_logo">&nbsp;</div>
	<div class="login_iptbox">
	<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
	<form action="" method="post" target="supportiframe">
    <ul class="logoin_list">
		<li><span><label for="username">�û�����</label></span><input type="text" class="ipt" size="10" name="username" value="" /></li>
		<li><span><label for="password">��&nbsp; �룺</label></span><input type="password" class="ppt" name="password" value="" /></li>
       <li>
       <?php if (stripos ( $this->_tpl_vars['config']['code_web'] , "��̨��½" )): ?>
		<span><label for="code">��֤�룺</label></span><input type="text" id="ipt_code" class="ipt_code" name="authcode" value="" />
        <img src="../include/authcode.inc.php" align="absmiddle" >
        <?php endif; ?>
        </li>
		<li><span>&nbsp;</span><input type="submit" class="ipt_btn" name="login_sub" value="" /></li>
      </ul>
	  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
	</form>
	</div>
</div>
</div>
</div>
</div>
</body>
</html>