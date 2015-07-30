<?php /* Smarty version 2.6.26, created on 2015-07-27 19:52:28
         compiled from admin/admin_log.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'admin/admin_log.htm', 57, false),)), $this); ?>
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
<script src="js/admin_public.js" language="javascript"></script>
<title>后台管理</title>
</head>
<body class="body_ifm">
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="admin_Filter" style="padding-bottom:4px;">
	<span class="complay_top_span fl">后台管理日志</span> 
	<form action="index.php" name="myform" method="get">
	<input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
		<input name="m" value="admin_log" type="hidden"/>
		<span class="admin_Filter_span">操作人：</span>
		<input class="admin_Filter_search" type="text" name="keyword" size="25"/>
		<input class="admin_Filter_bth" type="submit" name="search" value="检索"/>
			<span class='admin_search_div'>
	  <div class="admin_adv_search"><div class="admin_adv_search_bth">高级搜索</div></div>   
	</span> 
	</form> 
</div>
  <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/admin_search.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="table-list">
<div class="admin_table_border">
    <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
    <form action="index.php" name="myform" method="get" target="supportiframe" id='myform'>
    <input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
        <input name="m" value="admin_log" type="hidden"/>
        <input name="c" value="del" type="hidden"/>
        <table width="100%">
            <thead>
                <tr class="admin_table_top">
                    <th width="5%"><label for="chkall"><input type="checkbox" id='chkAll'  onclick='CheckAll(this.form)'/></label></th>
                    <th>编号</th>
                    <th align="left" width="10%">操作人</th>
                    <th align="left">推荐内容</th>
                    <th width="15%">操作时间</th>
                    <th class="admin_table_th_bg" width="10%">操作</th>
                </tr>
            </thead>
            <tbody>
                <?php $_from = $this->_tpl_vars['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['v']):
?>
                <tr align="center"<?php if (( $this->_tpl_vars['key']+1 ) % 2 == '0'): ?>class="admin_com_td_bg"<?php endif; ?> id="list<?php echo $this->_tpl_vars['v']['id']; ?>
">
                    <td>
                    <input type="checkbox" value="<?php echo $this->_tpl_vars['v']['id']; ?>
" class="check_all"  name='del[]' onclick='unselectall()' rel="del_chk" />
                    </td>
                    <td><?php echo $this->_tpl_vars['v']['id']; ?>
</td>
                    <td class="ud" align="left"><?php echo $this->_tpl_vars['v']['username']; ?>
</td>
                    <td class="td" align="left"><?php echo $this->_tpl_vars['v']['content']; ?>
</td>
                    <td><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['ctime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M:%S")); ?>
</td>
                    <td>
                    <a href="javascript:;" onClick="layer_del('确定要删除？','?m=admin_log&c=del&id=<?php echo $this->_tpl_vars['v']['id']; ?>
');" class="admin_cz_sc">删除</a>
                    </td>
                </tr>
                <?php endforeach; endif; unset($_from); ?>
                <tr style="background:#f1f1f1;">
                	<td align="center"><input type="checkbox" id='chkAll2' onclick='CheckAll2(this.form)' /></td>
                    <td colspan="2" >
                    <label for="chkAll2">全选</label>&nbsp;
                    <input class="admin_submit4"  type="button"  name="delsub" value="删除所选" onClick="return really('del[]');" />
                    </td>
                    <td colspan="3" class="digg"><?php echo $this->_tpl_vars['pagenav']; ?>
</td>
                </tr>
            </tbody>
        </table>
    </form>
</div></div>
</body>
</html>