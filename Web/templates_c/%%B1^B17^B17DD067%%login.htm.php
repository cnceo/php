<?php /* Smarty version 2.6.26, created on 2015-06-17 15:04:26
         compiled from wap/login.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/login.htm', 38, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header_cont.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">��Ա��¼</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 <section class="list">
  <article>
    <div class="regform" style="padding-top: 20px;">
     <form action="" method="post" onsubmit="return mlogin();">
       <input name="usertype" type="hidden" value="<?php echo $_GET['usertype']; ?>
"/>
		<input name="wxid" type="hidden" value="<?php echo $_GET['wxid']; ?>
"/>
        <dl class="forminputitem">
          <dd>
            <div class="c inputitem_w">
              <input name="username" type="text" id="username" value="" placeholder="�����û���/����/�ֻ���" class="inputitemtxt">
            </div>
          </dd>
          <dd>
            <div class="c ico_eye_close inputitem_w">
              <input name="password" type="password" id="password"  class="inputitemtxt" placeholder="��������" >
              <em class="viewpwd" id="showPwd" onclick="showPwd(this)"></em> </div>
          </dd>
          
          <dd>
            <input type="submit" name="submit"  value="��¼" class="inputSubmit">
          </dd>
		  
		  <dd> <span class="photochk">
            <input type="checkbox" name="longLogin" id="longLogin" class="inputChk">
            <em class="blue">�Զ���¼</em> </span> 
			<?php if ($_GET['usertype'] == 2): ?>
			<a href="<?php echo smarty_function_wapurl(array('m' => 'login','url' => "usertype:1"), $this);?>
" class="getpwd">�����û���½</a>
			<?php else: ?>
			<a href="<?php echo smarty_function_wapurl(array('m' => 'login','url' => "usertype:2"), $this);?>
" class="getpwd">��ҵ�û���½</a>
			<?php endif; ?>
		  </dd>
		  
		  
        </dl>
      </form>
    </div>
  </article>
  <div class="userloginreg">
    <p> û���˺ţ����ϼ�������ͨ��Ա </p>
<?php if ($_GET['usertype'] == 2): ?>
<a href="<?php echo smarty_function_wapurl(array('m' => 'register','url' => "usertype:2"), $this);?>
" class="wap_member_mrecord_list wap_member_mrecord_list_no" style="color:#fff">��ҵע��</a>
<?php else: ?>
<a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
" class="wap_member_mrecord_list wap_member_mrecord_list_no" style="color:#fff">����ע��</a>
<?php endif; ?>   
  	 
  </div>
</section>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>