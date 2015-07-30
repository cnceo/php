<?php /* Smarty version 2.6.26, created on 2015-06-15 20:13:31
         compiled from wap/member/com/index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/index.htm', 48, false),)), $this); ?>
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
 
<div class="index_header">
<div class="com_header_img"><div class="com_header_bg"><img src="http://www.hr135.com/" onerror="showImgDelay(this,'http://www.hr135.com/data/logo/20140420/14002532782.JPG',2);"></div></div> 	
<div class="member_header_info" style="padding-left:135px;">
<div class="m_user_name">你好！<?php echo $this->_tpl_vars['username']; ?>
 <a href="index.php?c=info" class="m_infor_bj"><i class="m_icon_bj fa fa-pencil-square-o"></i> 编辑</a></div>
<div class=""></div>

</div>

</div>
<section>
<div class="m_index_msg">
<dl class="m_index_msg_list">
<a href="index.php?c=job">
<dt><?php echo $this->_tpl_vars['jobnum']; ?>
</dt>
<dd>职位管理</dd>
</a>
</dl>
<dl class="m_index_msg_list">
<a href="index.php?c=hr">
<dt><?php echo $this->_tpl_vars['sqnum']; ?>
</dt>
<dd>应聘简历</dd>
</a>
</dl>
<dl class="m_index_msg_list">
<a href="index.php?c=talent_pool">
<dt><?php echo $this->_tpl_vars['talent_pool_num']; ?>
</dt>
<dd>人才库</dd>
</a>
</dl>
</div>
</section>

<section class="wap_member">
<div class="wap_member_mrecord wap_member_mrecord_mt5">
<a href="<?php echo smarty_function_wapurl(array('url' => "m:user"), $this);?>
" class="wap_member_mrecord_list" style="border:none"><i class="m_icon  fa fa-graduation-cap"></i>找人才</a>
</div>
</section>
<section class="wap_member">
<div class="wap_member_mrecord">
<a href="index.php?c=info" class="wap_member_mrecord_list"><i class="m_icon  fa fa-file-text"></i>完善基本资料</a>
<a href="index.php?c=job" class="wap_member_mrecord_list"><i class="m_icon  fa fa-suitcase"></i>职位管理</a>
<a href="index.php?c=com" class="wap_member_mrecord_list"><i class="m_icon  fa fa-credit-card"></i>账户管理</a>

</div>

</section>
<section class="wap_member">
<div class="wap_member_mrecord">
<a  href="index.php?c=hr" class="wap_member_mrecord_list"><i class="m_icon  fa fa-fax"></i>应聘简历</a>
<a href="index.php?c=invite" class="wap_member_mrecord_list"><i class="m_icon  fa fa-tty"></i>已邀请的简历</a>

<a href="index.php?c=look_resume" class="wap_member_mrecord_list"><i class="m_icon fa fa-users"></i>我浏览过的简历</a>
<a href="index.php?c=look_job" class="wap_member_mrecord_list"><i class="m_icon  fa fa-eye"></i>被浏览记录</a>
<a href="index.php?c=talent_pool" class="wap_member_mrecord_list"><i class="m_icon  fa fa-star"></i>收藏的人才</a>
</div>

</section>
<section class="wap_member">
<div class="wap_member_mrecord">
<a href="index.php?c=password" class="wap_member_mrecord_list "><i class="m_icon  fa fa-unlock-alt"></i>更改密码</a>

<a href="<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
" class="wap_member_mrecord_list" style="border:none"><i class="m_icon fa fa-power-off"></i>退出登录</a>
</div>
</section>



<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 