<?php /* Smarty version 2.6.26, created on 2015-06-15 15:33:15
         compiled from admin/admin_right.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'admin/admin_right.htm', 48, false),array('function', 'seacrh_url', 'admin/admin_right.htm', 63, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="images/reset.css" rel="stylesheet" type="text/css" /> 
<script src="../js/jquery-1.8.0.min.js"></script>
<script src="js/admin_public.js" language="javascript"></script> 
<title>后台管理</title>
<style>
<!--
.mainright a,.maincontent a:visited{color:#F00; text-decoration:none;}
.mainright a:hover{color:#900; text-decoration:underline;}
.mainleft a,.mainleft a:visited{color:#06C; text-decoration:none;}
.mainleft a:hover{color:#00F; text-decoration:underline;}
-->
</style>
<script> 
/*屏蔽所有的js错误*/
function killerrors() {return true;}
window.onerror = killerrors;
function logout(){
	if (confirm("您确定要退出控制面板吗？"))
	top.location = 'index.php?c=logout';
	return false;
}
var integral_pricename='<?php echo $this->_tpl_vars['config']['integral_pricename']; ?>
';  
</script>
<!--[if IE 6]>
<script src="./js/png.js"></script>
<script>
  DD_belatedPNG.fix('.png,.header .logo,.header .nav li a,.header .nav li.on,.left_menu h3 span.on');
</script>
<![endif]-->
</head>
<body style="font-size:12px; padding-bottom:0; " onLoad="version_msg();">
<div id="sysinfobox" class="sysinfobox" style="display:none;">
	<script>
    	setTimeout("document.getElementById('sysinfobox').style.display='none'",10000);
    </script>
	<div class="sysinfoboxtop" id="sysinfoboxtop"><strong style="float:left;margin-left:10px;">友情提醒</strong><span style="float:left;">(10秒后自动退出)</span><span style="float:right;margin-right:10px;"><a href="#" onclick="javascript:document.getElementById('sysinfobox').style.display='none';">[关闭]</a></span></div> 
