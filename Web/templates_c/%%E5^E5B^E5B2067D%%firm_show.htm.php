<?php /* Smarty version 2.6.26, created on 2015-06-15 16:04:58
         compiled from wap/firm_show.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/firm_show.htm', 60, false),)), $this); ?>
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
       <div class="header_h1">��˾����</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
<section>
  <div class="company-info" style="background:url(http://www.hr135.com/app/template/wap/images/beijing.jpg) no-repeat center center;background-size: cover;">
    <div class="firm_name"><?php echo $this->_tpl_vars['row']['name']; ?>
</div>
    <div class="firm_t_city"><i class="user_map fa fa-map-marker"></i><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
/<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['cityid']]; ?>
<i class="user_map fa fa-calendar" style="margin-left:10px;"></i><?php echo $this->_tpl_vars['row']['lastupdate']; ?>
</div>
  </div>
</section>
<section>
  <div class="user_contnet mt10">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">������Ϣ</span></div>
      <ul class="user_contnet_ul">
        <li><span class="user_contnet_info_n">��ҵ���ʣ�</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['row']['pr']]; ?>
</li>
        <li><span class="user_contnet_info_n">ע���ʽ�</span><?php echo $this->_tpl_vars['row']['money']; ?>
��Ԫ</li>
        <li><span class="user_contnet_info_n">��˾��ģ��</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['row']['mun']]; ?>
</li>
        <li class="com_show_li"><span class="user_contnet_info_n">������ҵ��</span> <?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
</li>
      </ul>
    </div>
  </div>
</section>
<section>
  <div class="user_contnet">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">��˾���</span></div>
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="ke-zeroborder">
	<tbody>
		<tr>
			<td>
				<?php echo $this->_tpl_vars['row']['content']; ?>

			</td>
		</tr>
	</tbody>
</table> </div>
  </div>
</section>


<section>
  <div class="user_contnet">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">��ϵ��ʽ</span></div>
       <?php if (( $this->_tpl_vars['config']['com_login_link'] == 1 && $this->_tpl_vars['cookie']['uid'] && $this->_tpl_vars['cookie']['usertype'] == 1 ) || $this->_tpl_vars['config']['com_login_link'] == 0): ?>    
		<ul class="user_contnet_ul">
        <li><span class="user_contnet_info_n">��ϵ�ˣ�</span><?php echo $this->_tpl_vars['row']['linkman']; ?>
</li>
        <li><span class="user_contnet_info_n">��ϵ�绰��</span><?php echo $this->_tpl_vars['row']['linkphone']; ?>
</li>
        <li><span class="user_contnet_info_n">��˾��ַ��</span><?php echo $this->_tpl_vars['row']['address']; ?>
</li>
       </ul>
	   
	   <?php else: ?>
		    <div class="com_post_login"> �� <a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="com_s_logoin">��¼</a> ��鿴��ϵ��ʽ
      û���ʺţ� <a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
" class="cf60">[���ע��]</a> </div>
	  
	  <?php endif; ?>
	   
       </div>
  </div>
</section>





<section>
  <div class="user_contnet">
    <div class="index_warp_content">
      <div class="wap_title"><span class="">������Ƹ��ְλ</span></div>
	  	  <?php $_from = $this->_tpl_vars['job_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job_list']):
?>
       <div class="job_list_box" style="border:0px;border-bottom:1px solid #cdd7de; margin-top:0px; padding:5px 0;"> 
	   <a href="<?php echo smarty_function_wapurl(array('url' => "m:com,c:view,id:".($this->_tpl_vars['job_list']['id'])), $this);?>
" class="job_list">
        <h3><font color='red'><?php echo $this->_tpl_vars['job_list']['name_n']; ?>
</font></h3>
        <aside class="job_qy_name"><?php echo $this->_tpl_vars['job_list']['job_city_one']; ?>
-<?php echo $this->_tpl_vars['job_list']['job_city_two']; ?>
</aside>
        <aside class="job_pay"><strong></strong><span class="job_date"><?php echo $this->_tpl_vars['job_list']['time']; ?>
</span></aside>
        </a> 
		</div>
		<?php endforeach; endif; unset($_from); ?>
       </div>
  </div>
</section>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>