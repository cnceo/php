<?php /* Smarty version 2.6.26, created on 2015-06-15 19:22:25
         compiled from wap/member/user/look.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/user/look.htm', 19, false),array('modifier', 'date_format', 'wap/member/user/look.htm', 21, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">个人会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header> 
<div class="main_member_body">  
<div class="main_member_cot_box">
<div class="wap_member_comp_h1 ">
<span>谁看过我的简历</span>
</div>
<div class="wap_member_Receive">

<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div class="wap_member_msg">
<span><a href="<?php echo smarty_function_wapurl(array('m' => 'firm','url' => "c:show,id:".($this->_tpl_vars['v']['com_id'])), $this);?>
"><?php echo $this->_tpl_vars['v']['com_name']; ?>
</a></span>
    <div class="wap_member_msg_p1"> 简历名称：<?php echo $this->_tpl_vars['v']['resume_name']; ?>
</div>
<i><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</i>
<em class="user_size"><a href="javascript:void(0)" onclick="isdel('index.php?c=look&del=<?php echo $this->_tpl_vars['v']['id']; ?>
')" class="wap_member_msg_date">删除</a></em>
</div>
<?php endforeach; endif; unset($_from); ?>



</div>

<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
    </div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 