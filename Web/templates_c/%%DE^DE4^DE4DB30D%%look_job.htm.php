<?php /* Smarty version 2.6.26, created on 2015-06-15 20:14:57
         compiled from wap/member/com/look_job.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/look_job.htm', 19, false),array('modifier', 'date_format', 'wap/member/com/look_job.htm', 22, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/cheader.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">企业会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>
 
<div class="main_member_body">

<section class="wap_member">
<div class="wap_member_comp_h1"><span>谁看过我</span></div>
<div class="wap_member_Receive">
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
<div class="wap_member_Receive_list">
			  <span class="job_news_list_span job_w30"><input type='checkbox' name="delid[]" value="<?php echo $this->_tpl_vars['v']['id']; ?>
" style="border:0px;"></span>
			  <span class="job_news_list_span job_w160"><?php echo $this->_tpl_vars['v']['jobname']; ?>
</span>
			  <span class="job_news_list_span job_w90"><a href="<?php echo smarty_function_wapurl(array('m' => 'resume','url' => "uid:".($this->_tpl_vars['v']['uid'])), $this);?>
" target="_blank">&nbsp;<?php echo $this->_tpl_vars['v']['name']; ?>
</a></span>
			  <span class="job_news_list_span job_w50">&nbsp;<?php echo $this->_tpl_vars['v']['edu']; ?>
</span>
				<span class="job_news_list_span job_w80">&nbsp;<?php echo $this->_tpl_vars['v']['exp']; ?>
</span>
			  <span class="job_news_list_span job_w100" style="width:160px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M')); ?>
</span>
			  <span class="job_news_list_span job_w155">
                <?php if ($this->_tpl_vars['v']['userid_msg'] == 1): ?>
                <font color="red">已邀请</font>
                <?php else: ?>
                  <a href="javascript:;" uid="<?php echo $this->_tpl_vars['v']['uid']; ?>
" username="<?php echo $this->_tpl_vars['v']['name']; ?>
" class="sq_resume" style="position:relative; "> 邀请面试</a>
                  <?php endif; ?> 
                  &nbsp;|&nbsp;<a href="javascript:void(0)" onclick="isdel( '<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=look_job_del&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a></span>

</div>

<?php endforeach; else: ?>
<div class="wap_member_no">您暂时还没有被浏览的职位</div>
<?php endif; unset($_from); ?>


 <script language="javascript" type="text/javascript">
function talent_pool(uid,eid)
{
	$.post(weburl+"/index.php?m=ajax&c=talent_pool",{eid:eid,uid:uid},function(data){
		if(data=='0'){
			layermsg('只有企业用户，才可以操作！');
		}else if(data=='1'){
			layermsg('加入成功！');
		}else if(data=='2'){
			layermsg('该简历已加入到人才库！');
		}else{
			layermsg('对不起，操作出错！');
		}
	});
}
</script>

</div>
<!--没有职位提示-->
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