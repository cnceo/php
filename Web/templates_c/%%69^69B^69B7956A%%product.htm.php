<?php /* Smarty version 2.6.26, created on 2015-06-15 16:33:34
         compiled from member/com/product.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'curl', 'member/com/product.htm', 33, false),array('modifier', 'date_format', 'member/com/product.htm', 34, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="page-container"> <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
    <div class="page-content">
    <div class='right_box'>
      <div class=admincont_box>
        <div class=admin_tit><span class="admin_tit_bg">企业产品管理</span>  
			<form action="index.php" method="get">
				<div class="news_search">
				  <input name="c" type="hidden" value="product">
				 <input name="keyword" type="text"class="news_text" placeholder="请输入产品关键字">
					<input name="" type="submit" class="news_bth" value=" ">
				</div>
			  </form>
			<input  class="job_new_tj" style="float:right;margin-right:10px" onclick="location.href='index.php?c=product&act=add'" type="button" value="添加产品" >
          </div>
        <div class="admin_textbox_04">
          <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
          <form action="index.php" method="get" target="supportiframe" id='myform'>
            <input type="hidden" name="c" value="product" />
            <input type="hidden" name="act" value="del" />
            <div class=table>
                 <div id="job_checkbokid">
              <div class="job_news_list job_news_list_h1">
                <span class="job_news_list_span job_w30">&nbsp;</span>
                  <span class="job_news_list_span job_w400" style="width:300px;">产品名称</span>
                  <span class="job_news_list_span job_w120">添加时间</span>
                  <span class="job_news_list_span job_w80" style="width:180px;">状态</span>
                 <span class="job_news_list_span job_w120">操作</span>
              </div>
                <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job']):
?>
                <div class="job_news_list">
               <span class="job_news_list_span job_w30"><input class="job_news_input" type='checkbox' name="delid[]" value="<?php echo $this->_tpl_vars['job']['id']; ?>
" style="border:0px;"></span>
                 <span class="job_news_list_span job_w400"style="width:300px;"><a href="<?php echo smarty_function_curl(array('url' => "id:".($this->_tpl_vars['cookie']['uid']).",tp:productshow,pid:".($this->_tpl_vars['job']['id'])), $this);?>
" target="_blank"><?php echo $this->_tpl_vars['job']['title']; ?>
</a></span>
                  <span class="job_news_list_span job_w120"><?php echo ((is_array($_tmp=$this->_tpl_vars['job']['ctime'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</span>
                 <span class="job_news_list_span job_w80" style="width:180px;"><?php if ($this->_tpl_vars['job']['status'] == '0'): ?> <span class="wate_verify">等待审核</span><?php endif; ?>
                    <?php if ($this->_tpl_vars['job']['status'] == '1'): ?> <span class="y_verify">已审核</span><?php endif; ?>
                    <?php if ($this->_tpl_vars['job']['status'] == '2'): ?> <span class="n_verify">未通过</span> | <a href="javascript:;" class="looklist" onclick="show_msg('<?php echo $this->_tpl_vars['job']['statusbody']; ?>
')" style="display:inline">查看原因</a><?php endif; ?> </span>
                <span class="job_news_list_span job_w120"><a href="<?php echo smarty_function_curl(array('url' => "id:".($this->_tpl_vars['cookie']['uid']).",tp:productshow,pid:".($this->_tpl_vars['job']['id'])), $this);?>
" target="_blank">预览</a> | <a href="<?php echo $this->_tpl_vars['now_url']; ?>
&act=edit&id=<?php echo $this->_tpl_vars['job']['id']; ?>
">修改</a> | <a href="javascript:void(0)" onclick="layer_del('确定要删除？', '<?php echo $this->_tpl_vars['now_url']; ?>
&act=del&id=<?php echo $this->_tpl_vars['job']['id']; ?>
')">删除</a></span>
                </div>
             
                <?php endforeach; else: ?>
                <?php if ($_GET['keyword'] != ""): ?>
            <div class="msg_no">没有搜索相关产品。</div>
                <?php else: ?>
                 <div class="msg_no">您还没有添加产品。</div>
                <?php endif; ?>
                <?php endif; unset($_from); ?>
                </div>
            </div> 
          
		  <?php if ($this->_tpl_vars['rows']): ?>
			<div class="fltL">
			<span class="fltL job_new_de"><input id='checkAll'  type="checkbox" onclick='m_checkAll(this.form)'> 全选</span>
			  <input class=btn_02 type="button" name="subdel" value="批量删除" onclick="return really('delid[]');"> 
			  </span> 
			</div>    
			  <div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
			  <?php endif; ?>
              </form>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
function show_msg(msg){
	$("#msgs").html(msg);
	$.layer({
		type : 1,
		title :'查看原因',
		offset: [($(window).height() - 300)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['400px','200px'],
		page : {dom :"#showmsg"}
	});
}
</script>
<div id="showmsg"  style="display:none; width: 400px;">
	<div>
    <div id="infobox">
		 <div class="admin_Operating_sh" style="padding:10px; ">
		<div class="admin_Operating_sh_h1" style="padding:5px;"><div style="height:80px;overflow:auto;" id="msgs"></div></div>
		<div class="admin_Operating_sub" style="margin-top:10px;"> 
          &nbsp;&nbsp;<input type="button" id="zxxCancelBtn" onClick="layer.closeAll();" class="cancel_btn" value='确认'></div>
		</div>
    </div>
  <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 