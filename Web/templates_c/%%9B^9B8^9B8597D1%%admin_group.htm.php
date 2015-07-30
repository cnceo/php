<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:27
         compiled from admin/admin_group.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="./images/reset.css" rel="stylesheet" type="text/css" />
<link href="./images/system.css" rel="stylesheet" type="text/css" />

<link href="./images/table_form.css" rel="stylesheet" type="text/css" />

<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script> 
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="js/admin_public.js" language="javascript"></script>

<title></title>
<script language="javascript">
function check_group(t1,t2){
	var t1,t2;
	if(t1!=""){
		document.getElementById("group"+t1).checked="checked";	
	}
	if(t2!=""){
		document.getElementById("group"+t2).checked="checked";	
	}
}
</script>
</head>
<body class="body_ifm">

<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="admin_h1_bg infoboxp_topIjf">
<span class="infoboxp_top_span">添加用户组</span>
<span class="infoboxp_top_span_sz infoboxp_top_span_sz_in ">
	<a href=" javascript:history.back(-1);" class="infoboxp_tj">管理员组列表</a> 
</span>

</div>
<div class="clear"></div>
<div class="common-form">
<div class="admin_table_border">
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe> 
<form name="myform" target="supportiframe" action="index.php?m=admin_user&c=savagroup" method="post" id="myform">
<input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
<input type="hidden" value="<?php echo $this->_tpl_vars['admin_group'][0]; ?>
" name="groupid" />
<table width="100%" style="background:#fff;">
	<tr>
		<td width="150" height="30" align="center" style="border-right:1px solid #CCC;">用户组名称</td>
		<td  style="padding-left:10px;">
        <input type="text" name="group_name" id="realname" class="input-text" size="40" value="<?php echo $this->_tpl_vars['admin_group'][1]; ?>
"></input>
        </td>
	</tr>
    <tr>
    	<td colspan="2" style="height:1px; background-color:#CCC"></td>
    </tr>
	<tr>
		<td  width="120" align="center" style="border-right:1px solid #CCC;">用户组权限</td>
		<td>
            <?php $_from = $this->_tpl_vars['navigation']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
            <table width="100%" bgcolor="#dfdfdf">
            <tr>
                <td height="30" style="padding-left:10px">
                <input type="checkbox"	name="power[]" value="<?php echo $this->_tpl_vars['v']['id']; ?>
" id="group<?php echo $this->_tpl_vars['v']['id']; ?>
" <?php if (@ in_array ( $this->_tpl_vars['v']['id'] , $this->_tpl_vars['power'] )): ?> checked="checked"<?php endif; ?>>
                <label for="group<?php echo $this->_tpl_vars['v']['id']; ?>
"><?php echo $this->_tpl_vars['v']['name']; ?>
</label>
                </td>
            </tr>
            <tr>
            <td>
                <?php $_from = $this->_tpl_vars['one_menu'][$this->_tpl_vars['v']['id']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['val']):
?>
            	<table width="100%" bgcolor="#f7f7f7">
                <tr>
                <td height="30" style="padding-left:40px;">
                    <input type="checkbox" name="power[]" value="<?php echo $this->_tpl_vars['val']['id']; ?>
" id="group<?php echo $this->_tpl_vars['val']['id']; ?>
" <?php if (@ in_array ( $this->_tpl_vars['val']['id'] , $this->_tpl_vars['power'] )): ?> checked="checked"<?php endif; ?>  onClick="check_group(<?php echo $this->_tpl_vars['v']['id']; ?>
,'')">
                    <label for="group<?php echo $this->_tpl_vars['val']['id']; ?>
"><?php echo $this->_tpl_vars['val']['name']; ?>
</label>
                </td>
                </tr>
                <tr>
                <td bgcolor="#fdfeff" height="30" style="padding-left:70px;">
                    <?php $_from = $this->_tpl_vars['two_menu'][$this->_tpl_vars['val']['id']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['value']):
?>
                    <div style="float:left; width:120px; height:30px; line-height:30px; ">
                    <input type="checkbox" name="power[]" value="<?php echo $this->_tpl_vars['value']['id']; ?>
" id="group<?php echo $this->_tpl_vars['value']['id']; ?>
" <?php if (@ in_array ( $this->_tpl_vars['value']['id'] , $this->_tpl_vars['power'] )): ?> checked="checked"<?php endif; ?> onClick="check_group(<?php echo $this->_tpl_vars['v']['id']; ?>
,<?php echo $this->_tpl_vars['val']['id']; ?>
)">
                    <label for="group<?php echo $this->_tpl_vars['value']['id']; ?>
"><?php echo $this->_tpl_vars['value']['name']; ?>
</label>
                	</div>
                	<?php endforeach; endif; unset($_from); ?>
                </td>
                </tr>
                <?php endforeach; endif; unset($_from); ?>
                 </table>
               </td>
               </tr>
               </table>
         <?php endforeach; endif; unset($_from); ?>
    	</td>
		</tr>
	<tr>
		<td colspan="2" align="center" height="40" style="border-top:1px solid #CCC;">
           <input class="admin_submit4" name="add_group" type="submit" value="提交" id="dosubmit">
</td>
</table>
</form>
</div>
</div></div>
</body>
</html>