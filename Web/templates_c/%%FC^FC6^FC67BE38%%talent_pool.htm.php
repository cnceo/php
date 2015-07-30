<?php /* Smarty version 2.6.26, created on 2015-06-15 20:34:28
         compiled from wap/member/com/talent_pool.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/member/com/talent_pool.htm', 19, false),array('modifier', 'date_format', 'wap/member/com/talent_pool.htm', 22, false),)), $this); ?>
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
<div class="wap_member_comp_h1"><span>人才库管理</span></div>
<div class="wap_member_Receive">
<?php if (! empty ( $this->_tpl_vars['rows'] )): ?>
<?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>


<div class="wap_member_msg ">
	<a href="<?php echo smarty_function_wapurl(array('url' => "m:user,c:show,id:".($this->_tpl_vars['v']['eid'])), $this);?>
"  class=" com_member_hr_cblue"><?php echo $this->_tpl_vars['v']['name']; ?>
</a> / 男
	<div class="com_member_hr_p1"><span class="member_c9">意向职位：<?php echo $this->_tpl_vars['v']['jobname']; ?>
</span></div>
   
   <i><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['ctime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</i> 
	<em class="user_size">
		<a href="javascript:void(0)" onclick="isdel('<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=talent_pool_del&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')"class="wap_member_msg_date">删除</a>
		 <?php if ($this->_tpl_vars['v']['userid_msg'] == 1): ?>
		 <font color="red">已邀请</font>
		 <?php else: ?>
		  <a href="javascript:;" uid="<?php echo $this->_tpl_vars['v']['uid']; ?>
" username="<?php echo $this->_tpl_vars['v']['name']; ?>
"  class="wap_member_msg_yq"  style="position:relative; "> 邀请面试</a>
		 <?php endif; ?> 		
		 
	 </em> 
</div>


 
<?php endforeach; endif; unset($_from); ?>

<div class="wap_member_Receive_list">
<!--					<div class="fltL">
						<span class="fltL job_new_de"> <input id='checkAll'  type="checkbox" onclick='m_checkAll(this.form)'> 全选</span>
						<INPUT class="job_new_tj" type="button" name="subdel" value="批量删除" onclick="return really('delid[]');">
					</div>-->
<!--					<div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>-->
				</div>
                <?php elseif ($_GET['keyword'] != ""): ?>  
                 <div class="wap_member_no">没有搜索收藏记录。   </div>

                <?php else: ?>
                 <div class="wap_member_no">您还没有收藏记录。   </div>
                <?php endif; ?>

</div>
<!--没有职位提示-->
</section>
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
<div class="clear"></div>
          <div class="infoboxp22" id="remarkbox" style="display:none;float:left; z-index:100; position:absolute; background-color:#C30;">
            <div>
              <form action="index.php?c=talent_pool_remark" method="post">
                <input name="id" value="0" type="hidden">
                  <div class="jb_infobox" style="width: 100%;">
                  <textarea id="remark"style="width:310px;margin:5px" name="remark" class="hr_textarea"></textarea></div>
                <div class="jb_infobox" style="width: 100%;">
                  <button type="submit" name='submit' value='1' class="submit_btn" style="margin-left:80px;">确认</button>
                  &nbsp;&nbsp;
                  <button type="button" id='zxxCancelBtn'  class="cancel_btn">取消</button>
                </div>
              </form>
            </div>
          </div>
         
<script> 
function remark(id,remark){
	$("input[name=id]").val(id);
	$("#remarkbox").show();
	$("#remark").val(remark);
}
$(document).ready(function(){ 
	$('#zxxCancelBtn').click(function(){
		$("#remarkbox").hide();
	}); 
}); 
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
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 