</div>
<div style="height:455px;">
<div class="admin_index_center">
<div class="admin_message_left">
<div class="admin_message_left_cont">
<div class="admin_message_name"><span class="admin_message_up">你好！</span><span class="admin_message_yun"><?php echo $this->_tpl_vars['nav_user']['name']; ?>
</span><a  href="javascript:void(0)" onclick="layer_logout('index.php?m=index&c=logout');" class="admin_message_zh">[更换帐户]</a></div>
<div class="admin_message_login">您的登陆帐户，<strong><?php echo $this->_tpl_vars['nav_user']['username']; ?>
</strong>
所属角色：<strong><?php echo $this->_tpl_vars['nav_user']['group_name']; ?>
</strong> 上次登录时间：<?php echo ((is_array($_tmp=$this->_tpl_vars['nav_user']['lasttime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
</div>
<div class="admin_message_jy"><?php if ($this->_tpl_vars['dirname'] || $this->_tpl_vars['mruser'] == 1): ?><div>
        <?php if ($this->_tpl_vars['dirname']): ?>
     <p>强烈建议将 <?php echo $this->_tpl_vars['dirname']; ?>
 文件夹名改为其它名称！
        <?php endif; ?>
        <?php if ($this->_tpl_vars['mruser'] == 1): ?>
       没有更改默认的管理员名称和密码!<a href="index.php?m=admin_user&c=pass">【马上修改】</a></p><?php endif; ?>
        </div>
 	<?php endif; ?>
</div></div>
</div>
<div class="admin_message_right">
<div class="admin_message_left_cont">
<div class="admin_message_h1">网站信息</div>
<div class="admin_message_list">
<a href="<?php echo seacrh_url(array('state' => 4,'m' => 'admin_company_job','untype' => 'state'), $this);?>
" class="">待审核职位：<?php echo $this->_tpl_vars['company_job']; ?>
</a>               
<a href="<?php echo seacrh_url(array('status' => 3,'m' => 'admin_company','untype' => 'status'), $this);?>
" class="admin_message_bg2">待审核企业：<?php echo $this->_tpl_vars['company']; ?>
</a>                
<a href="index.php?m=comcert" class="admin_message_bg3">待审核企业认证：<?php echo $this->_tpl_vars['comcert']; ?>
</a>
<a href="<?php echo seacrh_url(array('status' => 3,'m' => 'admin_once','untype' => 'status'), $this);?>
" class="admin_message_bg4">待审核微招聘：<?php echo $this->_tpl_vars['once_job']; ?>
</a>               
<a href="<?php echo seacrh_url(array('state' => 2,'m' => 'link','untype' => 'state'), $this);?>
" class="admin_message_bg5">待审核链接：<?php echo $this->_tpl_vars['admin_link']; ?>
</a>    
<a href="<?php echo seacrh_url(array('order_state' => 3,'m' => 'company_order','untype' => 'order_state'), $this);?>
" class="admin_message_bg6">待处理订单：<?php echo $this->_tpl_vars['company_order']; ?>
</a>
</div>
</div>
</div>
</div>
<div class="admin_index_center">
<div class="admin_index_Data">
<div class="admin_index_Data_bor">
<div class="admin_message_h1">一月数据统计</div>
<div class="admin_index_Data_cont" style=" position:relative">
<div class="admin_index_Data_cont_left" style="width:850px; float:left;height:300px;">
<div class="admin_index_fw" id="main22" style="width:800px;height:300px;">
<iframe name="right" id="tbrightMain" src="index.php?m=admin_right&c=getweb" frameborder="false" scrolling="auto" style="border:none;" width="850" height="300" allowtransparency="true"></iframe>
</div>
</div>
<div class="admin_index_date_list">
<ul>
<li><a href="javascript:clicktb('resumetj');" class="admin_index_date_a png">简历统计</a></li>
<li><a href="javascript:clicktb('jobtj');" class="admin_index_date_b png">职位统计</a></li>
<li><a href="javascript:clicktb('comtj');" class="admin_index_date_c png">企业注册统计</a></li>
<li><a href="javascript:clicktb('getweb');" class="admin_index_date_d png">个人注册统计</a></li>
<li><a href="javascript:clicktb('newstj');" class="admin_index_date_e png">新闻统计</a></li>
<li><a href="javascript:clicktb('adtj');" class="admin_index_date_f png">广告点击统计</a></li>
<li><a href="javascript:clicktb('wzptj');" class="admin_index_date_g png">微招聘统计</a></li>
<li><a href="javascript:clicktb('wjltj');" class="admin_index_date_h png">微简历统计</a></li>
<li><a href="javascript:clicktb('payordertj');" class="admin_index_date_i png">充值统计</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="mainleft">
<div class="maininfo" style="height:180px">
    	<div class="mainboxtop"><h6>服务商</h6></div>
        <div class="maincontent">
        <p>网站设计：王工</p>
        <p>在线支持：<a target="_blank" href=" http://wpa.qq.com/msgrd?v=3&uin=820591677&site=qq&menu=yes"><img border="0" src=" http://wpa.qq.com/pa?p=2:820591677:41 &r=0.15196556923910975" alt="点击这里给我发消息" title="点击这里给我发消息"></a></p>
        <p>联系电话：15920258490</p>
		<p>服务咨询：<a href="http://www.0769168.com" target="_blank">梦想家</a> </p>
        </div>
    </div>
</div>
<div class="mainright">
    <div class="maininfo" style="height:180px">
    	<div class="mainboxtop"><h6>系统信息</h6></div>
        <div class="maincontent">
        <p style="float:left;">程序版本： <?php echo $this->_tpl_vars['db_config']['version']; ?>
 [ <div id="version_msg" style="float:left;">无须更新!</div>]</p>
		<p style="clear:both;">服务器软件：<?php echo $this->_tpl_vars['soft']; ?>
</p>
        <!--<p>可用空间(磁盘区)：<?php echo $this->_tpl_vars['kongjian']; ?>
&nbsp;M</p>-->
		<p>MySQL 版本：<?php echo $this->_tpl_vars['banben']; ?>
</p>
		<p>用户 - 服务器：<?php echo $this->_tpl_vars['yonghu']; ?>
 - <?php echo $this->_tpl_vars['server']; ?>
</p>
        </div>
    </div>
  </div>
</div>
<input type="hidden" name="pytoken" id="pytoken" value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
<script>
function clicktb(name){$("#tbrightMain").attr("src","index.php?m=admin_right&c="+name);}
</script>
<!--<script src="http://init.phpyun.com/site.php?site=<?php echo $this->_tpl_vars['base']; ?>
">//此代码为远程获取补丁及通知，请不要删除</script>-->
</body>
</html>