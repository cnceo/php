<?php /* Smarty version 2.6.26, created on 2015-06-15 20:14:48
         compiled from wap/member/com/invite.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/member/com/invite.htm', 24, false),)), $this); ?>
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
<div class="wap_member_comp_h1"><span>已邀请面试的简历</span></div>
<div class="wap_member_Receive">
<!--			<form id="myform" action="<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=invite_del" method="post">-->
                <?php if (! empty ( $this->_tpl_vars['rows'] )): ?>
                <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job']):
?>
                <div class="wap_member_Receive_list">
                <?php $this->assign('uid', $this->_tpl_vars['job']['uid']); ?>
                  <span class="job_news_list_span job_w30"><input type=checkbox name="delid[]" value="<?php echo $this->_tpl_vars['job']['id']; ?>
"></span>

                  <span class="job_news_list_span job_w160"><?php echo $this->_tpl_vars['job']['jobname']; ?>
</span><br>
                
                  <span class="job_news_list_span job_w100"><a href="../index.php?m=user&c=show&uid=<?php echo $this->_tpl_vars['uid']; ?>
" target="_blank">查看简历</a> | </span>
                  <span class="job_news_list_span job_w155"><a href="javascript:void(0)" onclick="isdel( '<?php echo $this->_tpl_vars['config_wapdomain']; ?>
/member/index.php?c=invite_del&id=<?php echo $this->_tpl_vars['job']['id']; ?>
')">删除</a></span>  <span class="job_news_list_span job_w100"><?php echo ((is_array($_tmp=$this->_tpl_vars['job']['datetime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</span>
                 </div> 
                <?php endforeach; endif; unset($_from); ?>       
				<div class="wap_member_Receive_list"> 
<!--				<div class="fltL">
				  <span class="fltL job_new_de">  <input id='checkAll'  type="checkbox" onclick='m_checkAll(this.form)'> 全选</span>
					 <INPUT  class="job_new_tj" type="button" name="subdel" value="批量删除" onclick="return really('delid[]');">
				 </div> -->
				<div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
				</div>
                <?php elseif ($_GET['keyword'] != ""): ?>
                 <div class="wap_member_no">没有搜索邀请记录。</div>
                <?php else: ?>
                 <div class="wap_member_no">您还没有邀请记录。</div>
                <?php endif; ?> 
<!--          </form>-->
        </div>
      </div>
    </div>
  </div>
</div>
</div></div>
</div>
</section>

                
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
         
<div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 