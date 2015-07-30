<?php /* Smarty version 2.6.26, created on 2015-07-28 14:57:00
         compiled from member/user/message.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="w950">   
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="mian_right fltR mt12">
  <div class="tabmenubox01 mt9">
    <ul>
      <li><a href="index.php?c=sysnews">系统消息</a></li>
      <li><a href="index.php?c=commsg">求职咨询</a> </li>
      <li class="cur"><a href="index.php?c=message">留言反馈</a></li>
      <li><a href="index.php?c=seemessage">留言列表</a></li>
      <li><a href="index.php?c=xin">站内信</a> </li>
    </ul>
  </div>
  <div class="message_content">
    <div id="">
      <iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
      <FORM name="MyForm" onsubmit="return Showsub();"  target="supportiframe" action='' method="post" >
        <div class="remindbox01 mt10">
          <ul class="message_box">
            <li><span>反馈内容：</span>
              <textarea id="content" name="content" cols="60" rows="6" class="message_box_text"></textarea>
            </li>
            <li> <span >&nbsp;</span>
              <input type="submit" name="add_message" class="inputbtn01" value="发送">
            </li>
          </ul>
        </div>
      </form>
    </div>
  </div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>