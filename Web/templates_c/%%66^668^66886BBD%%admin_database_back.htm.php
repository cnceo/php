<?php /* Smarty version 2.6.26, created on 2015-06-17 15:19:10
         compiled from admin/admin_database_back.htm */ ?>
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

<title>��̨����</title>
</head>
<body class="body_ifm">
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="infoboxp_top">
<h6>���ݿ����</h6>
<div class="infoboxp_right">
    <a href="index.php?m=database" class="infoboxp_tj">����</a>
</div>
</div>

<div class="table-list">
<div class="admin_table_border">
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
 <table width="100%">
	<thead>
		<tr class="admin_table_top">
			<th align="left">�ļ���</th>
            <th align="left">�汾</th>
			<th align="left">ʱ��</th>
			<th align="left">���ݿ�����</th>
            <th align="left">���ݿ����</th>
			<th class="admin_table_th_bg">����</th>
		</tr>
	</thead>
	<tbody>
    <?php $_from = $this->_tpl_vars['sqlarr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <tr align="left">
    	<td align="left" class="td1"><?php echo $this->_tpl_vars['v']['name']; ?>
</td>
        <td align="left" class="ud"><?php echo $this->_tpl_vars['v']['version']; ?>
</td>
    	<td class="ud" align="left"><?php echo $this->_tpl_vars['v']['time']; ?>
</td>
   	 	<td class="od" align="left"><?php echo $this->_tpl_vars['v']['dbname']; ?>
</td>
        <td class="od" align="left"><?php echo $this->_tpl_vars['v']['charset']; ?>
</td>
    	<td>
        <a href="javascript:void(0);" onclick="backin('index.php?m=database&c=backincheck&ver=<?php echo $this->_tpl_vars['v']['version']; ?>
&sql=<?php echo $this->_tpl_vars['v']['name']; ?>
')">����</a> |
        <a href="javascript:void(0)" onclick="layer_del('ȷ��Ҫɾ����', 'index.php?m=database&c=del&sql=<?php echo $this->_tpl_vars['v']['name']; ?>
');">ɾ��</a> | <a href="index.php?m=database&c=down_sql&name=<?php echo $this->_tpl_vars['v']['name']; ?>
" target="_blank">���ص�����</a>
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
<script>
function backin(url){

	parent.layer.load('���ݻָ��У����Ժ�...',0);
	var pytoken = $('#pytoken').val();
	$.get(url+'&pytoken='+pytoken,function(data){
		var data=eval('('+data+')');
		if(data.url=='1'){
			parent.layer.msg(data.msg, Number(data.tm), Number(data.st),function(){location.reload();});return false;
		}else{
			parent.layer.msg(data.msg, Number(data.tm), Number(data.st),function(){location.href=data.url;});return false;
		}
	});
}
</script>
</body>
</html>