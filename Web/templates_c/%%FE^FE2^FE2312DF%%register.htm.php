<?php /* Smarty version 2.6.26, created on 2015-06-17 15:11:19
         compiled from wap/register.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/register.htm', 61, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header_cont.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>
<script>
function checkfrom(){
	var username=$("#username").val();
	if(username==""){
		alert("用户名不能为空！");
		return false;
	}else if(username.length<2||username.length>16){
		alert("用户名长度应在2-16位！");
		return false;
	}
	var email=$("#email").val();
    var myreg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if(!myreg.test(email)){
		alert("邮箱格式错误！");
		return false;
	}
	var password=$("#password").val();
	var password2=$("#password2").val();
	if(password==""){
		alert("密码不能为空！");
		return false;
	}else if(password.length<6||password.length>20){
		alert("密码长度应在6-20位！");
		return false;
	}
	if(password!=password2){
		alert("两次密码不一致！");
		return false;
	}
	<?php if ($_GET['usertype'] == 2): ?>
	var linkman=$.trim($("#linkman").val());
	var moblie=$.trim($("#moblie").val());
	if(linkman==''){
		alert("联系人不能为空！");return false;
	}
	if(moblie==''){
		alert("联系电话不能为空！");return false;
	}
	<?php endif; ?>
}
</script>

<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">会员注册</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header> 
 

<section class="list">
  <article>
    <div class="regform">
      <ul class="regtab">
	  <?php if ($_GET['usertype'] == 2): ?>
	    <li class="yh_reg_tit_qh "><a href="<?php echo smarty_function_wapurl(array('m' => 'register','url' => "usertype:1"), $this);?>
">个人注册</a></li>
        <li class="yh_reg_tit_qh current"><a href="<?php echo smarty_function_wapurl(array('m' => 'register','url' => "usertype:2"), $this);?>
">企业注册</a></li>
	  <?php else: ?>
        <li class="yh_reg_tit_qh current"><a href="<?php echo smarty_function_wapurl(array('m' => 'register','url' => "usertype:1"), $this);?>
">个人注册</a></li>
        <li class="yh_reg_tit_qh"><a href="<?php echo smarty_function_wapurl(array('m' => 'register','url' => "usertype:2"), $this);?>
">企业注册</a></li>
	  <?php endif; ?>	
      </ul>
 <?php if ($_GET['usertype'] == 2): ?>
 <form action="" method="post" onSubmit="return checkfrom();" >
  <input name="wxid" type="hidden" value="<?php echo $_GET['wxid']; ?>
"/>
    <input name="usertype" type="hidden" value="2"/>
        <dl class="forminputitem">
          <dd>
            <div class="c inputitem_w ico_email">
              <input class="inputitemtxt"  placeholder="填写邮箱地址" name="email" id="email" type="text">
            </div>
          </dd>
          <dd id="usernamewrap" style="display: block;">
            <div class="c ico_name inputitem_w">
              <input class="inputitemtxt" placeholder="填写用户名" name="username" id="username" type="text">
            </div>
          </dd>
          <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt"  placeholder="填写密码" name="password" id="password" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
		  <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt"  placeholder="请重复密码" name="password2" id="password2" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
		  <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt"  placeholder="填写联系人" name="linkman" id="linkman" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
		  <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt"  placeholder="填写联系电话" name="moblie" id="moblie" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
          <dd><span class="photochk" style="width:100%">
            <input id="chkAgress" type="checkbox" name="chkAgress" checked="" class="inputChk">
            <em style="width:100%">同意<a href="/reg/services/">用户服务协议</a></em></span></dd>
          <dd>
            <input type="submit" name="submit" value="提交" class="inputSubmit">
          </dd>
        </dl>
 </form>
	  
	  
 <?php else: ?>	  
	  
 <form action="" method="post" onSubmit="return checkfrom();">
  <input name="wxid" type="hidden" value="<?php echo $_GET['wxid']; ?>
"/>
    <input name="usertype" type="hidden" value="1"/>
        <dl class="forminputitem">
          <dd>
            <div class="c inputitem_w ico_email">
              <input class="inputitemtxt"  placeholder="填写邮箱地址" name="email" id="email" type="text">
            </div>
          </dd>
          <dd id="usernamewrap" style="display: block;">
            <div class="c ico_name inputitem_w">
              <input class="inputitemtxt" placeholder="填写用户名" name="username" id="username" type="text">
            </div>
          </dd>
          <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt" onfocus="this.type='password'" placeholder="填写密码" name="password" id="password" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
		  <dd>
            <div class="c ico_pwd2 inputitem_w">
              <input class="inputitemtxt" onfocus="this.type='password'" placeholder="请重复密码" name="password2" id="password2" type="text">
              <em class="viewpwd" onclick="viewPwd2();"></em></div>
          </dd>
		  
		  
		  
          <dd><span class="photochk" style="width:100%">
            <input id="chkAgress" type="checkbox" name="chkAgress" checked="" class="inputChk">
            <em style="width:100%">同意<a href="/reg/services/">用户服务协议</a></em></span></dd>
          <dd>
            <input type="submit" name="submit" value="提交" class="inputSubmit">
            <a id="reg_url_1" href="index.php?c=register&usertype=1" class="index_logoin_submit2"></a> 
			<a id="reg_url_2" href="index.php?c=register&usertype=2" class="index_logoin_submit2" style="display:none"></a> 
			</dd>
        </dl>
      </form>
<?php endif; ?>	  
	  
	  

    </div>
  </article>
</section>
<script>
	$(function(){
		if(''=='2'){
			$('form:eq(1)').show();
		}else{
			$('form:eq(0)').show();
		}
		$('.regtab').delegate('.yh_reg_tit_qh','click',function(){
			$('.regtab .yh_reg_tit_qh').removeClass('current');
			$(this).addClass('current');
			$('form').hide();
			$('form:eq('+$(this).index()+')').show();
		});
	});
</script> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>