<?php /* Smarty version 2.6.26, created on 2015-06-15 15:51:22
         compiled from wap/user.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/user.htm', 28, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">找人才</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 <script src="http://www.hr135.com/app/template/wap/js/search.js" language="javascript"></script>

<section>
  <div class="warp_content clear">
    <form method="get" action="index.php">
      <input type="hidden" name="c" value="resume" />
      <div class="formFiled">
          <input type="text" value="" name="keyword" class="input_search" placeholder="请输入关键字">
        <input type="submit" value="搜索" class="input_btn">
      </div>
    </form>
  <div class="job_list_content">     
  
  
<?php $_from = $this->_tpl_vars['user']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?> 
    <div class="user_list_cont"> 
     <a href="<?php echo smarty_function_wapurl(array('url' => "m:user,c:show,id:".($this->_tpl_vars['user']['id'])), $this);?>
" class="user_list_b">
      <div class="user_list">
        <aside class="user_tj_photo">  <img src="http://www.hr135.com/data/logo/20141210/14204024737.JPG">  </aside>
        <h3><span class="c288"><?php echo $this->_tpl_vars['user']['username_n']; ?>
</span><em class="user_xinx"><?php if ($this->_tpl_vars['user']['age'] == 0): ?>保密<?php else: ?><?php echo $this->_tpl_vars['user']['age']; ?>
岁<?php endif; ?></em></h3>
        
		<aside class="user_list_p"> <em class="user_p_p1"><i class="user_map fa fa-map-marker"></i><span class="user_city_n">上海-上海</span></em> <em class="user_p_ov"><span class="user_list_n">意向：</span><span class="
user_list_yx_w"><?php echo $this->_tpl_vars['user']['job_post_n']; ?>
</span></em> </aside>

        <aside class="user_list_p"> <em class="user_p_p1"><i class="user_map fa fa-usd"></i><span class="cf60">3000 - 4499</span> </em> <span class="user_list_n">经验：</span><span class="user_list_yx_w">1年以上</span> </aside>
        <!--<i class="user_icon_zd">置顶</i>--> </div>
      </a> 
	  </div>
<?php endforeach; endif; unset($_from); ?> 
		
  <?php if ($this->_tpl_vars['total'] <= 0): ?>
  <?php if ($_GET['keyword'] != ""): ?> 
  <div class="wap_member_no">没有搜索到人才</div>
  <?php else: ?>
  <div class="wap_member_no">暂无人才</div>
  <?php endif; ?>
  <?php else: ?>
  <div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
  <?php endif; ?>
  
  
  	
     </div>
	 
	 

   
   </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>