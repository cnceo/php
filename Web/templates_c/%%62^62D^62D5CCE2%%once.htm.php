<?php /* Smarty version 2.6.26, created on 2015-06-15 15:40:36
         compiled from wap/once.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/once.htm', 25, false),)), $this); ?>
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
       <div class="header_h1">微招聘</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
<section>
  <div class="warp_content clear">
    <form  action="index.php" method="get">
      <div class="formFiled ">
        <input type="hidden" name="m" value="once" /> 
		<input type="hidden"  value="once" name="m"/>
        <input type="text" name="keyword" value="<?php echo $_GET['keyword']; ?>
" class="input_search"  placeholder="请输入关键字" />
        <input type="submit" value="搜索" class="input_btn">
      </div>
    </form>
	
	 <?php $_from = $this->_tpl_vars['once']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['once']):
?> 
      <div class="list_once_box"> 
	  <a href="<?php echo smarty_function_wapurl(array('url' => "m:once,c:show,id:".($this->_tpl_vars['once']['id'])), $this);?>
">
      <div class="list_once_name"><?php echo $this->_tpl_vars['once']['title']; ?>
</div>
      <div class="list_once_name_P"> <?php echo $this->_tpl_vars['once']['companyname']; ?>
</div>
      <div class="list_once_name_P"> 联系电话：<?php echo $this->_tpl_vars['once']['phone']; ?>
</div>
      <div class="list_once_name_P"> 联&nbsp; 系&nbsp;人： <?php echo $this->_tpl_vars['once']['linkman']; ?>
 </div>
      </a> 
	  </div>
      <?php endforeach; endif; unset($_from); ?> 
     
  <?php if ($this->_tpl_vars['total'] <= 0): ?>
  <?php if ($_GET['keyword'] != ""): ?> 
  <div class="wap_member_no">没有搜索到微招聘</div>
  <?php else: ?>
  <div class="wap_member_no">暂无微招聘</div>
  <?php endif; ?>
  <?php else: ?>
  <div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
  <?php endif; ?>
     </div>
</section>
<!--功能条 -->
<div id="yun_cz" class="fn-dbox center">
  <div id="resumeBtn" class="deep fn-dbox-flex fn-dbox-flex-flex1"> <a href="###" class="once_t_fb" onclick="<?php echo smarty_function_wapurl(array('url' => "m:once,c:add,id:".($this->_tpl_vars['row']['id'])), $this);?>
"> <i class="fa fa-pencil-square-o"></i> 发布微招聘</a></div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>