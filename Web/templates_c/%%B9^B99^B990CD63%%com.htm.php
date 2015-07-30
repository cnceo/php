<?php /* Smarty version 2.6.26, created on 2015-06-15 20:14:41
         compiled from wap/member/com/com.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/cheader.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">企业会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>


<div class="main_member_body">
 
<section class="wap_member">
<div class="wap_member_comp_h1"><span>账户管理</span></div>
<div class="wap_member_Receive">
<div class="wap_member_pay">账户余额：<em><?php echo $this->_tpl_vars['statis']['pay']; ?>
</em> 元</div>
<div class="wap_member_pay">您的<?php echo $this->_tpl_vars['config']['integral_pricename']; ?>
：<em><?php echo $this->_tpl_vars['statis']['integral']; ?>
</em><?php echo $this->_tpl_vars['config']['integral_priceunit']; ?>
</div>
<div class="wap_member_pay_c">会员级别：<?php echo $this->_tpl_vars['statis']['rating_name']; ?>
</div> 
 
<a href="index.php?c=pay" class="com_m_wap_pay">充值</a>
</div>
</section>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>