<?php /* Smarty version 2.6.26, created on 2015-06-15 20:14:31
         compiled from wap/member/com/job.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/job.htm', 16, false),array('modifier', 'date_format', 'wap/member/com/job.htm', 39, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/cheader.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">��ҵ��Ա����</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>
 
<div class="main_member_body">
<section class="wap_member">
<div class="wap_member_comp_h1" style="position:relative"><span>ְλ����</span>&nbsp;&nbsp;<em class="wap_member_comp_em" style="top:8px;"><a href="index.php?c=jobadd" style="width:80px;height:23px; line-height:23px; background:#F90;color:#fff; display:inline-block; text-align:center">����ְλ</a></em></div>
<div class="wap_member_Receive">
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div  class="wap_member_Receive_post">
<a href="<?php echo smarty_function_wapurl(array('m' => 'com','url' => "c:view&,id:".($this->_tpl_vars['v']['id'])), $this);?>
" class="wap_m_post_col"><?php echo $this->_tpl_vars['v']['name']; ?>
</a>
<aside>
<?php if ($this->_tpl_vars['v']['edate'] < time ( )): ?>
�ѹ���
<?php elseif ($this->_tpl_vars['v']['state'] == 1): ?>
�����
<?php elseif ($this->_tpl_vars['v']['state'] == 3): ?>
δͨ��
<?php elseif ($this->_tpl_vars['v']['state'] == 0): ?>
<em>δ���</em>
<?php endif; ?>
 / 
<?php if ($this->_tpl_vars['v']['status'] == 2): ?>
<a href="index.php?c=job&status=1&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">��ͣ</a>
<?php else: ?>
<a href="index.php?c=job&status=2&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">������</a>
<?php endif; ?>
/
<a href="index.php?c=jobadd&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">�޸�</a>
/
<a href="javascript:isdel('index.php?c=jobdel&id=<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a>
</aside>
<span>�������<?php echo $this->_tpl_vars['v']['jobhits']; ?>
 </span>
<i><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</i>
</div>
<?php endforeach; else: ?>
<div class="wap_member_no">����ʱ��û��ְλ</div>
<?php endif; unset($_from); ?>
<div class="pages" style="margin-top:10px;"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
</div>
<!--û��ְλ��ʾ-->
</section>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 