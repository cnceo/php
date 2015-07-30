<?php /* Smarty version 2.6.26, created on 2015-07-28 14:58:29
         compiled from member/user/binding.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/user/binding.htm', 23, false),array('function', 'url', 'member/user/binding.htm', 57, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/binding.js"></script>
<script>var weburl="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
";</script>
<div class="w950"> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<style>
* {margin: 0 ;padding: 0;}
body,div{ margin: 0 ;padding: 0;}
</style>
  <div class="mian_right fltR mt12">
  <div class="tabmenubox01 mt9">
    <ul>
      <li><a href="index.php?c=info" title="个人基本信息">基本信息</a></li>
      <li><a href="index.php?c=uppic">照片管理</a></li>
      <li class="cur"> <a href="index.php?c=verifica">账户绑定</a></li>
    </ul>
  </div>
  <div class="clear"></div>
  <div  class="resume_box_list">
  <div class="resume_Prompt"> 绑定手机号码、完成邮箱验证，可以增加求职反馈的及时性和准确性，从而提高求职成功率 </div>
<div class="Binding_h1 mt10">登录用户名：<span class="resume_bd_span"><?php echo $this->_tpl_vars['username']; ?>
</span></div>
<div class="Binding_h1">上次登录时间：<?php echo ((is_array($_tmp=$this->_tpl_vars['member']['login_date'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M:%S")); ?>
  <a href="index.php?c=passwd" class="Binding_a">修改密码</a></div>

          <div class="Binding_list">
            <div class="Binding_list_left">邮箱</div>
            <?php if ($this->_tpl_vars['resume']['email_status'] == 1): ?>
            <div class="Binding_list_text">当前邮箱已验证：<b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['email']; ?>
</b> </div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('确定要取消绑定？','index.php?c=binding&act=del&type=email');" class="Binding_submit_qx">取消绑定</a></div>
            <?php else: ?>
            <div class="Binding_list_text">当前邮箱未验证：<b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['email']; ?>
</b> 邮箱验证后，可以通过邮箱随时取回账户密码。</div>
            <div class="Binding_oper"><a  href="javascript:getshow('email','绑定邮箱');" class="Binding_submit">立即绑定</a></div>
            <?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">绑定手机</div>
            <?php if ($this->_tpl_vars['resume']['moblie_status'] == 1): ?>
            <div class="Binding_list_text">当前手机已绑定：
            <b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</b> </div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('确定要取消绑定？','index.php?c=binding&act=del&type=moblie');" class="Binding_submit_qx">取消绑定</a></div>
            <?php else: ?>
            <div class="Binding_list_text">当前手机未绑定：
            <b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</b> 绑定后可使用该手机登录账号或找回密码</div>
            <div class="Binding_oper"><a  href="javascript:getshow('moblie','绑定手机号码');" class="Binding_submit">立即绑定</a></div>
          	<?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">绑定QQ</div>
            <?php if ($this->_tpl_vars['member']['qqid'] != ""): ?>
            <div class="Binding_list_text">已绑定QQ号</div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('确定要取消绑定？','index.php?c=binding&act=del&type=qqid');" class="Binding_submit_qx">取消绑定</a></div>
            <?php else: ?>
            <div class="Binding_list_text">未绑定QQ号</div>
           		 <?php if ($this->_tpl_vars['config']['sy_qqlogin'] != '1'): ?>
	          	  <div class="Binding_oper"><a href="javascript:void(0)" onclick="layer.msg('对不起，QQ绑定已关闭！');return false;" class="Binding_submit">立即绑定</a></div>
            	<?php else: ?>
            		<div class="Binding_oper"><a href="<?php echo smarty_function_url(array('m' => 'qqconnect','url' => "c:qqlogin,login:1"), $this);?>
" class="Binding_submit">立即绑定</a></div>
            	 <?php endif; ?>
            <?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">绑定新浪微博</div>
            <?php if ($this->_tpl_vars['member']['sinaid'] != ""): ?>
            <div class="Binding_list_text">已绑定，可使用新浪微博快速登录</div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('确定要取消绑定？','index.php?c=binding&act=del&type=sinaid');" class="Binding_submit_qx">取消绑定</a></div>
            <?php else: ?>
            <div class="Binding_list_text">授权绑定后，可使用新浪微博快速登录</div>
            	<?php if ($this->_tpl_vars['config']['sy_sinalogin'] != '1'): ?>
					<div class="Binding_oper"><a href="javascript:void(0)" onclick="layer.msg('对不起，新浪绑定已关闭！');return false;" class="Binding_submit">立即绑定</a></div>
				 <?php else: ?>
				  <div class="Binding_oper"><a href="<?php echo smarty_function_url(array('m' => 'sinaconnect','url' => "login:1"), $this);?>
" class="Binding_submit">立即绑定</a></div>
				 <?php endif; ?>
            <?php endif; ?>
          </div>
          
          <div class="Binding_list">
            <div class="Binding_list_left">身份证</div>
            <?php if ($this->_tpl_vars['resume']['idcard_status'] == 1): ?>
            <div class="Binding_list_text" style="width:400px;">已验证</div>
            <div class="Binding_oper" style="width:170px; "><a  href="javascript:look('身份证展示','<?php echo $this->_tpl_vars['resume']['idcard_pic']; ?>
');" class="Binding_submit_qx">查看身份证</a>
            <a  href="javascript:void(0);" class="Binding_submit_qx">已验证</a></div>
            <?php else: ?>
                <?php if ($this->_tpl_vars['resume']['idcard_pic'] != ""): ?>
                    <?php if ($this->_tpl_vars['resume']['idcard_status'] == 2): ?>
                    <div class="Binding_list_text">审核未通过 原因：<?php echo $this->_tpl_vars['resume']['statusbody']; ?>
</div>
                    <div class="Binding_oper"><a  href="javascript:getyyzz('上传身份证');" class="Binding_submit_rz">重新上传</a></div>
                    <?php else: ?>
                    <div class="Binding_list_text">身份证已上传，请等待管理员审核</div>
                    <div class="Binding_oper"><a  href="javascript:getyyzz('上传身份证');" class="Binding_submit_rz">重新上传</a></div>
                    <?php endif; ?>
                <?php else: ?>
                <div class="Binding_list_text">当前未上传身份证</div>
                <div class="Binding_oper"><a  href="javascript:getyyzz('上传身份证');" class="Binding_submit_rz">未验证</a></div>
                <?php endif; ?>
            <?php endif; ?>
          </div>
          
        </div>
      </div>
    </div> 
<!--绑定邮箱弹出框-->
<div id="email" style="display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff">
<div class="Binding_pop_box_msg">修改后的邮箱将作为新的登录账号</div>
<div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>新的邮箱：</span>
<input type="text" name="email" class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>验证码：</span>
<input type="text" name="email_code" class="Binding_pop_box_list_text">
<img id="vcode_img" src="../include/authcode.inc.php" style=" margin:0 5px 5px 5px; vertical-align:middle;"><a href="javascript:check_code();">看不清</a></div>
<div class="Binding_pop_sub" style="margin-top:10px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class=" com_pop_bth" type="button" onclick="check_email();" value="发送验证邮箱">
<input class=" com_pop_bth_qx" type="button" value="取消" onclick="layer.closeAll();">
</div>
</div>
</div>
</div>
<!--弹出框 end-->

<!--绑定手机弹出框-->
<div id="moblie" style=" display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff;">
<div class="Binding_pop_box_msg">绑定完成后，您可以使用该手机号码登录账号、找回密码</div>
<div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>手机号码：</span>
<input type="text" name="moblie" class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>短信验证码：</span>
<input type="text" id="moblie_code" class="Binding_pop_box_list_text" style="width:90px;">
<a href="javascript:;" onclick="sendmoblie();" class="Binding_pop_bth" id="time">免费发送验证码</a></div>
<div class="Binding_pop_sub" style="margin-top:10px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class="com_pop_bth_qd" onclick="check_moblie();" type="button" value="保存">
<input class="com_pop_bth_qx" type="button" value="取消" onclick="layer.closeAll();">
</div>
</div>
</div>
</div>
<!--弹出框 end-->
<!--营业执照弹出框-->
<div id="yyzz" style=" display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff;">
<div class="Binding_pop_box_msg">身份证验证，有利于更好的应聘工作</div>
<div>
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
<form name="MyForm" target="supportiframe" method="post" action="index.php?c=binding&act=save" enctype="multipart/form-data"  onsubmit="return check_user_cert();">
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>身份证：</span>
<input type="file" name="pic" id="user_cert_pic"  class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_sub" style="margin-top:20px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class="com_pop_bth_qd" name="upfile" type="submit" value="保存">
<input class="com_pop_bth_qx" type="button" value="取消" onclick="layer.closeAll();">
</div>
</form>
</div>
</div>
</div>
<div id="pic" style=" display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff;">
<img src="" id="picshow" width="480" height="200"/>
</div>
</div>
<!--弹出框 end-->
<input type="hidden" id="moblieval" value="<?php echo $this->_tpl_vars['resume']['telphone']; ?>
" />
<input type="hidden" id="emailval" value="<?php echo $this->_tpl_vars['resume']['email']; ?>
" />
<input type="hidden" id="send" value="0" />

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>