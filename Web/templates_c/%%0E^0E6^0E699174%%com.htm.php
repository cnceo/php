<?php /* Smarty version 2.6.26, created on 2015-06-15 15:51:31
         compiled from wap/com.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/com.htm', 31, false),array('modifier', 'mb_substr', 'wap/com.htm', 33, false),)), $this); ?>
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
       <div class="header_h1">职位搜索</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 <script src="http://www.hr135.com/app/template/wap/js/search.js" language="javascript"></script>

<section>
  <div class="warp_content clear">
    <form method="get" action="index.php">
   <input type="hidden" name="m" value="com" />
      <div class="formFiled">
        <input type="text" value="" name="keyword" class="input_search" placeholder="请输入关键字">
        <input type="submit" value="搜索" class="input_btn">
      </div>
    </form>
    <div class="job_list_content">       
	
	  <?php $_from = $this->_tpl_vars['job_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job_list']):
?>
	    <div class="job_list_box"> 
	    <a href="<?php echo smarty_function_wapurl(array('url' => "m:com,c:view,id:".($this->_tpl_vars['job_list']['id'])), $this);?>
" class="job_list">
        <h3><font color='red'><?php echo $this->_tpl_vars['job_list']['name_n']; ?>
</font></h3>
        <aside class="job_qy_name"><?php echo $this->_tpl_vars['job_list']['job_city_one']; ?>
-<?php echo $this->_tpl_vars['job_list']['job_city_two']; ?>
<em class="line">|</em><?php echo ((is_array($_tmp=$this->_tpl_vars['job_list']['com_name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 12, 'gbk') : mb_substr($_tmp, 0, 12, 'gbk')); ?>
</aside>
        <aside class="job_pay"><strong></strong><span class="job_date"><?php echo $this->_tpl_vars['job_list']['time']; ?>
</span></aside>
        </a> 
		</div>
        <?php endforeach; endif; unset($_from); ?>   
      <?php if ($this->_tpl_vars['total'] <= 0): ?>
  <?php if ($_GET['keyword'] != ""): ?> 
  <div class="wap_member_no">没有搜索到职位</div>
  <?php else: ?>
  <div class="wap_member_no">暂无职位</div>
  <?php endif; ?>
  <?php else: ?>
  <div class="pages"> <?php echo $this->_tpl_vars['pagenav']; ?>
</div>
  <?php endif; ?>
       </div>
  </div>
  </div>
</section>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>