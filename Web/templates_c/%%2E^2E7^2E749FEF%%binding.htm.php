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
      <li><a href="index.php?c=info" title="���˻�����Ϣ">������Ϣ</a></li>
      <li><a href="index.php?c=uppic">��Ƭ����</a></li>
      <li class="cur"> <a href="index.php?c=verifica">�˻���</a></li>
    </ul>
  </div>
  <div class="clear"></div>
  <div  class="resume_box_list">
  <div class="resume_Prompt"> ���ֻ����롢���������֤������������ְ�����ļ�ʱ�Ժ�׼ȷ�ԣ��Ӷ������ְ�ɹ��� </div>
<div class="Binding_h1 mt10">��¼�û�����<span class="resume_bd_span"><?php echo $this->_tpl_vars['username']; ?>
</span></div>
<div class="Binding_h1">�ϴε�¼ʱ�䣺<?php echo ((is_array($_tmp=$this->_tpl_vars['member']['login_date'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M:%S")); ?>
  <a href="index.php?c=passwd" class="Binding_a">�޸�����</a></div>

          <div class="Binding_list">
            <div class="Binding_list_left">����</div>
            <?php if ($this->_tpl_vars['resume']['email_status'] == 1): ?>
            <div class="Binding_list_text">��ǰ��������֤��<b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['email']; ?>
</b> </div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('ȷ��Ҫȡ���󶨣�','index.php?c=binding&act=del&type=email');" class="Binding_submit_qx">ȡ����</a></div>
            <?php else: ?>
            <div class="Binding_list_text">��ǰ����δ��֤��<b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['email']; ?>
</b> ������֤�󣬿���ͨ��������ʱȡ���˻����롣</div>
            <div class="Binding_oper"><a  href="javascript:getshow('email','������');" class="Binding_submit">������</a></div>
            <?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">���ֻ�</div>
            <?php if ($this->_tpl_vars['resume']['moblie_status'] == 1): ?>
            <div class="Binding_list_text">��ǰ�ֻ��Ѱ󶨣�
            <b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</b> </div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('ȷ��Ҫȡ���󶨣�','index.php?c=binding&act=del&type=moblie');" class="Binding_submit_qx">ȡ����</a></div>
            <?php else: ?>
            <div class="Binding_list_text">��ǰ�ֻ�δ�󶨣�
            <b class="Binding_list_b"><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</b> �󶨺��ʹ�ø��ֻ���¼�˺Ż��һ�����</div>
            <div class="Binding_oper"><a  href="javascript:getshow('moblie','���ֻ�����');" class="Binding_submit">������</a></div>
          	<?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">��QQ</div>
            <?php if ($this->_tpl_vars['member']['qqid'] != ""): ?>
            <div class="Binding_list_text">�Ѱ�QQ��</div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('ȷ��Ҫȡ���󶨣�','index.php?c=binding&act=del&type=qqid');" class="Binding_submit_qx">ȡ����</a></div>
            <?php else: ?>
            <div class="Binding_list_text">δ��QQ��</div>
           		 <?php if ($this->_tpl_vars['config']['sy_qqlogin'] != '1'): ?>
	          	  <div class="Binding_oper"><a href="javascript:void(0)" onclick="layer.msg('�Բ���QQ���ѹرգ�');return false;" class="Binding_submit">������</a></div>
            	<?php else: ?>
            		<div class="Binding_oper"><a href="<?php echo smarty_function_url(array('m' => 'qqconnect','url' => "c:qqlogin,login:1"), $this);?>
" class="Binding_submit">������</a></div>
            	 <?php endif; ?>
            <?php endif; ?>
          </div>
          <div class="Binding_list">
            <div class="Binding_list_left">������΢��</div>
            <?php if ($this->_tpl_vars['member']['sinaid'] != ""): ?>
            <div class="Binding_list_text">�Ѱ󶨣���ʹ������΢�����ٵ�¼</div>
            <div class="Binding_oper"><a href="javascript:void(0)" onClick="layer_del('ȷ��Ҫȡ���󶨣�','index.php?c=binding&act=del&type=sinaid');" class="Binding_submit_qx">ȡ����</a></div>
            <?php else: ?>
            <div class="Binding_list_text">��Ȩ�󶨺󣬿�ʹ������΢�����ٵ�¼</div>
            	<?php if ($this->_tpl_vars['config']['sy_sinalogin'] != '1'): ?>
					<div class="Binding_oper"><a href="javascript:void(0)" onclick="layer.msg('�Բ������˰��ѹرգ�');return false;" class="Binding_submit">������</a></div>
				 <?php else: ?>
				  <div class="Binding_oper"><a href="<?php echo smarty_function_url(array('m' => 'sinaconnect','url' => "login:1"), $this);?>
" class="Binding_submit">������</a></div>
				 <?php endif; ?>
            <?php endif; ?>
          </div>
          
          <div class="Binding_list">
            <div class="Binding_list_left">���֤</div>
            <?php if ($this->_tpl_vars['resume']['idcard_status'] == 1): ?>
            <div class="Binding_list_text" style="width:400px;">����֤</div>
            <div class="Binding_oper" style="width:170px; "><a  href="javascript:look('���֤չʾ','<?php echo $this->_tpl_vars['resume']['idcard_pic']; ?>
');" class="Binding_submit_qx">�鿴���֤</a>
            <a  href="javascript:void(0);" class="Binding_submit_qx">����֤</a></div>
            <?php else: ?>
                <?php if ($this->_tpl_vars['resume']['idcard_pic'] != ""): ?>
                    <?php if ($this->_tpl_vars['resume']['idcard_status'] == 2): ?>
                    <div class="Binding_list_text">���δͨ�� ԭ��<?php echo $this->_tpl_vars['resume']['statusbody']; ?>
</div>
                    <div class="Binding_oper"><a  href="javascript:getyyzz('�ϴ����֤');" class="Binding_submit_rz">�����ϴ�</a></div>
                    <?php else: ?>
                    <div class="Binding_list_text">���֤���ϴ�����ȴ�����Ա���</div>
                    <div class="Binding_oper"><a  href="javascript:getyyzz('�ϴ����֤');" class="Binding_submit_rz">�����ϴ�</a></div>
                    <?php endif; ?>
                <?php else: ?>
                <div class="Binding_list_text">��ǰδ�ϴ����֤</div>
                <div class="Binding_oper"><a  href="javascript:getyyzz('�ϴ����֤');" class="Binding_submit_rz">δ��֤</a></div>
                <?php endif; ?>
            <?php endif; ?>
          </div>
          
        </div>
      </div>
    </div> 
<!--�����䵯����-->
<div id="email" style="display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff">
<div class="Binding_pop_box_msg">�޸ĺ�����佫��Ϊ�µĵ�¼�˺�</div>
<div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>�µ����䣺</span>
<input type="text" name="email" class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>��֤�룺</span>
<input type="text" name="email_code" class="Binding_pop_box_list_text">
<img id="vcode_img" src="../include/authcode.inc.php" style=" margin:0 5px 5px 5px; vertical-align:middle;"><a href="javascript:check_code();">������</a></div>
<div class="Binding_pop_sub" style="margin-top:10px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class=" com_pop_bth" type="button" onclick="check_email();" value="������֤����">
<input class=" com_pop_bth_qx" type="button" value="ȡ��" onclick="layer.closeAll();">
</div>
</div>
</div>
</div>
<!--������ end-->

<!--���ֻ�������-->
<div id="moblie" style=" display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff;">
<div class="Binding_pop_box_msg">����ɺ�������ʹ�ø��ֻ������¼�˺š��һ�����</div>
<div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>�ֻ����룺</span>
<input type="text" name="moblie" class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>������֤�룺</span>
<input type="text" id="moblie_code" class="Binding_pop_box_list_text" style="width:90px;">
<a href="javascript:;" onclick="sendmoblie();" class="Binding_pop_bth" id="time">��ѷ�����֤��</a></div>
<div class="Binding_pop_sub" style="margin-top:10px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class="com_pop_bth_qd" onclick="check_moblie();" type="button" value="����">
<input class="com_pop_bth_qx" type="button" value="ȡ��" onclick="layer.closeAll();">
</div>
</div>
</div>
</div>
<!--������ end-->
<!--Ӫҵִ�յ�����-->
<div id="yyzz" style=" display:none;">
<div class="Binding_pop_box" style="padding:10px;width:480px;height:200px; background:#fff;">
<div class="Binding_pop_box_msg">���֤��֤�������ڸ��õ�ӦƸ����</div>
<div>
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
<form name="MyForm" target="supportiframe" method="post" action="index.php?c=binding&act=save" enctype="multipart/form-data"  onsubmit="return check_user_cert();">
<div class="Binding_pop_box_list"><span class="Binding_pop_box_list_left"><i class="Binding_pop_box_list_left_i">*</i>���֤��</span>
<input type="file" name="pic" id="user_cert_pic"  class="Binding_pop_box_list_text Binding_pop_box_list_textw200"></div>
<div class="Binding_pop_sub" style="margin-top:20px;">
<span class="Binding_pop_box_list_left">&nbsp;</span>
<input class="com_pop_bth_qd" name="upfile" type="submit" value="����">
<input class="com_pop_bth_qx" type="button" value="ȡ��" onclick="layer.closeAll();">
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
<!--������ end-->
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