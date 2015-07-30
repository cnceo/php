<?php /* Smarty version 2.6.26, created on 2015-07-27 17:45:51
         compiled from D:%5Cweb%5Cphp%5CWeb/template/personalityblue/header.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'D:\\web\\php\\Web/template/personalityblue/header.htm', 7, false),)), $this); ?>
<script src="<?php echo $this->_tpl_vars['style']; ?>
/js/index.js" language="javascript"></script>  
<div class="top">
  <div class="top_cot">
    <div class="top_cot_content">
      <div class="top_left fl">
        <div class="yun_welcome fl">欢迎来到<?php echo $this->_tpl_vars['config']['sy_webname']; ?>
！</div>
        <span class="fl"><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/wap" class="wap_icon">手机版</a> | <a href="<?php echo smarty_function_url(array('m' => 'subscribe'), $this);?>
">订阅</a></span> </div>
      <div class="top_right_re fr">
        <div class="top_right">
          <div class="yun_topNav fr"> 
		  <a class="yun_navMore" href="javascript:;">网站导航</a>
            <div class="yun_webMoredown" style="display:none">
              <div class="yun_top_nav_box"> 
			  <?php $_from = $this->_tpl_vars['navmap']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['navmap']):
?>
                <div class="yun_top_nav_h1"><a href="<?php echo $this->_tpl_vars['navmap']['url']; ?>
" <?php if ($this->_tpl_vars['navmap']['eject']): ?> target="_blank"<?php endif; ?>><?php echo $this->_tpl_vars['navmap']['name']; ?>
</a></div>
                <ul>
                  <?php $_from = $this->_tpl_vars['navmap']['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['maplist']):
?>
                  <li><a href="<?php echo $this->_tpl_vars['maplist']['url']; ?>
" <?php if ($this->_tpl_vars['maplist']['eject']): ?> target="_blank"<?php endif; ?>><?php echo $this->_tpl_vars['maplist']['name']; ?>
</a></li>
                  <?php endforeach; endif; unset($_from); ?>
                </ul>
                <?php endforeach; endif; unset($_from); ?> </div>
            </div>
          </div> 
          <SCRIPT LANGUAGE='JavaScript' src='<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/index.php?m=includejs&c=RedLoginHead'></SCRIPT> 
        </div>
      </div>
    </div>
  </div>
</div>




<div class="clear"></div>
<div class="wrapper">
<!--头部开始-->
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tplstyle'])."/public_search/index_search.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/search.js" type="text/javascript"></script>
<div class="topmain">
<div class="logo fl"><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
"><img class="png" src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['config']['sy_logo']; ?>
" /></a></div>
<div class="city-info fl"><SCRIPT LANGUAGE='JavaScript' src='<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/index.php?m=includejs&c=Site'></SCRIPT></div>
<div class="index_search fr"> 
<form action="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/index.php" method="get" onsubmit="return search_keyword(this);">
   <div class="index_search_con fl">
  
   <input type="hidden" name="m" value="com" />
   <input type="hidden" name="c" value="search" id="search" />
   <input type="text" id="keyword" name="keyword" class="index_search_input fl" value='' placeholder='请输入职位名称或关键字'>
   <div class="index_search_place fl">
       <span id='search_name'>找工作</span>
      <div class="index_place_position" style="display:none">
		  <a href="javascript:void(0)" onclick="top_searchs('com','找工作');$('#search').attr('name','c');">>找工作</a>
		  <a href="javascript:void(0)" onclick="top_searchs('user','招人才');$('#search').attr('name','c');">>招人才</a>
		  <a href="javascript:void(0)" onclick="top_searchs('tiny','微简历');$('#search').attr('name','');">>微简历</a>
		  <a href="javascript:void(0)" onclick="top_searchs('once','微招聘');$('#search').attr('name','');">>微招聘</a>
      </div>
   </div>
	</div> 	
    <input type="submit" value="" class="index_search_bth fl">  
     </form> 
 
   
</div>
</div>
<!--头部结束-->
<div class="clear"></div>
<script>
function check_type(id){
	var style = document.getElementById(id).style.display;
	if(style=="none"){
		show_job('','1');
	}
	$("#"+id).toggle();
}
</script>
<div class="nav">
<div class="nav_sort fl" onclick="check_type('menuLst');">
<a class="nav_sort_all" href="javascript:">全部职位分类</a>
<!--悬浮开始-->
<div class="leftNav">
      <div id="menuLst" class="menuLst" style="display:none">
        <ul>
        <?php $_from = $this->_tpl_vars['job_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
          <?php if ($this->_tpl_vars['j'] < 16): ?>
          <li class="lst<?php echo $this->_tpl_vars['j']; ?>
 "onmouseover="show_job(<?php echo $this->_tpl_vars['j']; ?>
,'1');" onmouseout="hide_job(<?php echo $this->_tpl_vars['j']; ?>
);"><b></b><a class="link" href="<?php echo smarty_function_url(array('m' => 'com','url' => "c:search,job1:".($this->_tpl_vars['v'])), $this);?>
" title="<?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
"><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
</a><i></i></li>
          <?php endif; ?>
          <?php endforeach; endif; unset($_from); ?>
         </ul>
      </div>
      <div class="leftNav_bot icon2"></div>
    </div>
    <script src="<?php echo $this->_tpl_vars['style']; ?>
/js/pop_up.js" language="javascript"></script>
<!--悬浮结束-->
</div>
<div class="nav_size fl">
<ul class="navmain fl">

<?php $_from = $this->_tpl_vars['navlist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['navlist']):
?>
<li><a href="<?php echo $this->_tpl_vars['navlist']['url']; ?>
" style="<?php if ($this->_tpl_vars['navlist']['color']): ?>color:<?php echo $this->_tpl_vars['navlist']['color']; ?>
;<?php endif; ?><?php if ($this->_tpl_vars['navlist']['bold'] == 1): ?>font-weight:bolder;<?php endif; ?>"><?php echo $this->_tpl_vars['navlist']['name']; ?>
 </a>
      <div class="nav_icon">
      <?php if ($this->_tpl_vars['navlist']['model'] == 'new'): ?>
      <img src="<?php echo $this->_tpl_vars['style']; ?>
/images/new.gif">
      <?php elseif ($this->_tpl_vars['navlist']['model'] == 'hot'): ?>
      <img src="<?php echo $this->_tpl_vars['style']; ?>
/images/hotn.gif">
      <?php endif; ?></div></li>
<?php endforeach; endif; unset($_from); ?>
</ul>
</div>
</div>
</div>
</div>

<!--滚动展示内容-->
<div class="header_fixed" id="header_fix" style="display:none">
  <div class="header_fixed_cont">
    <ul class="header_fixed_list">
	  <?php $_from = $this->_tpl_vars['nlist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['nlist']):
?>
      <li class="<?php echo $this->_tpl_vars['nlist']['navclass']; ?>
"><a href="<?php echo $this->_tpl_vars['nlist']['url']; ?>
" <?php if ($this->_tpl_vars['nlist']['eject']): ?> target="_blank"<?php endif; ?>><?php echo $this->_tpl_vars['nlist']['name']; ?>
</a></li>
	  <?php endforeach; endif; unset($_from); ?>
	  <?php $_from = $this->_tpl_vars['nalist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['nalist']):
?>
	  <li class="<?php echo $this->_tpl_vars['nalist']['navclass']; ?>
"><a href="<?php echo $this->_tpl_vars['nalist']['url']; ?>
"><?php echo $this->_tpl_vars['nalist']['name']; ?>
</a></li>
	  <?php endforeach; endif; unset($_from); ?>
	  
    </ul>
    <div class="header_fixed_login">
	<?php if (! $this->_tpl_vars['cookie']['username']): ?>
      <!--登录前 -->
      <div class="header_fixed_login_l" style="display:block"> 
			  <span class="header_fixed_login_dl"  did="login"> 登录
				<div class="header_fixed_login_box" id="login_t" style="display:none"> <a href="<?php echo smarty_function_url(array('url' => "m:login,usertype:1"), $this);?>
" class="header_fixed_login_a">个人登录</a> <a href="<?php echo smarty_function_url(array('url' => "m:login,usertype:2"), $this);?>
" class="header_fixed_login_a">企业登录</a> </div>
				</span>|<span class="header_fixed_login_dl" did="register"> 注册
				<div class="header_fixed_reg_box" id="register_t" style="display:none"> <a href="<?php echo smarty_function_url(array('url' => "m:register,usertype:1"), $this);?>
" class="header_fixed_login_a">个人注册</a> <a href="<?php echo smarty_function_url(array('url' => "m:register,usertype:2"), $this);?>
" class="header_fixed_login_a">企业注册</a> </div>
				</span>
	</div>
      <!--登录前 end-->
      <!--登录后 -->
	  <?php else: ?>
      <div class="header_fixed_login_after">
        <div class="header_fixed_login_after_cont"> <span class="header_fixed_login_after_name"><?php echo $this->_tpl_vars['cookie']['username']; ?>
</span>
          <div class="header_fixed_reg_box"  style="display:none"> <a href="###" class="header_fixed_login_a">邀请面试（10）</a> <a href="###" class="header_fixed_login_a">我的简历（3）</a> </div>
        </div>
      </div>
      <!--登录后end -->
	  <?php endif; ?>
    </div>
  </div>
</div>
<script language="javascript">
$(function() {
	var offset = 150;
    $(window).scroll(function(){
	( $(this).scrollTop() > offset ) ? $("#header_fix").show() : $("#header_fix").hide();
    });
	
	$(".header_fixed_login_dl").hover(function(){
	    var t=$(this).attr("did");
		$("#"+t+"_t").show();
	},function(){
	    var t=$(this).attr("did");
	   $("#"+t+"_t").hide();    
	});
});
</script>
<!--滚动展示内容 end-->