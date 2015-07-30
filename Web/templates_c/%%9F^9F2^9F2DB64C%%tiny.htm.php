<?php /* Smarty version 2.6.26, created on 2015-06-15 17:14:42
         compiled from wap/tiny.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/tiny.htm', 25, false),array('modifier', 'date_format', 'wap/tiny.htm', 30, false),)), $this); ?>
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
       <div class="header_h1">微简历</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
<section>
  <div class="warp_content clear">
    <form method="get" action="index.php">
      <input type="hidden" name="m" value="tiny" />
      <input type="hidden"  value="tiny" name="m"/>
      <div class="formFiled">
        <input type="text" name="keyword" value="<?php echo $_GET['keyword']; ?>
" class="input_search" placeholder="请输入关键字" />
        <input type="submit" value="搜索" class="input_btn">
      </div>
    </form>
    <div class="job_list_content">       
	<?php $_from = $this->_tpl_vars['wres']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['wres']):
?> 
	<div class="tiny_list"> 
	<a href="<?php echo smarty_function_wapurl(array('url' => "m:tiny,c:show,id:".($this->_tpl_vars['wres']['id'])), $this);?>
">
        <div class="tiny_list_top">
          <div class="tiny_r">
            <h3><span class="c288"><?php echo $this->_tpl_vars['wres']['username']; ?>
 </span><em class="user_xinx"><span class="user_line">/</span><?php echo $this->_tpl_vars['wres']['sex_name']; ?>
<span class="user_line"></span></em></h3>
            
            <span class="tiny_list_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['wres']['time'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</span> </div>
        </div>
        <div class="tiny_box">
          <div class="tiny_box_tit">工作经验：</div>
          <?php echo $this->_tpl_vars['wres']['exp_name']; ?>
 </div>
        </a> 
		</div>
      <?php endforeach; endif; unset($_from); ?> 
	  
	  <?php if ($this->_tpl_vars['total'] <= 0): ?>
  <?php if ($_GET['keyword'] != ""): ?> 
  <div class="wap_member_no">没有搜索到微简历</div>
  <?php else: ?>
  <div class="wap_member_no">暂无微简历</div>
  <?php endif; ?>
  <?php else: ?>
<div class="pages" style="padding-bottom:10px;"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
  <?php endif; ?>      
			
			
       </div>
  </div>
</section>
 
  <!--功能条 -->
<div id="yun_cz" class="fn-dbox center">
  <div id="resumeBtn" class="deep fn-dbox-flex fn-dbox-flex-flex1"> <a href="###" onclick="location.href='<?php echo smarty_function_wapurl(array('m' => 'tiny','url' => "c:add"), $this);?>
'"  class="once_t_fb"> <i class="fa fa-pencil-square-o"></i> 发布微简历</a></div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>