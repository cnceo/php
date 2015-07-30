<?php /* Smarty version 2.6.26, created on 2015-06-15 15:40:36
         compiled from D:%5Cwwwroot%5Ctoptophr.com%5CWeb/template/wap/header.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'D:\\wwwroot\\toptophr.com\\Web/template/wap/header.htm', 41, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
 <meta http-equiv="Cache-Control" content="no-cache"/>
 <title><?php echo $this->_tpl_vars['config']['sy_webname']; ?>
 -  手机人才网</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="X-UA-compatible"content="IE=edge">
 <meta name="viewport" content="width=device-width" initial-scale="1">
 <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no, width=device-width">
 <link rel="stylesheet" href="http://www.hr135.com/app/template/wap/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/css/css.css" type="text/css"> 
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/css/job.css" type="text/css"> 
 <link rel="stylesheet" href="http://www.hr135.com/app/template/wap/js/prefixfree.min.js">
 <script src="http://www.hr135.com/js/jquery-1.8.0.min.js" language="javascript"></script>
 <script src="http://www.hr135.com/app/template/wap/js/layer/layer.m.js" language="javascript"></script>
 <script src="http://www.hr135.com/app/template/wap/js/public.js" language="javascript"></script>
 <script type="text/javascript">
  function show(obj){
   var obj=document.getElementById(obj);  //获得id为b的容器
	  //如果下面的内容显示的话就隐藏
	  if(obj.style.display=="block"){
	     obj.style.display="none";
	  }else 
	  obj.style.display="block";
}
 </script>
 </head>
 <body>
<div id="wrapper">
<div class="mobile">

<!-- Checkbox to toggle the menu -->
<input type="checkbox" id="tm" />
<!-- The menu -->
<div class="sidenav"> 
 
   <!--     登录前-->
   <?php if (! $this->_tpl_vars['cookie']['uid']): ?>
   <div class="nav_loin" style="display:block">
   <a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="nav_loin_a">登录</a>
   <a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
"class="nav_loin_a nav_loin_zc">注册</a>
   </div>
   
   
    <!--     登录后-->
	<?php else: ?>
    <div class="nav_loin" style="display:block">
    <div class="nav_login_after">
    <div class="nav_header_img">
	<div class="nav_header_bg">
	<img src="http://www.hr135.com/data/logo/20141210/14204024737.JPG"  onerror="showImgDelay(this,'http://www.hr135.com/data/logo/20141210/14204024737.JPG',2);">
	</div>
	</div>

    <a href="member/" class="nav_loin_a">用户中心</a>
	<a href="javascript:;" onclick="islogout('<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
','确认退出吗？');" class="nav_loin_a nav_loin_zc">退出</a>
    </div>
    </div>
   <?php endif; ?>
   <div style="clear:both"></div>
   <ul>
    <li><a href="/wap/" class="side_nav_a"><i class="nav_fa fa fa-home"></i><b>首页</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-briefcase"></i><b>找职位</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:user"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-graduation-cap"></i><b>找人才</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:firm"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-building-o"></i><b>找企业</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:once"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-tasks"></i><b>微招聘</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:tiny"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-users"></i><b>微简历</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:news"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-newspaper-o"></i><b>找资讯</b></a></li>
    <li><a href="#" class="side_nav_a"><i class="nav_fa fa fa-map-marker"></i><b>附近职位</b></a></li>
  </ul>
 </div>