<?php /* Smarty version 2.6.26, created on 2015-06-16 14:52:46
         compiled from D:%5Cwwwroot%5Ctoptophr.com%5CWeb/template/personalityblue/client_header.htm */ ?>
<div class="header_top fl"></div>
<div class="w980">
  <div class="header_nav fl">
    <div class="header_logo fl"><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/"><img src="<?php echo $this->_tpl_vars['client']; ?>
/images/phone_logo.jpg" class="png"></a></div>
    <ul class="header_right_nav fr">
	  <li> <a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/">��վ��ҳ</a></li>	  
	  <?php $_from = $this->_tpl_vars['navlist_client']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['navlist_client']):
?>
      <li><a <?php if ($this->_tpl_vars['navlist_client']['eject']): ?> target="_self" <?php endif; ?>  href="<?php echo $this->_tpl_vars['navlist_client']['url']; ?>
" class="<?php echo $this->_tpl_vars['navlist_client']['navclass']; ?>
"><?php echo $this->_tpl_vars['navlist_client']['name']; ?>
</a> </li>
	  <?php endforeach; endif; unset($_from); ?>
    </ul>
  </div>
</div>
<div style=" clear:both"></div>