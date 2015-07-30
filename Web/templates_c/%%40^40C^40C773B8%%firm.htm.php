<?php /* Smarty version 2.6.26, created on 2015-06-15 16:04:53
         compiled from wap/firm.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/firm.htm', 35, false),array('modifier', 'mb_substr', 'wap/firm.htm', 36, false),)), $this); ?>
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
       <div class="header_h1">公司搜索</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
<script src="http://www.hr135.com/app/template/wap/js/search.js" language="javascript"></script>
<div class="warp_content clear">
  <section>
    <form action="index.php" method="get">
      <input type="hidden" name="m" value="firm" />
      <div class="formFiled">
        <input type="text" value="<?php echo $_GET['keyword']; ?>
" name="keyword" class="input_search" placeholder="请输入关键字/职位/地点搜索">
        <input type="submit" value="搜索" class="input_btn">
		
		<input type="hidden" name="provinceid" id="provinceid" value="" />
        <input type="hidden" name="cityid" id="cityid" value="" />
        <input type="hidden" name="three_cityid" id="three_cityid" value="" />        
        <input type="hidden" name="citylevel" id="citylevel" value="2" />
		
		
      </div>
    </form>
  </section>

  <section>
    <div class="job_list_content">       
	     <?php $_from = $this->_tpl_vars['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['list']):
?>
	    <div class="job_list_box"> 
		<a href="<?php echo smarty_function_wapurl(array('url' => "m:firm,c:show,id:".($this->_tpl_vars['list']['uid'])), $this);?>
" class="job_list">
        <h3><?php echo ((is_array($_tmp=$this->_tpl_vars['list']['name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 12, 'gbk') : mb_substr($_tmp, 0, 12, 'gbk')); ?>
 </h3>
        <aside class="firm_qy_job"><?php echo $this->_tpl_vars['list']['job_city_one']; ?>
-<?php echo $this->_tpl_vars['list']['job_city_two']; ?>
</i></aside>
        <!--<aside class="firm_num">共 <font color="#FF6600">1</font> 个职位江苏-常州</aside>-->
        </a> 
		</div>
		<?php endforeach; endif; unset($_from); ?> 
  <?php if ($this->_tpl_vars['total'] <= 0): ?>
  <?php if ($_GET['keyword'] != ""): ?> 
  <div class="wap_member_no">没有搜索到企业</div>
  <?php else: ?>
  <div class="wap_member_no">暂无企业</div>
  <?php endif; ?>
  <?php else: ?>
  <div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
  <?php endif; ?>  
			
			
       </div>
  </section>
  


    <div> </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>