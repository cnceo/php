<?php /* Smarty version 2.6.26, created on 2015-06-15 19:31:59
         compiled from member/com/search.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/com/search.htm', 45, false),)), $this); ?>
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
      <DIV class=admincont_box>
        <DIV class=admin_tit><SPAN class="admin_tit_bg">搜索职位</SPAN>     
        <div class="news_search">
          <form action="" method="get" /> 
           <input name="c" type="hidden" value="search">
          <input name="keyword" type="text"class="news_text" value="搜索已有职位">
           <input  type="submit" class="news_bth" value=" ">
        </form>
        </div>
        </DIV>

   <div class="clear"></div>
       
			<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
		   <form action="index.php?c=job&act=opera" method="post" id='myform' target="supportiframe">
		   <div class="com_Release_job">
   <div class="com_Release_job_h1">
   <span class="com_Release_job_a_c">&nbsp;</span>
   <span class="com_Release_job_a">职位名称</span>      
   <span class="com_Release_job_f">收到简历</span>        
   <span class="com_Release_job_f">浏览量  </span>
   <span class="com_Release_job_f">审核状态</span>
   <span class="com_Release_job_f">更新时间</span>
   <span class="com_Release_job_f">到期时间</span>
   <span class="com_Release_job_a" style="text-align:center">操作</span> 
   </div>
    <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
   <div class="com_Release_job_span  com_Release_job_list">
   <div class="com_Release_job_span  com_Release_job_a_c"><input type="checkbox" name="checkboxid[]" value="<?php echo $this->_tpl_vars['v']['id']; ?>
"></div>
   <div class="com_Release_job_span com_Release_job_a"><span  class="com_Release_name"><?php echo $this->_tpl_vars['v']['name']; ?>
</span></div>   
  <div class="com_Release_job_span com_Release_job_f"><?php if ($this->_tpl_vars['jobnum'][$this->_tpl_vars['v']['id']]): ?> <A HREF="index.php?c=hr&job_id=<?php echo $this->_tpl_vars['v']['id']; ?>
">查看</A> <?php else: ?>0<?php endif; ?> &nbsp;
  
  </div>    
   <div class="com_Release_job_span com_Release_job_f"><?php echo $this->_tpl_vars['v']['jobhits']; ?>
&nbsp; </div>
  <div class="com_Release_job_span com_Release_job_f">
  <?php if ($this->_tpl_vars['v']['state'] == '0'): ?> <span class="n_verify">等待审核</span><?php endif; ?>
  <?php if ($this->_tpl_vars['v']['state'] == '1'): ?> <span class="y_verify">已审核</span><?php endif; ?>
  <?php if ($this->_tpl_vars['v']['state'] == '2'): ?> <span class="y_verify_js">已结束</span><?php endif; ?>
  <?php if ($this->_tpl_vars['v']['state'] == '3'): ?> <span class="y_verify_wtg">未通过</span><?php endif; ?> 
  &nbsp;</div>
   <div class="com_Release_job_span com_Release_job_f"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
&nbsp;</div>
  <div class="com_Release_job_span com_Release_job_f"><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
&nbsp;</div>
   <div class="com_Release_job_span com_Release_job_a" style="text-align:center"><A href="index.php?c=jobadd&act=edit&id=<?php echo $this->_tpl_vars['v']['id']; ?>
" >修改</A>&nbsp;<A  onclick="layer_del('确定要删除？', 'index.php?c=job&act=opera&del=<?php echo $this->_tpl_vars['v']['id']; ?>
');"href="javascript:void(0)">删除</A>&nbsp; <?php if ($this->_tpl_vars['config']['com_integral_online'] == '1'): ?>
                    <a <?php if ($this->_tpl_vars['statis']['vip_etime'] < time ( )): ?>href="javascript:void(0)" onclick="layer_del('<?php if ($this->_tpl_vars['statis']['breakjob_num'] > 0): ?>刷新职位数还剩余<?php echo $this->_tpl_vars['statis']['breakjob_num']; ?>
个！确认刷新？<?php else: ?>刷新职位要扣除<?php echo $this->_tpl_vars['config']['integral_jobefresh']; ?>
<?php echo $this->_tpl_vars['config']['integral_pricename']; ?>
！<?php endif; ?>', 'index.php?c=job&act=opera&up=<?php echo $this->_tpl_vars['v']['id']; ?>
');"<?php else: ?> href="javascript:void(0)"onclick="layer_del('', 'index.php?c=job&act=opera&up=<?php echo $this->_tpl_vars['v']['id']; ?>
'); "<?php endif; ?> title="刷新">刷新</a>
					<?php else: ?>
						<?php if ($this->_tpl_vars['statis']['vip_etime'] < time ( )): ?>
							<?php if ($this->_tpl_vars['statis']['breakjob_num'] > 0): ?>
							<a href="javascript:void(0)" onclick="layer_del('刷新职位数还剩余<?php echo $this->_tpl_vars['statis']['breakjob_num']; ?>
个！确认刷新？', 'index.php?c=job&act=opera&up=<?php echo $this->_tpl_vars['v']['id']; ?>
');"  title="刷新">刷新</a>
							<?php else: ?>
							<a  href="javascript:void(0)" onclick="job_refresh();"  title="刷新">刷新</a>	
							<?php endif; ?>
						<?php else: ?>
							<a  href="javascript:void(0)" onclick="layer_del('', 'index.php?c=job&act=opera&up=<?php echo $this->_tpl_vars['v']['id']; ?>
');"  title="刷新">刷新</a>
						<?php endif; ?> 
					<?php endif; ?> </div>
   </div>
         <?php endforeach; else: ?>
                   <div class="msg_no">暂无相关信息！</div>
                    <?php endif; unset($_from); ?>
        
        
        
        <div class="clear"></div>
    
                 <div class="com_Release_job_bot">
   <span class="com_Release_job_qx" style="padding-left:0px;"> <input id='checkAll'  type="checkbox" onclick='m_checkAll(this.form)'class="com_Release_job_qx_check">全选</span> 
      <INPUT class="c_btn_02 c_btn_02_w110" type="button" value="批量删除职位" onclick="return really('checkboxid[]');">
       <input class="c_btn_02 c_btn_02_w110" onclick="location.href='index.php?c=jobadd'" type="button" value="新增职位" name="input">
            
               <div class="clear"></div> <div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div></DIV>
		  </form>
        </DIV>
           <div  class="clear"></div>
    <div class="wxts_box wxts_box_mt30">
<div class="wxts">温馨提示：</div>
1、如贵公司有紧急招聘岗位，建议升级贵宾，以帮助您快速找到心意的人才。
<br>
2、积分获取：注册会员<?php echo $this->_tpl_vars['config']['integral_reg']; ?>
积分，完善企业信息<?php echo $this->_tpl_vars['config']['integral_userinfo']; ?>
积分，营业执照认证<?php echo $this->_tpl_vars['config']['integral_comcert']; ?>
积分。<br>
3、请贵公司保证职位信息的真实性、合法性，并及时更新职位信息，如被举报或投诉，确认发布的信息违反相关规定后，本站将会关闭贵公司的招聘服务，敬请谅解！
</div>
  </div>
      </DIV>  

  <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>