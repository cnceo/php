<?php /* Smarty version 2.6.26, created on 2015-06-15 19:22:34
         compiled from wap/member/user/sq.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/user/sq.htm', 18, false),array('modifier', 'date_format', 'wap/member/user/sq.htm', 20, false),)), $this); ?>
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
<div class="wap_member_comp_h1 "><span>申请的职位</span></div>
<div class="wap_member_post_list">


<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div class="wap_member_post_list_b">
<h3><a href="<?php echo smarty_function_wapurl(array('m' => 'com','url' => "c:view,id:".($this->_tpl_vars['v']['job_id'])), $this);?>
" class="wap_m_post_user"><?php echo $this->_tpl_vars['v']['job_name']; ?>
</a></h3>
<aside><?php echo $this->_tpl_vars['v']['com_name']; ?>
&nbsp;&nbsp;<span class="member_c9">[<?php echo $this->_tpl_vars['v']['city']; ?>
]</span></aside>
<i ><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</i>
 
<div class="user_Browse">
<?php if ($this->_tpl_vars['v']['is_browse'] == 2): ?>
<span class="wap_member_post_list_hr wap_member_post_list_hr_n">对方已浏览简历</span> 
<?php else: ?>
<span class="wap_member_post_list_hr wap_member_post_list_hr_n">对方未浏览简历</span> 
<?php endif; ?>
<a href="javascript:void(0)" class="wap_member_msg_date" onclick="isdel('index.php?c=sq&del=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a>
</div>
</div>
<?php endforeach; else: ?>
<div class="wap_member_no">暂无申请记录</div>
<?php endif; unset($_from); ?>



</div>
</div>
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>