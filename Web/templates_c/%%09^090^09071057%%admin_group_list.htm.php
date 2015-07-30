<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:28
         compiled from admin/admin_group_list.htm */ ?>
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
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="admin_h1_bg infoboxp_topIjf">
<span class="infoboxp_top_span" style="float:left">管理员列表</span>
<a href="index.php?m=admin_user&c=addgroup"  class="admin_infoboxp_tj"> 添加管理员类型</a>
</div>
<div class="">
  <div class="table-list">
    <div class="admin_table_border">
      <table width="100%">
        <thead>
          <tr class="admin_table_top">
            <th width="7%">编号</th>
            <th width="12%">类型名称</th>
            <th width="12%">管理员数</th>
            <th width="12%" class="admin_table_th_bg">操作</th>
          </tr>
        </thead>
        <tbody>
        
        <?php $_from = $this->_tpl_vars['adminusergroup']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
        <tr>
          <td align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['id']; ?>
</td>
          <td align="center" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['group_name']; ?>
</td>
           <td align="center" style="cursor:pointer;">10</td>
          <td align="center">
			<a href="index.php?m=admin_user&c=addgroup&id=<?php echo $this->_tpl_vars['v']['id']; ?>
" class="admin_cz_bj">修改</a> |
		    <a href="javascript:void(0);" onClick="layer_del('确定要删除？','index.php?m=admin_user&c=delgroup&id=<?php echo $this->_tpl_vars['v']['id']; ?>
');" class="admin_cz_sc">删除</a>
			</td>
        </tr>
        <?php endforeach; endif; unset($_from); ?>
          </tbody>
        
      </table>
    </div>
  </div>
</div>
</div>
	<input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
</body>
</html>