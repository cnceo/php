<?php /* Smarty version 2.6.26, created on 2015-06-15 17:14:47
         compiled from wap/tiny_show.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/tiny_show.htm', 16, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">΢����</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
<section>
<div class="user_contnet mt10">
<div class="user_contnet_box ">
<div class="com_show_t1"><h2><?php echo $this->_tpl_vars['row']['username']; ?>
</h2></div>
<div class="com_show_t2">����ְλ��<?php echo $this->_tpl_vars['row']['job']; ?>
<span class="com_show_l" style="top:6px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['row']['time'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</span></div>

</div>
</div>
</section>

<section>
<div class="user_contnet">
<div class="user_contnet_box ">
<div class="wap_title"><span class="">������Ϣ</span></div>
<ul class="user_contnet_ul"> 
<li class="com_show_li"><span class="user_contnet_info_n">�������飺</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['exp']]; ?>
</li>
<li class="com_show_li"><span class="user_contnet_info_n">��ϵQ Q��</span><?php echo $this->_tpl_vars['row']['qq']; ?>
</li>
<li class="com_show_li"><span class="user_contnet_info_n">��ϵ�绰��</span><?php echo $this->_tpl_vars['row']['mobile']; ?>
</li>
</ul>
</div>
</div>
</section>
<section>
<div class="user_contnet">
<div class="user_contnet_box ">
<div class="wap_title"><span class="">���ҽ���</span></div>
<?php echo $this->_tpl_vars['row']['production']; ?>

</div>
</div>
</section>

<section>
<div class="user_contnet">
<div class="user_contnet_box ">
<div class="wap_title"><span class="">������Ϣ</span></div>
  <div class="tiny_tag">ֻ�з����߱��˲ſ��Բ���</div>
    <div style="width:100%; text-align:center">
        <a href="javascript:;" onclick="checkshowjob('tiny');$('#tinyid').val('<?php echo $this->_tpl_vars['row']['id']; ?>
');$('#tiny_password').val('')" class="tiny_cz">�޸�</a>
    </div>
</div>
</div>
</section>

 
</div>
<!--�޸���д����-->
<div class="tiny_show_tckbox" style="position:absolute;left:50%;bottom:220px; margin-left:-85px; z-index:10000;display:none;" id="tinylist">
    <div class="tiny_show_tckbox_h1"><span>�޸���д����</span><i class="fa fa-times tiny_show_tckbox_h1_icon "></i></div>
    <div class="tiny_show_tckbox_cont">
        <div class="tiny_show_tckbox_cont_p">���������ʱ������</div>
        <div class="tiny_show_tckbox_p"><input type="password" value="" id="tiny_password" class="tiny_show_tckbox_text"></div>
        <div class="tiny_show_tckbox_bth">
            <input type="submit" value="ȷ��" class="tiny_show_tckbox_bth1" onclick="checkTinyPassword($('#tinyid').val());" />
            <input type="submit" value="ȡ��" class="tiny_show_tckbox_bth2" onclick="layer.closeAll();" />
            <input type="hidden" value="" name="operation_type" id="operation_type" />
            <input type="hidden" value="" name="tinyid" id="tinyid" />
        </div>
    </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>