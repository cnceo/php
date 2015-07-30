<?php /* Smarty version 2.6.26, created on 2015-06-15 19:28:53
         compiled from wap/member/user/password.htm */ ?>
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
<div class="wap_member_comp_h1 "><span>更改密码</span></div>
<form action="index.php?c=password" method="post" onsubmit="return ckpwd(this)">
<ul class="user_password">
<li><span class="wap_member_pss">旧密码：</span>
<input name="oldpassword" type="password" class="input-common placeholder" placeholder="旧密码" />
</li>
<li><span class="wap_member_pss">新密码：</span>
<input name="password1" type="password" class="input-common placeholder" placeholder="新密码" />
</li>
<li><span class="wap_member_pss">确认密码：</span>
<input name="password2" type="password" class="input-common placeholder" placeholder="确认密码" />
</li>
<li>
<input type="submit" name="submit" value="提交" class="pay_choose_btn_01" />
</li>
</ul>
</form>
</div>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 