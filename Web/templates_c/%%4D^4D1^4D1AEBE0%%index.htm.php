<?php /* Smarty version 2.6.26, created on 2015-06-15 16:03:48
         compiled from personalityblue/index/index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'personalityblue/index/index.htm', 71, false),array('modifier', 'mb_substr', 'personalityblue/index/index.htm', 170, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><?php echo $this->_tpl_vars['title']; ?>
</title>
<META name="keywords" content="<?php echo $this->_tpl_vars['keywords']; ?>
">
<META name="description" content="<?php echo $this->_tpl_vars['description']; ?>
">
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['style']; ?>
/style/css.css" type="text/css">
<!--[if IE 6]>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/png.js"></script>
<script>
DD_belatedPNG.fix('.png,.pagination li a');
</script>
<![endif]-->
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/lazyload.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/public.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['style']; ?>
/js/reg_ajax.js" type="text/javascript"></script>
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['style']; ?>
/style/yun_index.css" type="text/css">
<script src="<?php echo $this->_tpl_vars['style']; ?>
/js/index.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/search.js" type="text/javascript"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/slides.jquery.js" type="text/javascript"></script>
</head>
<body>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tplstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<script> 
$(document).ready(function(){
	$("#slides").slides({
		preload: true,
		preloadImage: '<?php echo $this->_tpl_vars['style']; ?>
/images/loading.gif',
		play: 5000,
		pause: 2500,
		hoverPause: true
	});
}); 
$(document).ready(function(){
	$(".index_newpost_rtitle").find("li").bind("click",function(){var id=$(this).attr("tab_name");$(".index_newpost_list").hide();$(".current").removeClass("current");$(this).addClass("current");$("#"+id).show();});
	});
</script> 
<!--content  start-->
<div class="yun_content">
  <div class="index_logoin_box">
    <div id="index_logoin">
      <div class="index_logoin">
        <input type="hidden" value="index" name="path" id="path">
        <input type="hidden" value="1" name="usertype" id="usertype">
        <div class="index_logoin_h1">用户登录 </div>
        <div class="index_logoin_t">
          <div class="index_logoin_re">
            <input type="text" id="username" name="username" placeholder="请输入用户名" class="index_logoin_inp" value="<?php echo $this->_tpl_vars['cookie']['loginname']; ?>
">
            <div class="index_logoin_msg" id="show_name" style="display:none">
              <div class="index_logoin_msg_tx">请填写用户名</div>
              <div class="index_logoin_msg_icon"></div>
            </div>
          </div>
          <div class="index_logoin_re_m">
            <input type="password" placeholder="请输入您的密码" class="index_logoin_inp" name="password" value="" id="password">
            <div class="index_logoin_msg" style="display:none" id="show_pass">
              <div class="index_logoin_msg_tx">请填写密码</div>
              <div class="index_logoin_msg_icon"></div>
            </div>
          </div>
        </div>
        <div class="index_logoin_r">
          <input type="submit" value="" class="index_logoin_bth2" onclick="check_login();" >
        </div>
        <ul class="index_logoin_cont">
          <li>
            <input type="checkbox" class="index_logoin_check" value="1" name="loginname">
            <em class="index_l_jz">记住登录状态</em><a href="<?php echo smarty_function_url(array('m' => 'forgetpw'), $this);?>
">忘记密码?</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="index_top_main fl">
    <div class="index_top_center fl">
      <div class=" index_top_login fl"> <a href="<?php echo smarty_function_url(array('m' => 'register','url' => "usertype:2"), $this);?>
" class="company_login fl"><img src="<?php echo $this->_tpl_vars['style']; ?>
/images/company_login.png" /></a> <a href="<?php echo smarty_function_url(array('m' => 'register','url' => "usertype:1"), $this);?>
" class="company_reg fl"><img src="<?php echo $this->_tpl_vars['style']; ?>
/images/company_reg.png" /></a> </div>
      <div class="index_bid fl mt10">
        <div class="yuin_index_r">
          <div class="yuin_index_r_h1">
            <ul class="yun_index_h1_list">
              <li class="yun_index_h1_cur"><span>最新资讯</span>&nbsp;</li>
              <li><span>网站公告</span>&nbsp;</li>
              <li style="border:none;" ><span>招聘会</span>&nbsp;</li>
            </ul>
          </div>
          <div class="yun_index_cont" style="display:block">
            <ul class="index_latest_news">
              <?php $_from = $this->_tpl_vars['alist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['alist']):
?>
              <li><a href="<?php echo $this->_tpl_vars['alist']['url']; ?>
" class="yun_in_news_a"><?php echo $this->_tpl_vars['alist']['title']; ?>
</a></li>
              <?php endforeach; endif; unset($_from); ?>
            </ul>
          </div>
          <div class="yun_index_cont" style="display:none">
            <ul class="index_latest_news">
              <?php $_from = $this->_tpl_vars['gonggao']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['gonggao']):
?>
              <li><a href="<?php echo $this->_tpl_vars['gonggao']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['gonggao']['title_n']; ?>
</a></li>
              <?php endforeach; endif; unset($_from); ?>
            </ul>
          </div>
          <div class="yun_index_cont" style="display:none">
            <ul class="index_latest_news">
              <?php $_from = $this->_tpl_vars['flist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['flist']):
?>
              <li><a href="<?php echo $this->_tpl_vars['flist']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['flist']['title']; ?>
</a></li>
              <?php endforeach; endif; unset($_from); ?>
            </ul>
          </div>
        </div>
        <div class="index_bid_job"><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/index.php?m=map"><img src="<?php echo $this->_tpl_vars['style']; ?>
/images/find_job.png" width="80" height="80" /></a></div>
      </div>
      <div class="yun_Announcement">
        <ul>
          <?php $_from = $this->_tpl_vars['dlist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['dlist']):
?>
          <li><a href="<?php echo $this->_tpl_vars['dlist']['curl']; ?>
"  target="_blank"><?php echo $this->_tpl_vars['dlist']['comname']; ?>
</a> 下载了 <a href="<?php echo $this->_tpl_vars['dlist']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['dlist']['username']; ?>
</a> 的简历 <em class="yun_new_dt_em"><?php echo $this->_tpl_vars['dlist']['time']; ?>
</em></li>
          <?php endforeach; endif; unset($_from); ?>
        </ul>
      </div>
      <script>marquee("2000",".yun_Announcement ul");</script> 
    </div>
    <div class="cont_Projector">
      <div class="Projector">
        <div class="Projector_img">
          <div id="slides" class="s_lb">
            <div class="slides_container"> <?php $_from = $this->_tpl_vars['lunbo']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['lunbo']):
?>
              <div class="slide"><?php echo $this->_tpl_vars['lunbo']['html']; ?>
</div>
              <?php endforeach; endif; unset($_from); ?> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="clear"></div>
  <!--紧急招聘开始-->
  <div class="index_urgency fl mt10">
    <div class="index_urgency_title fl">紧急招聘</div>
    <ul class="index_urgency_lists fl">
      <?php $_from = $this->_tpl_vars['jingji']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['jingji']):
?>
      <li><span><a href="<?php echo $this->_tpl_vars['jingji']['com_url']; ?>
"><?php echo $this->_tpl_vars['jingji']['com_n']; ?>
</a></span><em><a href="<?php echo $this->_tpl_vars['jingji']['job_url']; ?>
"><?php echo $this->_tpl_vars['jingji']['name_n']; ?>
</a></em></li>
      <?php endforeach; endif; unset($_from); ?>
    </ul>
  </div>
  <!--紧急招聘结束-->
  <div class="index_dand_top"><?php $_from = $this->_tpl_vars['adlists']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['adlists']):
?><?php echo $this->_tpl_vars['adlists']['html']; ?>
<?php endforeach; endif; unset($_from); ?></div>
  <div class="index_famous fl">
    <div class="index_famous_botom fl">
      <div class="Famous_recruitment_cont">
        <div class="index_left15560">
          <div id="mainids"> <?php $_from = $this->_tpl_vars['hotjoblist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['hotjoblist']):
?>
            <div class="tlogo">
              <ul>
                <li onmouseover="showDiv2(this)" onmouseout="showDiv2(this)"><a href="<?php echo $this->_tpl_vars['hotjoblist']['url']; ?>
" target="_blank"><img width="185" height="75" border="1" src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['hotjoblist']['hot_pic']; ?>
" class="on"/></a>
                  <div class="show">
                    <div class="area"><?php echo $this->_tpl_vars['hotjoblist']['job']; ?>
</div>
                  </div>
                </li>
              </ul>
            </div>
            <?php endforeach; endif; unset($_from); ?> </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="index_recommend fl mt10">
    <div class="index_recommend_title fl"><em>推荐</em><span>职位</span><a href="<?php echo smarty_function_url(array('m' => 'com','url' => "c:search,rec:1"), $this);?>
" class="index_more">更多>></a></div>
    <ul class="index_recommend_lists fl">
      <?php $_from = $this->_tpl_vars['job_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job_list']):
?>
      <li><span><a href="<?php echo $this->_tpl_vars['job_list']['com_url']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['job_list']['com_name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 13, 'gbk') : mb_substr($_tmp, 0, 13, 'gbk')); ?>
</a></span><em><a href="<?php echo $this->_tpl_vars['job_list']['job_url']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['job_list']['name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 11, 'gbk') : mb_substr($_tmp, 0, 11, 'gbk')); ?>
</a></em></li>
      <?php endforeach; endif; unset($_from); ?>
    </ul>
  </div>
  <div class="w980 fl">
    <div class="index_banner_cont fl mt10">
      <div class="index_banner_top"><?php $_from = $this->_tpl_vars['adlists']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['adlists']):
?><?php echo $this->_tpl_vars['adlists']['html']; ?>
<?php endforeach; endif; unset($_from); ?></div>
      <div class="w980">
        <div class="index_banner_cont"> <?php $_from = $this->_tpl_vars['adlist_13']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['adlist_13']):
?>
          <?php echo $this->_tpl_vars['adlist_13']['html']; ?>

          <?php endforeach; endif; unset($_from); ?> 
          <?php $_from = $this->_tpl_vars['adlist_14']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['adlist_14']):
?>
          <?php echo $this->_tpl_vars['adlist_14']['html']; ?>

          <?php endforeach; endif; unset($_from); ?>
          <?php $_from = $this->_tpl_vars['adlist_15']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['adlist_15']):
?>
          <?php echo $this->_tpl_vars['adlist_15']['html']; ?>

          <?php endforeach; endif; unset($_from); ?> </div>
      </div>
    </div>
  </div>
  <div class="index_recommend fl mt10">
    <div class="index_recommend_title fl"><em>最新</em><span>职位</span><a href="<?php echo smarty_function_url(array('m' => 'com','url' => "c:search"), $this);?>
" class="index_more">更多>></a></div>
    <div class="index_newpost fl">
      <ul class="index_newpost_left fl">
        <?php $_from = $this->_tpl_vars['hot']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['hot']):
?>
        <li><em><a href="<?php echo $this->_tpl_vars['hot']['com_url']; ?>
"><?php echo $this->_tpl_vars['hot']['com_n']; ?>
</a></em><span>诚聘：<a href="<?php echo $this->_tpl_vars['hot']['job_url']; ?>
"><?php echo $this->_tpl_vars['hot']['name_n']; ?>
</a></span></li>
        <?php endforeach; endif; unset($_from); ?>
      </ul>
      <div class="index_newpost_right fr">
        <ul class="index_newpost_rtitle fl">
          <li class="current" tab_name="latest">最新人才</li>
          <li class="index_newpost_last" tab_name="introself">照片人才</li>
        </ul>
        <ul class="index_newpost_list fl" id="latest">
          <?php $_from = $this->_tpl_vars['ulist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['ulist']):
?>
          <li><a href="<?php echo smarty_function_url(array('m' => 'resume','url' => "id:".($this->_tpl_vars['ulist']['id'])), $this);?>
"><span><?php echo $this->_tpl_vars['ulist']['username_n']; ?>
</span></a><?php echo ((is_array($_tmp=$this->_tpl_vars['ulist']['job_post'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 10, 'gbk') : mb_substr($_tmp, 0, 10, 'gbk')); ?>
</li>
          <?php endforeach; endif; unset($_from); ?>
        </ul>
        <div class="index_newpost_list fl" id="introself" style="display:none;"> <?php $_from = $this->_tpl_vars['hits']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['hits']):
?>
          <dl class="index_newpost_list_dl">
            <dt> <img  src="<?php echo $this->_tpl_vars['hits']['photo']; ?>
"  width="70" height="60" alt="<?php echo $this->_tpl_vars['hits']['username_n']; ?>
" onerror="showImgDelay(this,'<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['config']['sy_member_icon']; ?>
',2);"/> </dt>
            <dd>
              <div> <a href="<?php echo smarty_function_url(array('m' => 'resume','url' => "id:".($this->_tpl_vars['hits']['id'])), $this);?>
"><?php echo $this->_tpl_vars['hits']['username_n']; ?>
</a> <?php echo $this->_tpl_vars['hits']['age']; ?>
岁</div>
              <div>学历：<?php echo $this->_tpl_vars['hits']['edu_n']; ?>
</div>
              <div><?php echo ((is_array($_tmp=$this->_tpl_vars['hits']['job_post'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 13, 'gbk') : mb_substr($_tmp, 0, 13, 'gbk')); ?>
</div>
            </dd>
          </dl>
          <?php endforeach; endif; unset($_from); ?> </div>
      </div>
    </div>
  </div>
  <!--职场资讯开始-->
      <div class="index_recommend_title fl" style="margin-bottom:0px;"><em>职场</em><span>资讯</span><u> <?php $_from = $this->_tpl_vars['arcgroupright']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['arcgroupright']):
?>
      <?php if ($this->_tpl_vars['key'] > 0): ?>|<?php endif; ?> <a  href="<?php echo $this->_tpl_vars['arcgroupright']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['arcgroupright']['name']; ?>
</a> <?php endforeach; endif; unset($_from); ?> <a <?php if ($this->_tpl_vars['config']['sy_news_rewrite'] == '2'): ?>href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/news.html"<?php else: ?>href="<?php echo smarty_function_url(array('m' => 'news'), $this);?>
"<?php endif; ?>target="_blank">更多>></a> </u></div>
  <div class="index_news">
   
    <!--简历指导--> 
    <?php $_from = $this->_tpl_vars['indexnews']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['indexnews']):
?>
    <div class="index_news_content"> <?php if ($this->_tpl_vars['indexnews']['pic']): ?>
      <dl class="index_news_top">
        <dt> <a href="<?php echo $this->_tpl_vars['indexnews']['pic']['0']['url']; ?>
"> <img width="100" height="80" src="<?php echo $this->_tpl_vars['indexnews']['pic']['0']['newsphoto']; ?>
"> </a> </dt>
        <dd> <strong><a href="<?php echo $this->_tpl_vars['indexnews']['pic']['0']['url']; ?>
"><?php echo $this->_tpl_vars['indexnews']['pic']['0']['title']; ?>
</a></strong> <span><?php echo $this->_tpl_vars['indexnews']['pic']['0']['description']; ?>
...</span> <a href="<?php echo $this->_tpl_vars['indexnews']['pic']['0']['url']; ?>
" target="_blank">[详细]</a> </dd>
      </dl>
      <?php endif; ?>
      <div class="index_news_right">
        <ul>
          <?php $_from = $this->_tpl_vars['indexnews']['arclist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arcitem']):
?>
          <li><span>[<?php echo $this->_tpl_vars['arcitem']['name']; ?>
]</span><a href="<?php echo $this->_tpl_vars['arcitem']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['arcitem']['title']; ?>
</a></li>
          <?php endforeach; endif; unset($_from); ?>
        </ul>
      </div>
    </div>
    <?php endforeach; endif; unset($_from); ?> </div>
  
  <!--职场资讯结束-->
  
  <div class="index_link">
    <div class="index_link_cont">
      <div class="index_recommend_title fl"><em>友情</em><span>链接</span><?php if ($this->_tpl_vars['config']['sy_linksq'] == 0): ?> <a href="<?php echo smarty_function_url(array('m' => 'friend'), $this);?>
" class="index_more">申请链接</a><?php endif; ?></div>
      <div class="index_link_list">
        <div class="index_link_list_img"><?php $_from = $this->_tpl_vars['linklist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['linklist']):
?><a href="<?php echo $this->_tpl_vars['linklist']['link_url']; ?>
"><img src="<?php echo $this->_tpl_vars['linklist']['pic']; ?>
" width="130" height="35" alt="<?php echo $this->_tpl_vars['linklist']['link_name']; ?>
"/></a><?php endforeach; endif; unset($_from); ?></div>
        <div class="index_link_list_name"><?php $_from = $this->_tpl_vars['linklist2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['linklist2']):
?><a href="<?php echo $this->_tpl_vars['linklist2']['link_url']; ?>
"><?php echo $this->_tpl_vars['linklist2']['link_name']; ?>
</a><?php endforeach; endif; unset($_from); ?></div>
      </div>
    </div>
  </div>
  <div class="clear"></div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tplstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>