<?php /* Smarty version 2.6.26, created on 2015-06-15 20:11:51
         compiled from D:%5Cwwwroot%5Ctoptophr.com%5CWeb/template/wap/member/cheader.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'D:\\wwwroot\\toptophr.com\\Web/template/wap/member/cheader.htm', 36, false),)), $this); ?>

<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<title><?php echo $this->_tpl_vars['config']['sy_webname']; ?>
 -  �ֻ��˲���</title>
<meta http-equiv="keywords" content="�˲���Ƹ,������Ƹ,wap" />
<meta http-equiv="description" content="�˲���Ƹ��wap��վ" />
<meta content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport" />
<meta name="MobileOptimized" content="240" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta content="yes" name="apple-mobile-web-app-capable" />
 <link rel="stylesheet" href="http://www.hr135.com/app/template/wap/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['wap_style']; ?>
/css/css.css"/> 
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['wap_style']; ?>
/css/member-wap.css"/> 
  <link rel="stylesheet" href="http://www.hr135.com/app/template/wap/js/prefixfree.min.js">
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['wap_style']; ?>
/js/layer/layer.m.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['wap_style']; ?>
/js/public.js" language="javascript"></script> 
</head>
<body>
<div id="wrapper">
<div class="mobile">

<!-- Checkbox to toggle the menu -->
<input type="checkbox" id="tm" />
<!-- The menu -->
<div class="sidenav"> 
 
   <!--     ��¼ǰ-->
   <?php if (! $this->_tpl_vars['cookie']['uid']): ?>
   <div class="nav_loin" style="display:block">
   <a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="nav_loin_a">��¼</a>
   <a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
"class="nav_loin_a nav_loin_zc">ע��</a>
   </div>
   
   
    <!--     ��¼��-->
	<?php else: ?>
    <div class="nav_loin" style="display:block">
    <div class="nav_login_after">
    <div class="nav_header_img">
	<div class="nav_header_bg">
	<img src="http://www.hr135.com/data/logo/20141210/14204024737.JPG"  onerror="showImgDelay(this,'http://www.hr135.com/data/logo/20141210/14204024737.JPG',2);">
	</div>
	</div>

    <a href="index.php" class="nav_loin_a">�û�����</a>
	<a href="javascript:;" onclick="islogout('<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
','ȷ���˳���');" class="nav_loin_a nav_loin_zc">�˳�</a>
    </div>
    </div>
   <?php endif; ?>
   <div style="clear:both"></div>
   <ul>
    <li><a href="/wap/" class="side_nav_a"><i class="nav_fa fa fa-home"></i><b>��ҳ</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-briefcase"></i><b>��ְλ</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:user"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-graduation-cap"></i><b>���˲�</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:firm"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-building-o"></i><b>����ҵ</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:once"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-tasks"></i><b>΢��Ƹ</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:tiny"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-users"></i><b>΢����</b></a></li>
    <li><a href="<?php echo smarty_function_wapurl(array('url' => "m:news"), $this);?>
" class="side_nav_a"><i class="nav_fa fa fa-newspaper-o"></i><b>����Ѷ</b></a></li>
    <li><a href="#" class="side_nav_a"><i class="nav_fa fa fa-map-marker"></i><b>����ְλ</b></a></li>
  </ul>
 </div>