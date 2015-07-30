<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:26
         compiled from admin/admin_user_list.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="images/reset.css" rel="stylesheet" type="text/css" />
<link href="images/system.css" rel="stylesheet" type="text/css" />
<link href="images/table_form.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="js/admin_public.js" language="javascript"></script>
 
<title>后台管理</title>
</head>
<body class="body_ifm">
<div class="infoboxp"><div class="infoboxp_top_bg"></div>
<div class="admin_h1_bg infoboxp_topIjf">
<span class="infoboxp_top_span" style="float:left">管理员列表</span>
<a href="index.php?m=admin_user&c=add"  class="admin_infoboxp_tj">添加管理员</a>
</div>
<div class="table-list">
  <div class="admin_table_border">
    <table width="100%">
      <thead>
        <tr class="admin_table_top">
          <th width="7%">编号</th>
          <th width="12%">登陆名</th>
          <th width="12%">权限</th>
          <th width="12%">真实姓名</th>
          <th width="12%" class="admin_table_th_bg">操作</th>
        </tr>
      </thead>
      <tbody>
      
      <?php $_from = $this->_tpl_vars['adminuser']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <tr>
        <td height="17" align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['uid']; ?>
</td>
        <td align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['username']; ?>
</td>
        <td align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['groupname'][$this->_tpl_vars['v']['m_id']]; ?>
</td>
        <td align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['name']; ?>
</td>
        <td  align="center">
        <a href="index.php?m=admin_user&c=add&uid=<?php echo $this->_tpl_vars['v']['uid']; ?>
"  class="admin_cz_bj">修改</a> | 
		<a href="javascript:;" onClick="layer_del('确定要删除？','index.php?m=admin_user&c=deluser&uid=<?php echo $this->_tpl_vars['v']['uid']; ?>
');" class="admin_cz_sc">删除</a>
        </td>
      </tr>
      <?php endforeach; endif; unset($_from); ?>
        </tbody>
      
    </table>
  </div>
</div>
</div>
	<input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
</body>
</html>