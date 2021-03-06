<?php /* Smarty version 2.6.26, created on 2015-07-27 18:03:14
         compiled from admin/admin_makenews.htm */ ?>
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
<title></title>
</head>
<body class="body_ifm">

<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="admin_Prompt">
<div class="admin_Prompt_span">
    注意事项：
    1. 生成请确保目录有可写权限，否则无法生成。
    2. 添加导航的时候，链接可以填写 <?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/ 保存路径
</div>
<div class="admin_Prompt_close"></div>
</div>
    <div class="infoboxp_top">
        <?php if ($this->_tpl_vars['type'] == 'once'): ?>
            <h6>生成单页面</h6>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['type'] == 'index'): ?>
            <h6>生成网站首页</h6>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['type'] == 'news'): ?>
            <h6>生成新闻首页</h6>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['type'] == 'newsclass'): ?>
            <h6>生成新闻类别</h6>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['type'] == 'archive'): ?>
            <h6>生成新闻详细页</h6>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['type'] == 'all'): ?>
            <h6>一键更新</h6>
        <?php endif; ?>
    </div>
<iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
<form target="supportiframe" action="" method="post" >
<?php if ($this->_tpl_vars['type'] == 'once'): ?>
<table width="100%" class="table_form table_form_bg">
    <tr>
        <th width="40%">选择栏目：</th>
        <td>
        <select id="once_class">
            <option value="0">全部</option>
            <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
            <option value="<?php echo $this->_tpl_vars['v']['id']; ?>
"><?php echo $this->_tpl_vars['v']['name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
        </select>
        </td>
    </tr>
    <tr>
    <td class="ud" align="center" colspan="2">
      <input class="admin_submit6" type="button" id="cache_once" value="更新单页面"/>&nbsp;&nbsp;
    </td>
  </tr>
  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
</table>
<?php endif; ?>
<?php if ($this->_tpl_vars['type'] == 'all'): ?>
    <table width="100%" class="table_form table_form_bg">
            <tr>
                <th width="40%">首页保存路径：</th>
                <td><input class="input-text" type="text" name="index_url" size="40" value="../index.html"/></td>
            </tr>
            <tr>
				<th width="40%">新闻首页保存路径：</th>
				<td><input class="input-text" type="text" name="news_url" size="40" value="../news.html"/></td>
			</tr>
        <tr class="admin_table_trbg">
            <td class="ud" align="center" colspan="2">
                <input class="admin_submit4" type="submit" id="madeall" value="一键更新"/>&nbsp;&nbsp;
            </td>
          </tr>
		  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
  </table>
<?php endif; ?>

<?php if ($this->_tpl_vars['type'] == 'index'): ?>
    <table width="100%" class="table_form table_form_bg">
            <tr>
                <th width="40%">首页保存路径：</th>
                <td><input class="input-text" type="text" name="url" size="40" value="../index.html"/></td>
            </tr>
        <tr class="admin_table_trbg">
            <td class="ud" align="center" colspan="2">
                <input class="admin_submit4" type="submit" name="madeall" value="更新首页"/>&nbsp;&nbsp;
            </td>
          </tr>
		  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
  </table>
<?php endif; ?>
<?php if ($this->_tpl_vars['type'] == 'news'): ?>
<table target="supportiframe" width="100%" class="table_form table_form_bg " action="">
        <tr>
			<th width="40%">新闻首页保存路径：</th>
			<td><input class="input-text" type="text" name="url" size="40" value="../news.html"/></td>
		</tr>
    <tr>
    	<td class="ud" align="center" colspan="2">
			<input class="admin_submit8" type="submit" name="madeall" value="更新新闻首页"/>&nbsp;&nbsp;
        </td>
      </tr>
	  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
  </table>
<?php endif; ?>
<?php if ($this->_tpl_vars['type'] == 'newsclass'): ?>
<table width="100%" class="table_form table_form_bg">
    <input id="classid" type="hidden" value="<?php echo $this->_tpl_vars['classid']; ?>
">
        <tr>
			<th width="40%">选择栏目：</th>
			<td>
            <select name="" id="group">
            	<option value="all">全部</option>
                <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']['id']; ?>
