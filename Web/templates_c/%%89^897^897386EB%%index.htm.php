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
    <div class="rem_chlose_left">选择简历模板</div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == 'd'): ?>style="color:#993"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=d">默认模版</a></div>
        <div class="resume_template  resume_template_mor"><a target="_self" <?php if ($_GET['tmp'] == '1'): ?>style="color:#fff"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=1">红色风格</a></div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == '2'): ?>style="color:#fff"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=2">蓝色风格</a></div>
        <div class="resume_template"><a target="_self" <?php if ($_GET['tmp'] == '3'): ?>style="color:#993"<?php endif; ?> href="index.php?<?php if ($_GET['m']): ?>m=<?php echo $_GET['m']; ?>
&<?php endif; ?><?php if ($_GET['c']): ?>c=<?php echo $_GET['c']; ?>
&<?php endif; ?><?php if ($_GET['act']): ?>act=<?php echo $_GET['act']; ?>
&<?php endif; ?>id=<?php echo $this->_tpl_vars['Info']['id']; ?>
&tmp=3">简约风格</a></div>
        <div class="resume_template resume_template_bg" onClick="settemplate('1')">使用此模版</div>
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
            <span>&middot;<a href="javascript:;" class="sq_resume">邀请面试</a></span>
            <span>&middot;<a onClick="window.print();" href="javascript:;">打印简历</a></span>
            <span>&middot;<a href="javascript:void(0);"   onclick="for_link('<?php echo $this->_tpl_vars['Info']['id']; ?>
')">下载简历</a></span>
            <?php endif; ?>
        </div>
    </div>
<div class="vita_body">
<div class="vita_cur"><span class="vita_cur_left">当前位置：<a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
">首页</a> > <?php echo $this->_tpl_vars['Info']['username_n']; ?>
个人简历</span><em class="vita_cur_right">编号：<b><?php echo $this->_tpl_vars['Info']['id']; ?>
</b>   简历更新：<?php echo $this->_tpl_vars['Info']['lastupdate']; ?>
   浏览 <b><?php echo $this->_tpl_vars['Info']['hits']; ?>
</b> 次</em> </div>
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
/template/default/resume/jianli1/images/sf.png" title="身份已认证"><?php if ($this->_tpl_vars['Info']['idcard_status'] == 1 && $this->_tpl_vars['Info']['idcard']): ?> 已认证<?php endif; ?></span></div>
<div class="vita_line "></div>
<div class="vita_qiu_name">求职意向：<?php echo $this->_tpl_vars['Info']['jobname']; ?>
</div>
<div class="vita_Basic_info_t">
<span class="vita_Basic_icon vita_Basic_Sex"><?php echo $this->_tpl_vars['Info']['user_sex']; ?>
</span>       
<span class="vita_Basic_icon vita_Basic_Age"><?php echo $this->_tpl_vars['Info']['age']; ?>
岁</span> 
<span class="vita_Basic_icon vita_Basic_Exp"><?php echo $this->_tpl_vars['Info']['user_exp']; ?>
</span>        
<span class="vita_Basic_icon vita_Basic_Edu">学历：<?php echo $this->_tpl_vars['Info']['useredu']; ?>
</span>         
<span class="vita_Basic_icon vita_Basic_add"><?php echo $this->_tpl_vars['Info']['living']; ?>
</span>
</div>      
<?php if ($this->_tpl_vars['Info']['basic_info'] == '1'): ?>
<div class="vita_Basic_info_c">
<span class="vita_Identity"><?php echo $this->_tpl_vars['Info']['user_marriage']; ?>
</span>  
|
<span class="vita_Identity">户籍：<?php echo $this->_tpl_vars['Info']['domicile']; ?>
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
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">求职意向</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>期望职位：<?php echo $this->_tpl_vars['Info']['jobname']; ?>
 </div>        
<div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>工作地区：<?php echo $this->_tpl_vars['Info']['city_one']; ?>
 <?php echo $this->_tpl_vars['Info']['city_two']; ?>
 <?php echo $this->_tpl_vars['Info']['city_three']; ?>
 </div>        
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>期望行业：<?php echo $this->_tpl_vars['Info']['hy']; ?>
  </div>
<div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>待遇要求：<?php echo $this->_tpl_vars['Info']['salary']; ?>
 <?php if ($this->_tpl_vars['Info']['salary'] != "面议"): ?> <font color="#888888">RMB</font><?php endif; ?>  </div>                             
<div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>到职时间：<?php echo $this->_tpl_vars['Info']['report']; ?>
   </div>
<div class="vita_Intention "><i class="vita_Intention_i vita_red"></i>职位性质：<?php echo $this->_tpl_vars['Info']['type']; ?>
    </div>                  
