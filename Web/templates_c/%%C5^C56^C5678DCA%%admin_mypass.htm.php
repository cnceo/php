<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:25
         compiled from admin/admin_mypass.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="./images/reset.css" rel="stylesheet" type="text/css" />
<link href="./images/system.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script> 
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="js/admin_public.js" language="javascript"></script> 
<link href="./images/table_form.css" rel="stylesheet" type="text/css" />
<title></title>
</head>
<body class="body_ifm">
    <div class="infoboxp">
    <div class="infoboxp_top_bg"></div>
    <div class="infoboxp_top">
    <span class="infoboxp_top_span" style="float:left">�޸�����</span>
    </div>
<div class="common-form">
<div class="admin_table_border">
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe> 
<form name="myform" action="index.php?m=admin_user&c=pass"   target="supportiframe" method="post" id="myform">
<input type="hidden" value="<?php echo $this->_tpl_vars['adminuser'][0]; ?>
" name="uid" />
<table width="100%" class="table_form contentWrap" style="background:#fff;">
    <tr>
        <td style="width:150px; text-align:right">ԭʼ���룺</td>
        <td>
        <input type="text" name="oldpass" id="realname" class="input-text" size="30" value="">
        </td>
    </tr>
      	<tr class="admin_table_trbg" >
        <td style="width:150px; text-align:right">�����룺</td>
        <td><input type="password" name="password" id="realname" class="input-text" size="30" value="">
        </td>
    </tr>
    <tr>
        <td style="width:150px; text-align:right">ȷ�����룺</td>
        <td><input type="password" name="okpassword" id="realname" class="input-text" size="30" value=""></td>
    </tr>
 
<tr>
<td colspan="2" align="center">
	<input class="admin_submit4" name="useradd" type="submit" value="�ύ" id="dosubmit">
</td>
</tr>
 </table>
 <input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
 </form>
</div>
</div></div>
</body>
</html>