"><?php echo $this->_tpl_vars['v']['name']; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
            </select>
            </td>
		</tr>
    	<tr>
    	<td class="ud" align="center" colspan="2">
		  <input class="admin_submit4" type="button" id="newsclass" value="更新内容"/>&nbsp;&nbsp;
        </td>
      </tr>
	  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
  </table>
<?php endif; ?>
<?php if ($this->_tpl_vars['type'] == 'archive'): ?>
<table width="100%" class="table_form table_form_bg">
        <tr>
			<th width="40%">选择栏目：</th>
			<td>
            <select name="" id="group">
            <option value="0">全部</option>
            <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
            <option value="<?php echo $this->_tpl_vars['v']['id']; ?>
"><?php echo $this->_tpl_vars['v']['name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
            </select>
            </td>
		</tr>
        <tr class="admin_table_trbg">
			<th width="40%">开始编号：</th>
			<td><input class="input-text" type="text" id="start_id" size="20" value="0"/>0从头开始</td>
		</tr>
        <tr>
			<th width="40%">结束编号：</th>
			<td><input class="input-text" type="text" id="end_id" size="20" value="0"/>0到最后一条</td>
		</tr>
        <tr class="admin_table_trbg">
			<th width="40%">每页生成：</th>
			<td><input class="input-text" type="text" id="limit" size="20" value="20"/>注：每页生成数不要设置太大</td>
		</tr>
    <tr>
    	<td class="ud" align="center" colspan="2">
		  <input class="admin_submit4" type="button" id="archive" value="更新内容"/>&nbsp;&nbsp;
        </td>
      </tr>
	  <input type="hidden" name="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">

  </table>
<?php endif; ?>
</form>
</div>
<input type="hidden" id="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">

<script>
$(document).ready(function(){
	$("#archive").click(function(){
		var group=$("#group").val();
		var startid=$("#start_id").val();
		var endid=$("#end_id").val();
		var limit=$("#limit").val();
		makearchive(group,startid,endid,limit,"archive",0,'正在获取新闻总数');
	})
	$("#madeall").click(function(){
		var index_url=$("input[name=index_url]").val();
		var news_url=$("input[name=news_url]").val();
		make_all(index_url,news_url,"cache",0,'正在生成区域');
	})
	$("#newsclass").click(function(){
		var group=$("#group").val();
		makenewsclass(group,"class",0,'正在获取新闻类别信息');
	})
	$("#cache_once").click(function(){
		var desc=$("#once_class").val();
		var pytoken=$("#pytoken").val();
		var ii = parent.layer.load("正在生成",0);
		$.post("index.php?m=cache&c=once",{desc:desc,pytoken:pytoken,make:1},function(data){
			if(data==1){
				parent.layer.msg("生成成功！",2,9);
			}
		})
	})
})
function make_all(index,news,type,value,msg){
	if(type!="ok"){
		var ii = parent.layer.load(msg,0);
		var pytoken=$("#pytoken").val();
		$.post("index.php?m=cache&c=all",{action:"makeall",index:index,news:news,type:type,value:value,pytoken:pytoken},function(data){
			var data=eval('('+data+')');
			make_all(index,news,data.type,data.value,data.msg);
		})
	}else{
		parent.layer.close(ii);
		parent.layer.alert(msg,9);
	}
}
function makenewsclass(group,type,value,msg){
	if(type!="ok"){
		var ii = parent.layer.load(msg,0);
		var pytoken=$("#pytoken").val();
		$.post("index.php?m=cache&c=newsclass",{action:"makeclass",group:group,type:type,value:value,pytoken:pytoken},function(data){
			var data=eval('('+data+')');
			makenewsclass(group,data.type,data.value,data.msg);
		})
	}else{
		parent.layer.close(ii);
		parent.layer.alert(msg, 9);
	}
}
function makearchive(group,startid,endid,limit,type,value,msg){
	$("#make_l").html(msg);
	if(type!="ok"){
		var ii = parent.layer.load(msg,0);
		var pytoken=$("#pytoken").val();
		$.post("index.php?m=cache&c=archive",{action:"makearchive",group:group,startid:startid,endid:endid,limit:limit,type:type,value:value,pytoken:pytoken},function(data){
			var data=eval('('+data+')');
			makearchive(group,startid,endid,limit,data.type,data.value,data.msg);
		})
	}else{
		parent.layer.close(ii);
		parent.layer.alert(msg, 9);
	}
}
</script>
</body>
</html>