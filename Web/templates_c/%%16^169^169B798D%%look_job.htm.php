<?php /* Smarty version 2.6.26, created on 2015-07-28 16:13:17
         compiled from member/user/look_job.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'member/user/look_job.htm', 35, false),array('function', 'curl', 'member/user/look_job.htm', 36, false),array('modifier', 'date_format', 'member/user/look_job.htm', 42, false),)), $this); ?>
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
      <li > <a href="index.php?c=resume">�ҵļ���</a></li>
      <li> <a href="index.php?c=look">���������</a></li>
      <li class="cur"> <a href="index.php?c=look_job">�����ְλ</a></li>
      <li> <a href="index.php?c=privacy">��˽����</a></li>
    </ul>
  </div>
  <div class="remindbox01 mt10" >
    <div id="gms_showclew"></div>
    <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
    <form action="index.php" method="get" target="supportiframe" id='myform'>
    <input type="hidden" name="c" value="look_job" />
    <input type="hidden" name="act" value="del" />
    <div class="resumelistbox01 mt10">
      <div class="resume_box_list">
       <div class="List_Ope List_Title">
       <span class="List_Title_span List_Title_span_n">&nbsp;</span>
       <span class="List_Title_span List_Title_w60">ID </span>	
       <span class="List_Title_span List_Title_w230">ְλ����</span>	 	
       <span class="List_Title_span List_Title_w120">н�ʴ���</span>	
        <span class="List_Title_span List_Title_w100">�����ص�</span>	 	
       <span class="List_Title_span List_Title_w80">���ʱ��</span>	 	
       <span class="List_Title_span List_Title_w100">����</span>	
      </div> 
          <?php $_from = $this->_tpl_vars['look']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['log']):
?>
           <div class="List_Ope List_Ope_bor">
       <span class="List_Title_span List_Title_span_n"><input type=checkbox name="del[]" value="<?php echo $this->_tpl_vars['log']['id']; ?>
" class="List_Title_span_check"></span>
       <span class="List_Title_span List_Title_w60 mt10"><?php echo $this->_tpl_vars['log']['id']; ?>
&nbsp;</span>	
       <span class="List_Title_span List_Title_w230">
       <div class=""><a href="<?php echo smarty_function_url(array('m' => 'com','url' => "c:comapply,id:".($this->_tpl_vars['log']['jobid'])), $this);?>
" target="_blank" class="List_Title_span_com"><?php echo $this->_tpl_vars['log']['jobname']; ?>
</a> </div>
       <a href="<?php echo smarty_function_curl(array('url' => "id:".($this->_tpl_vars['log']['com_id'])), $this);?>
" target="_blank"><?php echo $this->_tpl_vars['log']['comname']; ?>
</A>&nbsp;
      
       </span>	
        	
       <span class="List_Title_span  List_Title_w120 mt10"><?php echo $this->_tpl_vars['log']['salary']; ?>
</span>	  
       <span class="List_Title_span List_Title_w100 mt10"><?php echo $this->_tpl_vars['log']['provinceid']; ?>
-<?php echo $this->_tpl_vars['log']['cityid']; ?>
</span>		
       <span class="List_Title_span List_Title_w80 mt10"><?php echo ((is_array($_tmp=$this->_tpl_vars['log']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</span>	 	
       <span class="List_Title_span List_Title_w100 mt10"><a href="javascript:void(0)"  onclick="layer_del('ȷ��Ҫɾ����','index.php?c=look_job&act=del&id=<?php echo $this->_tpl_vars['log']['id']; ?>
');" class="List_dete"> ɾ��</a></span>	
      </div>
         <?php endforeach; else: ?>  
          <div class="msg_no">
           ����û���������ְλ��
          </div>
          <?php endif; unset($_from); ?> 
		   <?php if ($this->_tpl_vars['look']): ?> 
		  <div class="List_Ope List_Ope_bg">
       <span class="List_Title_span List_Title_span_n"><input id='checkAll'  type="checkbox" onclick='m_checkAll(this.form)' class="List_Title_span_check_n mt5"></span><INPUT type="button" name="subdel" value="����ɾ��" onclick="return really('del[]');"class="Bulk_Delete">
      </div>
	  <div class="diggg" style="width:710px;"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
	  <?php endif; ?> 
      </div>
    </div>
    
    </form>
  </div>
</div>
</div> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 