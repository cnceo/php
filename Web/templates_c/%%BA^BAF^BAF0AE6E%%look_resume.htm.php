<?php /* Smarty version 2.6.26, created on 2015-06-15 20:14:52
         compiled from wap/member/com/look_resume.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/look_resume.htm', 19, false),array('modifier', 'date_format', 'wap/member/com/look_resume.htm', 23, false),)), $this); ?>
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
<div class="wap_member_comp_h1"><span>�ҿ���˭</span></div>
<div class="wap_member_Receive">
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div class="wap_member_Receive_list">

<span class="job_news_list_span job_w30"><input type='checkbox' name="delid[]" value="<?php echo $this->_tpl_vars['v']['id']; ?>
" style="border:0px;"></span>
                  <span class="job_news_list_span job_w160"><?php echo $this->_tpl_vars['v']['jobname']; ?>
</span>
                  <span class="job_news_list_span job_w90"><a href="<?php echo smarty_function_wapurl(array('url' => "m:user,c:show,id:".($this->_tpl_vars['v']['resume_id'])), $this);?>
" target="_blank">&nbsp;<?php echo $this->_tpl_vars['v']['name']; ?>
</a></span>
                  <span class="job_news_list_span job_w50">&nbsp;<?php echo $this->_tpl_vars['v']['sex']; ?>
</span>
                  <span class="job_news_list_span job_w100">&nbsp;<?php echo $this->_tpl_vars['v']['edu']; ?>
</span>
                    <span class="job_news_list_span job_w100">&nbsp;<?php echo $this->_tpl_vars['v']['exp']; ?>
</span>
                  <span class="job_news_list_span job_w100"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M')); ?>
</span>
                  <span class="job_news_list_span job_w100">
                <?php if ($this->_tpl_vars['v']['userid_msg'] == 1): ?>
                <font color="red">������</font>
                <?php else: ?>
                  <a href="javascript:;" uid="<?php echo $this->_tpl_vars['v']['uid']; ?>
" username="<?php echo $this->_tpl_vars['v']['name']; ?>
" class="sq_resume" style="position:relative; "> ��������</a>
                  <?php endif; ?> 
                  &nbsp;|&nbsp;<a href="javascript:void(0)" onclick="isdel('<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=look_resume_del&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">ɾ��</a></span>

</div>

<?php endforeach; else: ?>
<div class="wap_member_no">����ʱ��û����������˲�</div>
<?php endif; unset($_from); ?>

<div id='job_box' style="display:none;float:left; z-index:100; position:absolute; background-color:#C30;">
    <div class="city_1">
        <dl class="city_3">
          <dt>
			<span class="city_01">����ְλ��</span><select id='jobname'></select>
		  </dt>
        </dl>
		  <dl class="city_3">
          <dt>
			<span class="city_01">��ϵ�ˣ�</span><input size='5'  id='linkman' value=''>

			<span class="city_01">��ϵ�绰��</span><input size='10'  id='linktel' value=''>
		  </dt>
        </dl>
		 <dl class="city_3">
          <dt>
			<span class="city_01">����ʱ�䣺</span><input size='34' id='intertime' value=''>
		  </dt>
        </dl>
		 <dl class="city_3">
          <dt>
			<span class="city_01">���Ե�ַ��</span><input size='34' id='address' value=''>
		  </dt>
        </dl>
		<dl class="city_3"  >  
			<dt><span class="city_01">���Ա�ע��</span><textarea id="content" cols="40" rows="5" class="resyme_text"></textarea>
		</dl>
      <dl class="city_3" id="resume_job" style="height:40px;">
        <dt><span class="city_01">&nbsp;</span>
		<input type="hidden" id="uid" value="">
		<input type="hidden" id="username" value=""> 
		<input class="resume_sub_yq" id="click_invite" type="button" value="��������"  >
    </dl>
  </div>
 </div>
 <script language="javascript" type="text/javascript">
function talent_pool(uid,eid)
{
	$.post(weburl+"/index.php?m=ajax&c=talent_pool",{eid:eid,uid:uid},function(data){
		if(data=='0'){
			layermsg('ֻ����ҵ�û����ſ��Բ�����');
		}else if(data=='1'){
			layermsg('����ɹ���');
		}else if(data=='2'){
			layermsg('�ü����Ѽ��뵽�˲ſ⣡');
		}else{
			layermsg('�Բ��𣬲�������');
		}
	});
}

</script>

</div>
<!--û��ְλ��ʾ-->
</section>
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 