<?php /* Smarty version 2.6.26, created on 2015-06-15 20:11:51
         compiled from wap/member/com/hr.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/hr.htm', 16, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/cheader.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">企业会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>
 
<div class="main_member_body">
<section class="wap_member">
<div class="wap_member_comp_h1"><span>应聘简历</span></div>
<div class="wap_member_Receive">
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div class="wap_member_Receive_list">
<span><a href="<?php echo smarty_function_wapurl(array('m' => 'user','url' => "c:show,id:".($this->_tpl_vars['v']['eid'])), $this);?>
" class="wap_m_post_user"><?php echo $this->_tpl_vars['v']['name']; ?>
</a> / <?php echo $this->_tpl_vars['v']['sex']; ?>
</span>
<aside>申请职位：<?php echo $this->_tpl_vars['v']['job_name']; ?>
</aside>
<i><?php echo $this->_tpl_vars['v']['edu']; ?>
</i>

</div>
<?php endforeach; else: ?>
<div class="wap_member_no">您暂时还没有申请职位的人才</div>
<?php endif; unset($_from); ?>

</div>
<!--没有职位提示-->
</section>
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 