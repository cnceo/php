<?php /* Smarty version 2.6.26, created on 2015-07-28 14:57:05
         compiled from member/user/xin.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/user/xin.htm', 31, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="w950"> <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
  <div class="mian_right fltR mt12 " style=" position:relative">
    <div class="tabmenubox01 mt9">
      <ul>
     	 <li><a href="index.php?c=sysnews">ϵͳ��Ϣ</a></li>
        <li><a href="index.php?c=commsg">��ְ��ѯ</a> </li>
        <li><a href="index.php?c=message">���Է���</a></li>
        <li><a href="index.php?c=seemessage">�����б�</a></li>
        <li class="cur"><a href="index.php?c=xin">վ����</a> </li>
      </ul>
    </div> 
    <div id="">
      <div id="gms_showclew"></div>
      <div class="resumelistbox01 mt10">
        <div id=""class="resume_box_list">
          <table width="690" border="0" cellspacing="1" cellpadding="0" class="resume">
            <tr>
              <th width="8%">������</th>
              <th width="10%">�ռ���</th>
              <th width="15%">����</th>
              <th width="10%">ʱ��</th>
              <th width="6%">״̬</th>
              <th width="6%">ɾ��</th>
            </tr>
            <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
            <tr>
              <td width="8%"><?php echo $this->_tpl_vars['v']['nickname']; ?>
</td>
              <td width="10%"><?php echo $this->_tpl_vars['v']['name']; ?>
</td>
              <td width="15%"><?php echo $this->_tpl_vars['v']['content']; ?>
</td>
              <td width="20%"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['ctime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
</td>
              <td width="6%"> <?php if ($this->_tpl_vars['v']['uid'] == $this->_tpl_vars['uid']): ?>--<?php else: ?><span onclick="reply_xin('<?php echo $this->_tpl_vars['v']['uid']; ?>
','<?php echo $this->_tpl_vars['v']['nickname']; ?>
','<?php echo $this->_tpl_vars['v']['content']; ?>
');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/editico.gif" title="�ظ�" alt="�ظ�" style="cursor:pointer"></span><?php endif; ?> </td>
              <td width="6%"><?php if ($this->_tpl_vars['v']['uid'] == $this->_tpl_vars['uid']): ?><a href="javascript:void(0)" onclick="layer_del('ȷ��Ҫɾ����', 'index.php?c=xin&act=del&id=<?php echo $this->_tpl_vars['v']['id']; ?>
');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/com_sc.jpg" alt="ɾ��" title="ɾ��" /></a><?php else: ?><a href="javascript:void(0)" onclick="layer_del('ȷ��Ҫɾ����','index.php?c=xin&act=del&did=<?php echo $this->_tpl_vars['v']['id']; ?>
');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/com_sc.jpg" alt="ɾ��" title="ɾ��" /></a><?php endif; ?></td>
            </tr>
            <?php endforeach; else: ?>
            <tr>
              <td colspan="6">����վ���ţ�</td>
            </tr>
            <?php endif; unset($_from); ?>
          </table>
          <div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="reply" style=" display:none;" class="reply_hf_ly">
  <div style="text-align:center"> 
  <div class="Reply_cont_name" id="wnc"><font color="#0066FF">������С��</font> �������ԣ�<div>dd</div></div>
  <iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
  <form action="index.php?c=xin&act=reply" target="supportiframe" method="post" onsubmit="return check_xin();">
	<input type="hidden" id="fid" name="fid" value="" />
	<textarea cols="60" rows="5" name="content" id="content" class="textarea_Reply_cont"></textarea>
	<div style="text-align:center"><input type="submit" name="submit" value="�ύ" class="Reply_cont_submit"/></div>
  </form> 
  </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>