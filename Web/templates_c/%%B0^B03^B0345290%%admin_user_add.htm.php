<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:27
         compiled from admin/admin_user_add.htm */ ?>
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
    <div class="infoboxp"><div class="infoboxp_top_bg"></div>
    <div class="infoboxp_top">
    <span class="infoboxp_top_span" style="float:left">添加管理员</span>
    <a href=" javascript:history.back(-1);" class="admin_infoboxp_tj">管理员列表</a> 
    </div>
<div class="common-form">
<div class="admin_table_border">
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe> 
<form name="myform" action="index.php?m=admin_user&c=save"   target="supportiframe" method="post" id="myform">
<input type="hidden" value="<?php echo $this->_tpl_vars['adminuser'][0]; ?>
" name="uid" />
<table width="100%" class="table_form contentWrap" style="background:#fff;">
    <tr>
        <td style="width:110px; text-align:right">用户名：</td>
        <td>
        <input type="text" name="username" id="realname" class="input-text" size="30" value="<?php echo $this->_tpl_vars['adminuser'][2]; ?>
">
        </td>
    </tr>
      	<tr class="admin_table_trbg" >
        <td style="width:110px; text-align:right">密码：</td>
        <td><input type="password" name="password" id="realname" class="input-text" size="30" value=""><?php if (is_array ( $this->_tpl_vars['adminuser'] )): ?><font color="gray">如果密码留空则不修改密码！</font><?php endif; ?>
        </td>
    </tr>
<tr>
    <td style="width:110px; text-align:right">真实姓名：</td>
<td><input type="text" name="name" id="realname" class="input-text" size="30" value="<?php echo $this->_tpl_vars['adminuser'][4]; ?>
">
</td>
</tr>
   	<tr class="admin_table_trbg" >
    <td style="width:110px; text-align:right">权限：</td>
<td>
<select name="m_id">
<?php $_from = $this->_tpl_vars['user_group']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<option value="<?php echo $this->_tpl_vars['v']['id']; ?>
" <?php if ($this->_tpl_vars['v']['id'] == $this->_tpl_vars['adminuser'][1]): ?> selected=selected<?php endif; ?>><?php echo $this->_tpl_vars['v']['group_name']; ?>
</option>
<?php endforeach; endif; unset($_from); ?>
</select>
</td>
</tr>

<tr>
<td colspan="2" align="center">
	<input class="admin_submit4" name="useradd" type="submit" value="提交" id="dosubmit">
</td>
 </table>
 <input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
 </form>
</div>
</div></div>
</body>
</html>