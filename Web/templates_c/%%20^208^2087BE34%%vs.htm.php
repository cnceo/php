<?php /* Smarty version 2.6.26, created on 2015-06-15 19:32:20
         compiled from member/com/vs.htm */ ?>
 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="page-container">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
 
<div class="page-content">
    <div class='right_box'>
<div class=admincont_box>
<div class=admin_tit><span class="admin_tit_bg">��ȫ����</span></div>
<div class=admin_note2>

<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe> 
<form name="MyForm"  target="supportiframe" action='index.php?c=vs&act=save' method="post" onkeydown="if(event.keyCode==13){return false;}">
<div class="admin_password"><span class="text_s_left">ԭʼ���룺</span><input type="password" id="oldpassword" name="oldpassword" class="com_info_text"/><span id="msg_oldpassword"  class="vs_right_span">��д����ԭʼ���룡</span></div>
<div class="admin_password"><span class="text_s_left">�ܡ����룺</span><input type="password" id="password" name="password" class="com_info_text"/><span id="msg_password"  class="vs_right_span">�������ʽΪ 6-20���ַ���</span> </div>
<div class="admin_password"><span class="text_s_left">ȷ�����룺</span><input type="password" id="repassword" name="repassword" class="com_info_text"/><span id="msg_repassword"  class="vs_right_span">���ٴ�ȷ�����������룡</span></div>
<div class="admin_password"><span class="text_s_left">&nbsp;</span><input type="hidden" value="2" name="usertype" />
<input type="submit" name="submit" class="btn_01" value="��������" onclick="return Showsub1();" ></div>
</form>
</div> 
</div>
</div>  
</div> 
</div> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>