<?php /* Smarty version 2.6.26, created on 2015-06-15 19:22:18
         compiled from wap/member/user/resume.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/member/user/resume.htm', 24, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">个人会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header> 
<div class="main_member_body">  
 <div class="wap_member_comp_h1"><span>我的简历</span></div>
<script>
function checkdef(eid){
	$.post("index.php?c=resume",{type:"def_job",eid:eid},function(data){ 
	})
}
</script>
<div class="rsm_box" style="padding:0px 10px 10px ;">
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['resume']):
?>
<div class="rsm_list">
<div class="rsm_top">
<a href="http://www.hr135.com/wap/index.php?c=resume&a=show&id=2024">
<div class="rsm_name">王工的简历</div>
<div class=""><span class="rsm_name_s">刷新：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['resume']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>


</div>
</a>
</div>
<div class="rsm_cz">
<dl onclick="index.php?c=resume&update=<?php echo $this->_tpl_vars['resume']['id']; ?>
">
<dt><i class="rsg_cion fa fa-refresh"></i></dt>
<dd>刷新</dd> 
</dl>
<dl>

<a href="index.php?c=addresume&eid=<?php echo $this->_tpl_vars['resume']['id']; ?>
" class="wap_member_msg_jl_sc"><dt><i class="rsg_cion fa fa-pencil-square-o"></i></dt>
<dd>修改</dd></a>
</dl>

<dl>
<dt><i class="rsg_cion rsg_cion_mr fa fa-check-square-o"></i></dt>
<dd><input type="radio" name="def" value="<?php echo $this->_tpl_vars['resume']['id']; ?>
" onclick="checkdef('<?php echo $this->_tpl_vars['resume']['id']; ?>
');" <?php if ($this->_tpl_vars['def_job']['def_job'] == $this->_tpl_vars['resume']['id']): ?> checked<?php endif; ?> id='checkdef'/>默认简历</dd>
</dl>
<!--<dl>
<dt><i class="rsg_cion fa fa-eye rsg_cion_mr"></i></dt>
<dd>公开</dd>
<div class="rfop"> 
    <select>
		<option onclick="layer_del('','index.php?c=resumeset&open=2024&type=1');">公开</option>
        <option onclick="layer_del('','index.php?c=resumeset&open=2024');">隐藏</option>
    </select> 
</div>
</dl>-->
<dl onclick="javascript:isdel('index.php?c=resume&del=<?php echo $this->_tpl_vars['resume']['id']; ?>
;">
<dt><i class="rsg_cion fa fa-trash-o"></i></dt>
<dd>删除</dd>
</dl>
</div>
</div>
 <?php endforeach; endif; unset($_from); ?>
 <div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
 
<div class="mt10"><a href="index.php?c=addresume" class="rsm_cj">创建简历</a></div>
</div>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>