<?php /* Smarty version 2.6.26, created on 2015-06-15 18:19:36
         compiled from wap/member/user/index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/user/index.htm', 43, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">���˻�Ա����</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header> 
<div class="main_member_body"> 
<div class="index_header">
  <div class="user_header_img">
    <div class="user_header_bg"><img src="http://www.hr135.com/data/logo/20141210/14204024737.JPG" border="0" onerror="showImgDelay(this,'http://www.hr135.com/data/logo/20141210/14204024737.JPG',2);"></div>
  </div>
  <div class="member_header_info">
    <div class="m_user_name"><?php echo $this->_tpl_vars['username']; ?>
 <a href="index.php?c=addresume" class="m_infor_bj"><i class="m_icon_bj fa fa-pencil-square-o"></i>�༭</a></div>
    
  </div>
</div>
<section>
  <div class="m_index_msg">
    <dl class="m_index_msg_list">
      <a href="index.php?c=invite">
      <dt><?php echo $this->_tpl_vars['yqnum']; ?>
</dt>
      <dd>��������</dd>
      </a>
    </dl>
    <dl class="m_index_msg_list">
      <a href="index.php?c=sq">
      <dt><?php echo $this->_tpl_vars['statis']['sq_jobnum']; ?>
</dt>
      <dd>�����¼</dd>
      </a>
    </dl>
    <dl class="m_index_msg_list">
      <a href="index.php?c=collect">
      <dt><?php echo $this->_tpl_vars['statis']['fav_jobnum']; ?>
</dt>
      <dd>�ղؼ�¼</dd>
      </a>
    </dl>
  </div>
</section>
<section class="wap_member">
  <div class="wap_member_mrecord wap_member_mrecord_mt5"> <a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
" class="wap_member_mrecord_list" style="border:none"><i class="m_icon  fa fa-briefcase"></i>�ҹ���</a> </div>
</section>
<section class="wap_member">
  <div class="wap_member_mrecord">
     <a href="index.php?c=addresume" class="wap_member_mrecord_list"><i class="m_icon  fa fa-file-text"></i>��������</a>
   <a href="index.php?c=resume" class="wap_member_mrecord_list"><i class="m_icon  fa fa-graduation-cap"></i>��������</a> <a href="index.php?c=invite" class="wap_member_mrecord_list"><i class="m_icon  fa fa-fax"></i>��������</a> <a href="index.php?c=look" class="wap_member_mrecord_list"><i class="m_icon  fa fa-eye"></i>˭�����ҵļ���</a> </div>
</section>
<section class="wap_member">
  <div class="wap_member_mrecord"> <a href="index.php?c=sq" class="wap_member_mrecord_list"><i class="m_icon  fa fa-bell"></i>�����ְλ</a> <a href="index.php?c=collect" class="wap_member_mrecord_list"><i class="m_icon  fa fa-star"></i>�ղص�ְλ</a><!-- <a href="index.php?c=job_search" class="wap_member_mrecord_list"><i class="m_icon  fa fa-search"></i>ְλ������</a>--><!-- <a href="index.php?c=subscribe" class="wap_member_mrecord_list"><i class="m_icon  fa fa-envelope"></i>ְλ����</a>--> <a href="index.php?c=look_job" class="wap_member_mrecord_list"><i class="m_icon  fa fa-paw"></i>���������ְλ</a> </div>
</section>
<section class="wap_member">
  <div class="wap_member_mrecord"> <a href="index.php?c=password" class="wap_member_mrecord_list "><i class="m_icon  fa fa-unlock-alt"></i>��������</a> <a href="javascript:;" onclick="islogout('http://www.hr135.com/wap/index.php?c=loginout','ȷ���˳���');" class="wap_member_mrecord_list" style="border:none"><i class="m_icon fa fa-power-off"></i>�˳���¼</a> </div>
</section>

<!--<div class="wap_member_Searcher">
<a href="index.php?c=sq" class="wap_member_Searcher_sq wap_member_Searcher_sq_line"><span>ְλ�����¼<i>3</i></span></a>
<a href="index.php?c=collect"class="wap_member_Searcher_sq"><span>ְλ�ղؼ�<i class="wap_member_Searcher_sc">0</i></span></a>
</div>
<div class="wap_member_mrecord">
<a href="index.php?c=addresume" class="wap_member_mrecord_list">��������</a>
<a href="index.php?c=resume" class="wap_member_mrecord_list">����������<em>1</em>�ݣ�</a>
<a href="index.php?c=invite" class="wap_member_mrecord_list">�������루<em>0</em>����</a>
<a href="index.php?c=look" class="wap_member_mrecord_list">˭�����ҵļ�����<em>0</em>����</a>
<a href="index.php?c=look_job" class="wap_member_mrecord_list">�ҿ���˭��<em>5</em>����</a>
<a href="index.php?c=password" class="wap_member_mrecord_list wap_member_mrecord_list_no">��������</a>
</div>

</section>
</div>--> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 