</div>
<div class="vita_list">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">自我评价</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>自我评价：<?php echo $this->_tpl_vars['Info']['description']; ?>
 </div>        
</div>
<?php if (is_array ( $this->_tpl_vars['Info']['user_work'] ) && ! empty ( $this->_tpl_vars['Info']['user_work'] )): ?>
<div class="vita_list" id="m3">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">工作经历</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 -  <?php if ($this->_tpl_vars['one']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
<?php else: ?>至今<?php endif; ?></div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
</div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['department']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">担任：<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>工作职责：<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>  
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_edu'] ) && ! empty ( $this->_tpl_vars['Info']['user_edu'] )): ?>
<div class="vita_list" id="m0">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">教育经历</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['specialty']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">担任：<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>专业描述：<?php echo $this->_tpl_vars['one']['content']; ?>
</div>        
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_skill'] ) && ! empty ( $this->_tpl_vars['Info']['user_skill'] )): ?>
<div class="vita_list" id="m2">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">专业技能</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>

<?php $_from = $this->_tpl_vars['Info']['user_skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction"> 
<div  class="vita_introduction_a vita_dw_name">技能类别：<?php echo $this->_tpl_vars['one']['skill_n']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm">熟练程度：<?php echo $this->_tpl_vars['one']['ing_n']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">技能名称：<?php echo $this->_tpl_vars['one']['name']; ?>
</div >  
<div class="vita_introduction_a vita_date">掌握时间：<?php echo $this->_tpl_vars['one']['longtime']; ?>
年 </div > 
</div>     
</div>
<?php endforeach; endif; unset($_from); ?>
             
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_xm'] ) && ! empty ( $this->_tpl_vars['Info']['user_xm'] )): ?>
<div class="vita_list" id="m4">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">项目经历</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_xm']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['sys']; ?>
  </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['name']; ?>
</div >   
<div  class="vita_introduction_a vita_dw_zw">担任：<?php echo $this->_tpl_vars['one']['title']; ?>
</div >  
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>项目描述：<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>        
</div>
<?php endforeach; endif; unset($_from); ?>
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_tra'] ) && ! empty ( $this->_tpl_vars['Info']['user_tra'] )): ?>
<div class="vita_list" id="m1">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">培训经历</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_tra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['one']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm">培训方向：<?php echo $this->_tpl_vars['one']['title']; ?>
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
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">证书</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_introduction">
<div class="vita_introduction_a vita_date"><?php echo ((is_array($_tmp=$this->_tpl_vars['one']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y年%m月") : smarty_modifier_date_format($_tmp, "%Y年%m月")); ?>
 </div >    
<div  class="vita_introduction_a vita_dw_name"><?php echo $this->_tpl_vars['one']['name']; ?>
 </div >        
<div  class="vita_introduction_a vita_dw_bm"><?php echo $this->_tpl_vars['one']['title']; ?>
</div >     
</div>
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>证书描述：<?php echo $this->_tpl_vars['one']['content']; ?>
</div>        
</div>
<?php endforeach; endif; unset($_from); ?> 
</div>
<?php endif; ?>
<?php if (is_array ( $this->_tpl_vars['Info']['user_other'] ) && ! empty ( $this->_tpl_vars['Info']['user_other'] )): ?>
<div class="vita_list" id="m6">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">附加信息</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php $_from = $this->_tpl_vars['Info']['user_other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>其他标题：<?php echo $this->_tpl_vars['one']['title']; ?>
 </div>        
</div>
<div class="vita_skill">
<div class="vita_skill_Intention"><i class="vita_Intention_i vita_red"></i>其他描述：<?php echo $this->_tpl_vars['one']['content']; ?>
 </div>        
</div>    
<?php endforeach; endif; unset($_from); ?>  
</div>
<?php endif; ?>         
</div> 
<?php if (is_array ( $this->_tpl_vars['Info']['user_show'] ) && ! empty ( $this->_tpl_vars['Info']['user_show'] )): ?>
<div class="vita_list">
<div class="vita_list_h1"><span class="vita_list_h1_span vita_red">我的作品</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
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
if(li_num>3){//如果图片数量不足，就不执行切换
	var scrollPic_02 = new ScrollPic();
	scrollPic_02.scrollContId   = "rolling_img1"; //内容容器ID
	scrollPic_02.arrLeftId      = "LeftArr";//左箭头ID
	scrollPic_02.arrRightId     = "RightArr"; //右箭头ID
	scrollPic_02.frameWidth     = 710;//显示框宽度
	scrollPic_02.pageWidth      = 246; //翻页宽度
	scrollPic_02.speed          = 10; //移动速度(单位毫秒，越小越快)
	scrollPic_02.space          = 10; //每次移动像素(单位px，越大越快)
	scrollPic_02.autoPlay       = true; //自动播放
	scrollPic_02.autoPlayTime   = 2; //自动播放间隔时间(秒)
	scrollPic_02.initialize(); //初始化
}
//--><!]]> 
$(function(){
	$("a.image_gall").popImage();
})
</SCRIPT> 
        
</div>
<?php endif; ?> 
    <div class="vita_list">
    <div class="vita_list_h1"><span class="vita_list_h1_span vita_red">联系方式</span><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i><i class="vita_list_h1_i vita_red"></i></div>
<?php if ($this->_tpl_vars['Info']['m_status'] == '1'): ?>

	<?php if ($this->_tpl_vars['Info']['telphone']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>手机：<?php echo smarty_function_image(array('number' => $this->_tpl_vars['Info']['telphone'],'uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telphone','width' => 200), $this);?>
</div>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['Info']['telhome']): ?>
    <div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>座机：<?php echo smarty_function_image(array('number' => $this->_tpl_vars['Info']['telhome'],'uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telhome','width' => 200), $this);?>
 </div>        
	<?php endif; ?>

	<?php if ($this->_tpl_vars['Info']['email']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>电子邮箱：<?php echo $this->_tpl_vars['Info']['email']; ?>
 </div>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['Info']['homepage']): ?>
    <div class="vita_Intention"><i class="vita_Intention_i vita_red"></i>个人主页：<?php echo $this->_tpl_vars['Info']['homepage']; ?>
</div>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['Info']['address']): ?>
    <div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i>详细地址：<?php echo $this->_tpl_vars['Info']['address']; ?>
</div>
	<?php endif; ?>
    

    <?php if ($this->_tpl_vars['Info']['idcard']): ?><div class="vita_Intention vita_Intention_w420"><i class="vita_Intention_i vita_red"></i><span>身份证号</span>
    <span class="vita_Identity">
    <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'idcard','width' => 180), $this);?>

    <?php if ($this->_tpl_vars['Info']['idcard_status'] == 1 && $this->_tpl_vars['Info']['idcard']): ?>已认证<?php endif; ?>
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
')" value="加入人才库">
<input class="vita_btn_1 sq_resume" type="button" value="邀请面试 " name="submit" username="<?php echo $this->_tpl_vars['Info']['name']; ?>
" eid="" uid="<?php echo $this->_tpl_vars['Info']['uid']; ?>
">
<input class="vita_btn_1" type="button" onClick="window.print();" value="打印简历 " name="submit">
<input class="vita_btn_1" type="button" onClick="javascript:window.location.href='index.php?m=resume&c=resumeshare&id=<?php echo $this->_tpl_vars['Info']['id']; ?>
'" value="分享简历" name="submit">
<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
</div>
<?php endif; ?>
</div>
</div>
<div id='for_link' style="display:none;float:left;width:350px">
	<div class="city_1" style="padding-top:5px;"></div>
	<div class="btn" style="float: left; padding-bottom: 20px; padding-top: 10px; width: 100%; text-align: center;">  
       <input class="btn_1 down_resume" type="button" name="submit" value="下载简历 "> 
	</div>
</div>
<div id='job_box' style="display:none;float:left">
    <div class="city_1">
        <dl class="city_3">
          <dt>
			<span class="city_01">面试职位：</span><select id='jobname'></select>
		  </dt>
        </dl>
		  <dl class="city_3">
          <dt>
			<span class="city_01">联系人：</span><input size='5'  id='linkman' value=''>

			<span class="city_01">联系电话：</span><input size='10'  id='linktel' value=''>
		  </dt>
        </dl>
		 <dl class="city_3">
          <dt>
			<span class="city_01">面试时间：</span><input size='34' id='intertime' value=''>
		  </dt>
        </dl>
		 <dl class="city_3">
          <dt>
			<span class="city_01">面试地址：</span><input size='34' id='address' value=''>
		  </dt>
        </dl>
		<dl class="city_3"  >  
			<dt><span class="city_01">面试备注：</span><textarea id="content" cols="40" rows="5" class="resyme_text"></textarea>
		</dl>
      <dl class="city_3" id="resume_job" style="height:40px;">
        <dt><span class="city_01">&nbsp;</span><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
		<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="resume_sub_yq" id="click_invite" type="button" value="邀请面试"  >
    </dl>
  </div>
 </div>

<div class="vita_footer"> <a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
" target="_blank"><?php echo $this->_tpl_vars['config']['sy_webname']; ?>
</a> &copy; 版权所有 <?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
  本网招聘及简历信息等 ,未经书面授权不得转载 </div>
 
</body>
</html>