<?php /* Smarty version 2.6.26, created on 2015-07-28 14:57:03
         compiled from member/user/sysnews.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/user/sysnews.htm', 24, false),)), $this); ?>
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
  <div class="mian_right fltR mt12">
    <div class="tabmenubox01 mt9">
      <ul>
      	<li class="cur"><a href="index.php?c=sysnews">系统消息</a></li>
        <li><a href="index.php?c=commsg">求职咨询</a> </li>
        <li><a href="index.php?c=message">留言反馈</a></li>
        <li><a href="index.php?c=seemessage">反馈列表</a></li>
        <li><a href="index.php?c=xin">站内信</a> </li>
      </ul>
    </div>
    <div >
      <div id="gms_showclew"></div>
      <div class="resume_box_list">
        <div class="List_Ope List_Title "> 
        <span class="List_Title_span List_Title_w60">ID </span> 
        <span class="List_Title_span List_Title_w360">内容</span> 
        <span class="List_Title_span List_Title_w170">时间</span> 
        <span class="List_Title_span List_Title_w100">操作</span> </div>
        <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
        <div class="List_Ope List_Ope_bor"> <span class="List_Title_span List_Title_w60"><?php echo $this->_tpl_vars['item']['id']; ?>
</span> 
        <span class="List_Title_span List_Title_w360"><?php echo $this->_tpl_vars['item']['content']; ?>
</span> 
        <span class="List_Title_span List_Title_w170"><?php echo ((is_array($_tmp=$this->_tpl_vars['item']['ctime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M")); ?>
</span> 
        <span class="List_Title_span List_Title_w100"><a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=sysnews&act=del&id=<?php echo $this->_tpl_vars['item']['id']; ?>
');" class="List_dete">删除</a></span> 
		 </div>
        <?php endforeach; else: ?>
        <div class="msg_no"> 暂无系统消息！ </div>
        <?php endif; unset($_from); ?>
        <div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
      </div>
    </div>
  </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>