<?php /* Smarty version 2.6.26, created on 2015-07-28 14:50:06
         compiled from personalityblue/resume/jianli1/index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'personalityblue/resume/jianli1/index.htm', 98, false),array('function', 'image', 'personalityblue/resume/jianli1/index.htm', 251, false),)), $this); ?>
<!DOCtYPE html PUBLIC "-//W3C//DtD XHtML 1.0 transitional//EN" "http://www.w3.org/tR/xhtml1/DtD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><?php echo $this->_tpl_vars['title']; ?>
</title>
<META name=keywords content="<?php echo $this->_tpl_vars['keywords']; ?>
"> 
<META name=description content="<?php echo $this->_tpl_vars['description']; ?>
">
<link rel="stylesheet"  type="text/css" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/default/resume/jianli1/style/vita.css">
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/public.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['style']; ?>
/js/resume.js" language="javascript"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jscolor/jscolor.js"></script>
<body>
<!--[if IE 6]>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/png.js"></script>
<script>
DD_belatedPNG.fix('.png');
</script>
<![endif]--> 
<script>var integral_pricename='<?php echo $this->_tpl_vars['config']['integral_pricename']; ?>
'; var weburl="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
";</script>

	<?php if ($this->_tpl_vars['Info']['id'] != '' && $this->_tpl_vars['Info']['diy_status'] == '1'): ?>
	<div class="fixed_left">
    <div class="rem_chlose_left">ѡ�����ģ��</div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == 'd'): ?>style="color:#993"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=d">Ĭ��ģ��</a></div>
        <div class="resume_template  resume_template_mor"><a target="_self" <?php if ($_GET['tmp'] == '1'): ?>style="color:#fff"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=1">��ɫ���</a></div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == '2'): ?>style="color:#fff"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=2">��ɫ���</a></div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == '3'): ?>style="color:#993"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=3">��Լ���</a></div>
        <div class="resume_template resume_template_bg" onClick="settemplate('1')">ʹ�ô�ģ��</div>
    </div>
	
    <?php endif; ?>
    <div class="container">
        <div class="head">
            <div class="logo_1">
                <a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
"><img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['config']['sy_logo']; ?>
" class="png" style=" border:none;"></a>
            </div>
            <?php if ($this->_tpl_vars['Info']['uid'] != $this->_tpl_vars['uid']): ?>
            <span>&middot;<a href="javascript:;" class="sq_resume">��������</a></span>
            <span>&middot;<a onClick="window.print();" href="javascript:;">��ӡ����</a></span>
            <span>&middot;<a href="javascript:void(0);"   onclick="for_link('<?php echo $this->_tpl_vars['Info']['id']; ?>
')">���ؼ���</a></span>
            <?php endif; ?>
        </div>
    </div>
<div class="vita_body">
<div class="vita_cur"><span class="vita_cur_left">��ǰλ�ã�<a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
">��ҳ</a> > <?php echo $this->_tpl_vars['Info']['username_n']; ?>
���˼���</span><em class="vita_cur_right">��ţ�<b><?php echo $this->_tpl_vars['Info']['id']; ?>
</b>   �������£�<?php echo $this->_tpl_vars['Info']['lastupdate']; ?>
   ��� <b><?php echo $this->_tpl_vars['Info']['hits']; ?>
</b> ��</em> </div>
<?php if ($this->_tpl_vars['Info']['info_status'] == '1' || $this->_tpl_vars['usertype'] == '2'): ?>
<div class="vita_content">
<div class="vita_Basic vita_red">
<div class="vita_Basic_photo"><img src="<?php echo $this->_tpl_vars['Info']['resume_photo']; ?>
" onerror="showImgDelay(this,'<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['config']['sy_member_icon']; ?>
',2);" width="120" height="150"><div class="vita_Basic_photo_bg"></div></div>
<div class="vita_Basic_info">
<div class="vita_name"><?php echo $this->_tpl_vars['Info']['username_n']; ?>
<span class="vita_name_yrz"><img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/default/resume/jianli1/images/sf.png" title="�������֤"><?php if ($this->_tpl_vars['Info']['idcard_status'] == 1 && $this->_tpl_vars['Info']['idcard']): ?> ����֤<?php endif; ?></span></div>
<div class="vita_line "></div>
<div class="vita_qiu_name">��ְ����<?php echo $this->_tpl_vars['Info']['jobname']; ?>
</div>
<div class="vita_Basic_info_t">
<span class="vita_Basic_icon vita_Basic_Sex"><?php echo $this->_tpl_vars['Info']['user_sex']; ?>
</span>       
<span class="vita_Basic_icon vita_Basic_Age"><?php echo $this->_tpl_vars['Info']['age']; ?>
��</span> 
<span class="vita_Basic_icon vita_Basic_Exp"><?php echo $this->_tpl_vars['Info']['user_exp']; ?>
</span>        
<span class="vita_Basic_icon vita_Basic_Edu">ѧ����<?php echo $this->_tpl_vars['Info']['useredu']; ?>
</span>         
<span class="vita_Basic_icon vita_Basic_add"><?php echo $this->_tpl_vars['Info']['living']; ?>
</span>
</div>      
<?php if ($this->_tpl_vars['Info']['basic_info'] == '1'): ?>
<div class="vita_Basic_info_c">
<span class="vita_Identity"><?php echo $this->_tpl_vars['Info']['user_marriage']; ?>
</span>  
|
<span class="vita_Identity">������<?php echo $this->_tpl_vars['Info']['domicile']; ?>
 </span>  
|
<span class="vita_Identity"><?php echo $this->_tpl_vars['Info']['height']; ?>
cm/<?php echo $this->_tpl_vars['Info']['weight']; ?>
kg</span> 
|    
<span class="vita_Identity"><?php echo $this->_tpl_vars['Info']['nationality']; ?>
</span>   </div>
<?php endif; ?>
</div>
</div>
<?php endif; ?>
<div class="vita_list_cont">
<div class="vita_list">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��ְ����</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>����ְλ��<?php echo $this->_tpl_vars['Info']['jobname']; ?>
 </div>        
<div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>����������<?php echo $this->_tpl_vars['Info']['city_one']; ?>
 <?php echo $this->_tpl_vars['Info']['city_two']; ?>
 <?php echo $this->_tpl_vars['Info']['city_three']; ?>
 </div>        
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>������ҵ��<?php echo $this->_tpl_vars['Info']['hy']; ?>
  </div>
<div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>����Ҫ��<?php echo $this->_tpl_vars['Info']['salary']; ?>
 <?php if ($this->_tpl_vars['Info']['salary'] != "����"): ?> <font color="#888888">RMB</font><?php endif; ?>  </div>                             
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>��ְʱ�䣺<?php echo $this->_tpl_vars['Info']['report']; ?>
   </div>
<div class="vita_Intention "><i class="vita_Intention_i vita_red"></i>ְλ���ʣ�<?php echo $this->_tpl_vars['Info']['type']; ?>
    </div>                  
</div>
<div class="vita_list">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��������</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>�������ۣ�<?php echo $this->_tpl_vars['Info']['description']; ?>
 </div>        
</div>
<?php if (is_array ( $this->_tpl_vars['Info']['user_work'] ) && ! empty ( $this->_tpl_vars['Info']['user_work'] )): ?>
<div class="vita_list" id="m3">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��������</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 -  <?php if ($this->_tpl_vars['one']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
<?php else: ?>����<?php endif; ?></div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
</div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['department']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">���Σ�<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>����ְ��<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>  
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_edu'] ) && ! empty ( $this->_tpl_vars['Info']['user_edu'] )): ?>
<div class="vita_list" id="m0">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��������</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['specialty']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">���Σ�<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>רҵ������<?php echo $this->_tpl_vars['one']['content']; ?>
</div>        
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_skill'] ) && ! empty ( $this->_tpl_vars['Info']['user_skill'] )): ?>
<div class="vita_list" id="m2">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">רҵ����</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction"> 
<div  class="vita_introduction_a vita_dw_name">�������<?php echo $this->_tpl_vars['one']['skill_n']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm">�����̶ȣ�<?php echo $this->_tpl_vars['one']['ing_n']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">�������ƣ�<?php echo $this->_tpl_vars['one']['name']; ?>
</div >  
<div class="vita_introduction_a vita_date">����ʱ�䣺<?php echo $this->_tpl_vars['one']['longtime']; ?>
�� </div > 
</div>     
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_xm'] ) && ! empty ( $this->_tpl_vars['Info']['user_xm'] )): ?>
<div class="vita_list" id="m4">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��Ŀ����</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_xm']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['sys']; ?>
  </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['name']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">���Σ�<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>��Ŀ������<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>        
</div>
<?php endforeach; endif; unset($_from); ?>
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_tra'] ) && ! empty ( $this->_tpl_vars['Info']['user_tra'] )): ?>
<div class="vita_list" id="m1">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��ѵ����</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_tra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm">��ѵ����<?php echo $this->_tpl_vars['one']['title']; ?>
</div >    
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i><?php echo $this->_tpl_vars['one']['content']; ?>
 </div>        
</div>
<?php endforeach; endif; unset($_from); ?>
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_cert'] ) && ! empty ( $this->_tpl_vars['Info']['user_cert'] )): ?>
<div class="vita_list" id="m5">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">֤��</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y��%m��") : smarty_modifier_date_format($_tmp, "%Y��%m��")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['title']; ?>
</div >     
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>֤��������<?php echo $this->_tpl_vars['one']['content']; ?>
</div>        
</div>
<?php endforeach; endif; unset($_from); ?> 
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_other'] ) && ! empty ( $this->_tpl_vars['Info']['user_other'] )): ?>
<div class="vita_list" id="m6">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">������Ϣ</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>�������⣺<?php echo $this->_tpl_vars['one']['title']; ?>
 </div>        
</div>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>����������<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>        
</div>    
<?php endforeach; endif; unset($_from); ?>  
</div>
<?php endif; ?>         
</div> 
<?php if (is_array ( $this->_tpl_vars['Info']['user_show'] ) && ! empty ( $this->_tpl_vars['Info']['user_show'] )): ?>
<div class="vita_list">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">�ҵ���Ʒ</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
 <div class="fairs_introduction_p" >
        <ul class="fairs_introduction_img" id="rolling_img1">
        <?php $_from = $this->_tpl_vars['Info']['user_show']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
            <li>
                <a class="image_gall" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['v']['picurl']; ?>
">
                    <img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['v']['picurl']; ?>
" width="215" height="153" />
                </a>
            </li>
		<?php endforeach; endif; unset($_from); ?>
        </ul>
    </div>
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['style']; ?>
/style/popImage.css" type="text/css"> 
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery.popImage.mini.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['style']; ?>
/js/ScrollPic.js" language="javascript"></script>
 <SCRIPT language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--

var li_num=$("#rolling_img1 li").length;
if(li_num>3){//���ͼƬ�������㣬�Ͳ�ִ���л�
	var scrollPic_02 = new ScrollPic();
	scrollPic_02.scrollContId   = "rolling_img1"; //��������ID
	scrollPic_02.arrLeftId      = "LeftArr";//���ͷID
	scrollPic_02.arrRightId     = "RightArr"; //�Ҽ�ͷID
	scrollPic_02.frameWidth     = 710;//��ʾ����
	scrollPic_02.pageWidth      = 246; //��ҳ���
	scrollPic_02.speed          = 10; //�ƶ��ٶ�(��λ���룬ԽСԽ��)
	scrollPic_02.space          = 10; //ÿ���ƶ�����(��λpx��Խ��Խ��)
	scrollPic_02.autoPlay       = true; //�Զ�����
	scrollPic_02.autoPlayTime   = 2; //�Զ����ż��ʱ��(��)
	scrollPic_02.initialize(); //��ʼ��
}
//--><!]]> 
$(function(){
	$("a.image_gall").popImage();
})
</SCRIPT> 
        
</div>
<?php endif; ?> 
    <div class="vita_list">
    <div class="vita_list_h1"><span class="vita_list_h1_span vita_red">��ϵ��ʽ</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php if ($this->_tpl_vars['Info']['m_status'] == '1'): ?>

	<?php if ($this->_tpl_vars['Info']['telphone']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>�ֻ���<?php echo smarty_function_image(array('number' => $this->_tpl_vars['Info']['telphone'],'uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telphone','width' => 200), $this);?>
</div>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['Info']['telhome']): ?>
    <div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>������<?php echo smarty_function_image(array('number' => $this->_tpl_vars['Info']['telhome'],'uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telhome','width' => 200), $this);?>
 </div>        
	<?php endif; ?>

	<?php if ($this->_tpl_vars['Info']['email']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>�������䣺<?php echo $this->_tpl_vars['Info']['email']; ?>
 </div>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['Info']['homepage']): ?>
    <div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>������ҳ��<?php echo $this->_tpl_vars['Info']['homepage']; ?>
</div>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['Info']['address']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>��ϸ��ַ��<?php echo $this->_tpl_vars['Info']['address']; ?>
</div>
	<?php endif; ?>
    

    <?php if ($this->_tpl_vars['Info']['idcard']): ?><div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i><span>���֤��</span>
    <span class="vita_Identity">
    <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'idcard','width' => 180), $this);?>

    <?php if ($this->_tpl_vars['Info']['idcard_status'] == 1 && $this->_tpl_vars['Info']['idcard']): ?>����֤<?php endif; ?>
    </span> </div>
    <?php endif; ?> 

   <?php else: ?>
   <div class="re_touch"><?php echo $this->_tpl_vars['Info']['link_msg']; ?>
</div>
  <?php endif; ?>
    </div>     

    </div>
 <?php if ($this->_tpl_vars['Info']['uid'] != $this->_tpl_vars['uid']): ?>
<div class="vita_Opera_cz">
<input class="vita_btn_1" type="button" onClick="talent_pool('<?php echo $this->_tpl_vars['Info']['uid']; ?>
','<?php echo $this->_tpl_vars['Info']['id']; ?>
')" value="�����˲ſ�">
<input class="vita_btn_1 sq_resume" type="button" value="�������� " name="submit" username="<?php echo $this->_tpl_vars['Info']['name']; ?>
" eid="" uid="<?php echo $this->_tpl_vars['Info']['uid']; ?>
">
<input class="vita_btn_1" type="button" onClick="window.print();" value="��ӡ���� " name="submit">
<input class="vita_btn_1" type="button" onClick="javascript:window.location.href='index.php?m=resume&c=resumeshare&id=<?php echo $this->_tpl_vars['Info']['id']; ?>
'" value="�������" name="submit">
<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
</div>
<?php endif; ?>
</div>
</div>
<div id='for_link' style="display:none;float:left;width:350px">
	<div class="city_1" style="padding-top:5px;"></div>
	<div class="btn" style="float: left; padding-bottom: 20px; padding-top: 10px; width: 100%; text-align: center;">  
       <input class="btn_1 down_resume" type="button" name="submit" value="���ؼ��� "> 
	</div>
</div>
<div id='job_box' style="display:none;float:left">
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
        <dt><span class="city_01">&nbsp;</span><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
		<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="resume_sub_yq" id="click_invite" type="button" value="��������"  >
    </dl>
  </div>
 </div>

<div class="vita_footer"> <a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
" target="_blank"><?php echo $this->_tpl_vars['config']['sy_webname']; ?>
</a> &copy; ��Ȩ���� <?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
  ������Ƹ��������Ϣ�� ,δ��������Ȩ����ת�� </div>
 
</body>
</html>