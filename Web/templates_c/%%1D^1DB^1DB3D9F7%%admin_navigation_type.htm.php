<?php /* Smarty version 2.6.26, created on 2015-07-27 20:39:33
         compiled from admin/admin_navigation_type.htm */ ?>
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
<script type="text/javascript">   
function checkname(id){
	$("#name"+id).hide();
	$("#inputname"+id).show();
	$("#inputname"+id).focus();
}	
function subname(id){
	var name=$("#inputname"+id).val();
	if($.trim(name)==""){
		parent.layer.msg("类别名称不能为空！",2,8,function(){location.reload();});return false;
	}
	var pytoken=$("#pytoken").val();
	$.post("index.php?m=navigation&c=ajax",{id:id,name:name,pytoken:pytoken},function(data){ 
		$("#name"+id).html(name);
		$("#name"+id).show();
		$("#inputname"+id).hide();
		if(data!=1){config_msg(data);}else{location.reload();}
	})
}
</script> 
<body class="body_ifm">
<span id="temp"></span>
<div id="question" style="display: none;">
  <p id="alert_msg"></p>
  <input type="button" id="yes" class="btn" value="确认" />
  <input type="button" id="no" class="btn" value="取消" />
</div>
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
  <div class="admin_Filter">
	<span class="complay_top_span fl">导航分类</span>  
    <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
    <form name="myform" target="supportiframe" action="index.php?m=navigation&c=addtype" method="post">
      <span class='admin_Filter_span'> 添加类别：</span>
      <input class="admin_Filter_search" name="typename" type="text" style="float:left"/>
	  <input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
      <input class="admin_Filter_bth" name="sub" type="submit" value="添加" style="float:left">
    </form> 
  </div>
 
  <div class="table-list">
    <div class="admin_table_border">
      <table width="100%">
        <thead>
          <tr class="admin_table_top">
            <th>编号</th>
            <th>类别名称(点击修改)</th>
            <th class="admin_table_th_bg">操作</th>
          </tr>
        </thead>
        <tbody>
        <?php $_from = $this->_tpl_vars['type']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>  
          <tr align="center">
            <td><span><?php echo $this->_tpl_vars['v']['id']; ?>
</span></td>
            <td class="ud">
				<span onClick="checkname('<?php echo $this->_tpl_vars['v']['id']; ?>
');" id="name<?php echo $this->_tpl_vars['v']['id']; ?>
" style="cursor:pointer;"><?php echo $this->_tpl_vars['v']['typename']; ?>
</span>
        <input class="input-text hidden" type="text" id="inputname<?php echo $this->_tpl_vars['v']['id']; ?>
" value="<?php echo $this->_tpl_vars['v']['typename']; ?>
" onBlur="subname('<?php echo $this->_tpl_vars['v']['id']; ?>
');" > 
             </td>
            <td class="ud"><a href="javascript:void(0)" onClick="layer_del('确定要删除？', 'index.php?m=navigation&c=deltype&id=<?php echo $this->_tpl_vars['v']['id']; ?>
');"class="admin_cz_sc">删除</a></td>
          </tr> 
        <?php endforeach; endif; unset($_from); ?>
          </tbody> 
      </table>
    </div>
  </div>
</div>
</body>
</html>