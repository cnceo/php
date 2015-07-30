<?php /* Smarty version 2.6.26, created on 2015-06-15 19:28:13
         compiled from wap/member/user/look_job.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/user/look_job.htm', 21, false),)), $this); ?>
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
<div class="wap_member_comp_h1"><span>我浏览过的职位</span></div>
<div class="wap_member_Receive">





<?php $_from = $this->_tpl_vars['look']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
	<div class="wap_member_msg wap_member_msg_after"> 
				 <span><a href="<?php echo smarty_function_wapurl(array('m' => 'com','url' => "c:view,id:".($this->_tpl_vars['one']['job_id'])), $this);?>
"  class="wap_Title_span_com"><?php echo $this->_tpl_vars['one']['jobname']; ?>
</a>
				 <!--<span class="wap_member_post_list_zt">招聘中</span> -->
				 </span>
		   <div class="wap_member_msg_p1"> <a href="<?php echo smarty_function_wapurl(array('m' => 'firm','url' => "c:show,id:".($this->_tpl_vars['one']['com_id'])), $this);?>
"><?php echo $this->_tpl_vars['one']['comname']; ?>
</A></div>     
        <div class="wap_member_msg_p1_xz"><span class="member_c9">地区：</span><?php echo $this->_tpl_vars['one']['provinceid']; ?>
-<?php echo $this->_tpl_vars['one']['cityid']; ?>
&nbsp;&nbsp;&nbsp;<span class="member_c9">薪资：</span><span class="wap_member_msg_p1_cf"><?php echo $this->_tpl_vars['one']['salary']; ?>
</span></div>
		  <em class="user_size"><a href="javascript:void(0)"  onclick="isdel('<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=look_job_del&id=<?php echo $this->_tpl_vars['log']['id']; ?>
');" class="wap_member_msg_date"> 删除</a></em>
	
</div>

<?php endforeach; else: ?>  
         	<div class="wap_member_no">您还没有浏览过的职位。</div>
<?php endif; unset($_from); ?> 


 
</div>
 
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
 

</div> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>