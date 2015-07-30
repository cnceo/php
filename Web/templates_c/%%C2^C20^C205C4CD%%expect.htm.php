<?php /* Smarty version 2.6.26, created on 2015-07-28 11:21:42
         compiled from member/user/expect.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/user/expect.htm', 427, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<style>
* {margin: 0 ;padding: 0;}
body,div{ margin: 0 ;padding: 0;}
h1{width:90%;height:40px; display:block; float:left;}
.dom_m{float:left; width:100%;}
.dom_m .add{height:17px;}
.dom_m .add a{width:auto; height:17px; text-align:center;}
</style>
<script>
	var dom_sort="<?php echo $this->_tpl_vars['row']['dom_sort']; ?>
";
	$(document).ready(function(e){
		//页面滚动	
		var scrollbottom= $(document).height() - $(window).height() - $(window).scrollTop();
		if(parseInt(scrollbottom)<200){
			$("#resumenume").parent().css("bottom",(350-(parseInt(scrollbottom)))+"px");
		}else if($(window).scrollTop()<200){
			$("#resumenume").parent().css("top","200px");
		}else{
			$("#resumenume").parent().css("bottom","150px");
		}
		if($(window).scrollTop()<83){
			$("#resumenume").css("position","");
		}
		$("#resumenume").parent().slideDown();
		if(document.body.style.overflow!="hidden"&&document.body.scroll!="no" && document.body.scrollHeight>document.body.offsetHeight){
			$("#resumenume").hide();
		}else{
			$(window).scroll(function() {
				var scrolltop = $(this).scrollTop();
				var scrollbottom= $(document).height() - $(this).height() - $(this).scrollTop();
				if(parseInt(scrolltop)>83){
					$("#resumenume").css("position","fixed");
					$("#resumenume").css("top","0px");
				}else{
					$("#resumenume").css("position","");
					$("#resumenume").css("top",parseInt(scrolltop)+"px");
				}
				if(parseInt(scrollbottom)<200){
					$("#resumenume").parent().css("bottom",((200-scrollbottom)+150)+"px");
				}else{
					$("#resumenume").parent().css("bottom","150px");
				}
			});
		}
	});
</script>
<div class="w950">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tplstyle'])."/public_search/index_search.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
  <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/userleft.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
  <link href="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/yun_tck.css" type="text/css" rel="stylesheet">
  <script type="text/javascript" src="<?php echo $this->_tpl_vars['userstyle']; ?>
/js/resume.js"></SCRIPT>
  <script type="text/javascript" src="<?php echo $this->_tpl_vars['userstyle']; ?>
/js/jquery.scrollto.js"></SCRIPT>
  <!--script type="text/javascript" src="<?php echo $this->_tpl_vars['style']; ?>
/js/index.js"></SCRIPT-->
  <script type="text/javascript" src="<?php echo $this->_tpl_vars['userstyle']; ?>
/js/search.js"></SCRIPT>
  <div class="expect_left fltL" id="resume">
    <div class="jianli_boxtit04 mt5"> <span class="s1"> 填写简历</span> <em style="width:200px; float:left;"><font color="#FF0000">*</font> 号项为必填项</em> <span style="float:right;"><a href="index.php" class="jianli_fh_index">返回我的求职主页</a></span></div>
    <div class="clear"></div>
    <div class="expect_cont">
      <div class="jianli_list mt10"> <b>基本资料</b><a id="info_botton" onclick="checkmore('info');" class="jianli_list_add"><em>修改</em></a></div>
     <div class="clear"></div> <!-- 用户已填写基本资料-->
     <div class="clear"></div>
      <div class="expect_cont_box" id="getinfo" <?php if ($this->_tpl_vars['resume']['name'] == ""): ?>style="display:none"<?php endif; ?>>
        <ul class="expect_amend">
          <li style="height:30px;"><span>您的姓名：</span><strong><?php echo $this->_tpl_vars['resume']['name']; ?>
</strong>，<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['sex']]; ?>
</li>
          <li><span>出生年月：</span><?php echo $this->_tpl_vars['resume']['birthday']; ?>
</li>
          <li><span>工作经验：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['exp']]; ?>
</li>
          <li><span>教育程度：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['edu']]; ?>
</li>
          <li><span>联系手机：</span><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</li>
		  <li><span>现居住地：</span><?php echo $this->_tpl_vars['resume']['living']; ?>
</li>
		  <li><span>电子邮件：</span><?php echo $this->_tpl_vars['resume']['email']; ?>
</li>
		  <?php if ($this->_tpl_vars['config']['user_idcard'] == '1'): ?><li><span>身份证号码：</span><?php echo $this->_tpl_vars['resume']['idcard']; ?>
</li> <?php endif; ?>
		  <?php if ($this->_tpl_vars['resume']['basic_info'] == '1'): ?>
			<li><span>身高/体重：</span><?php echo $this->_tpl_vars['resume']['height']; ?>
cm/<?php echo $this->_tpl_vars['resume']['weight']; ?>
kg</li>
          <li><span>婚育状况：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['marriage']]; ?>
</li>
          <li><span>民族：</span><?php echo $this->_tpl_vars['resume']['nationality']; ?>
</li>
          <li><span>座机：</span><?php echo $this->_tpl_vars['resume']['telhome']; ?>
</li>
          <li><span>个人主页：</span><?php echo $this->_tpl_vars['resume']['homepage']; ?>
</li>
		   <li class="expect_amend_end"><span>户籍所在地：</span><?php echo $this->_tpl_vars['resume']['domicile']; ?>
</li>
		   <li class="expect_amend_end"> <span>详细地址：</span><?php echo $this->_tpl_vars['resume']['address']; ?>
</li>
          <?php endif; ?>
          <li class="expect_amend_end"><span>自我评价：</span><em><?php echo $this->_tpl_vars['resume']['description']; ?>
</em></li>
        </ul>
      </div>
      <div class="clear"></div><!-- 用户未填写基本资料--><div class="clear"></div>
      <div class="expect_Not_filled" id="saveinfo" <?php if ($this->_tpl_vars['resume']['name'] != ""): ?>style="display:none"<?php endif; ?>>
        <div class="formbox02">
        <iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
        <form name="MyForm" method="post" action="index.php?c=info" target="supportiframe" onsubmit="return CheckPost();">
          <ul>
            <li class="short">
              <div class="name"><b>*</b> 姓 名：</div>
              <div class="text">
                <input name="name" id="username" type="text" maxlength="50" value="<?php echo $this->_tpl_vars['resume']['name']; ?>
" class="info_text"/>
				<span id="by_name"  style="display:none">请正确填写姓名</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> 性 别：</div>
              <div class="text">
                <?php $_from = $this->_tpl_vars['userdata']['user_sex']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['v']):
?>
              <input id="sex<?php echo $this->_tpl_vars['v']; ?>
" type="radio" 
			  <?php if ($this->_tpl_vars['resume']['sex'] == $this->_tpl_vars['v']): ?>checked="checked"<?php elseif ($this->_tpl_vars['resume']['sex'] == "" && $this->_tpl_vars['key'] == 0): ?>checked="checked"<?php endif; ?>
			  value="<?php echo $this->_tpl_vars['v']; ?>
" name="sex" id="sex">
              <label for="sex<?php echo $this->_tpl_vars['v']; ?>
"><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</label>
              <?php endforeach; endif; unset($_from); ?>
              <span id="by_sex"  style="display:none">请选择性别</span>
              </div>
            </li>

			<?php if ($this->_tpl_vars['config']['user_idcard'] == '1'): ?>
            <li class="short">
              <div class="name"><b>*</b>身份证号码：</div>
              <div class="text">
                <input name="idcard" id="idcard" type="text" size="30" maxlength="20" value="<?php echo $this->_tpl_vars['resume']['idcard']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9Xx.]/g,'')" class="info_text"/>
                <span id="by_idcard"  style="display:none">请正确填写身份证号码</span> </div>
            </li>
			<?php endif; ?>
            <li class="short">
              <div class="name"> <b>*</b> 出生年月：</div>
              <div class="text">
                <link href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/jscal2.css" type="text/css" rel="stylesheet">
                <script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/calendar.js" type="text/javascript"></script>
                <script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/time/en.js" type="text/javascript"></script>
                <input id="birthday" type="text" readonly="" size="10" value="<?php if ($this->_tpl_vars['resume']['birthday'] == ""): ?>1988-08-08<?php else: ?><?php echo $this->_tpl_vars['resume']['birthday']; ?>
<?php endif; ?>" name="birthday" class="text_date_cs">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "birthday",
						trigger : "birthday",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
				</script>
				<span id="by_birthday"  style="display:none">请选择出生年月</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> 现居住地：</div>
              <div class="text">
                <input class="info_text" type="text" value="<?php echo $this->_tpl_vars['resume']['living']; ?>
" size="30" id="living" name="living">
				<span id="by_living"  style="display:none">请填写现居住地</span>
              </div>
            </li>

            <li class="short">
              <div class="name"><b>*</b> 教育程度：</div>
              <div class="text text_seclet_cur3">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['resume']['edu'] == ''): ?>value="请选择教育程度"<?php else: ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['edu']]; ?>
"<?php endif; ?> id="educ" onclick="search_show('job_educ');">
                <input type="hidden" id="educid" name="edu" value="<?php echo $this->_tpl_vars['resume']['edu']; ?>
"/>
                <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_educ">
                  <ul class="Search_Condition_box_list">
                    <?php $_from = $this->_tpl_vars['userdata']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                    <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','educ','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                    <?php endforeach; endif; unset($_from); ?>
                  </ul>
                </div>
				<span id="by_educid"  style="display:none">请选择教育程度</span>
              </div>
            </li>
            <li class="short">
              <div class="name"> <b>*</b> 工作经验：</div>
              <div class="text text_seclet_cur4">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['resume']['exp'] == ''): ?>value="请选择工作经验"<?php else: ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['exp']]; ?>
"<?php endif; ?> id="exp" onclick="search_show('job_exp');">
                <input type="hidden" id="expid" name="exp" value="<?php echo $this->_tpl_vars['resume']['exp']; ?>
"/>
                <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_exp">
                  <ul class="Search_Condition_box_list">
                    <?php $_from = $this->_tpl_vars['userdata']['user_word']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                    <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','exp','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                    <?php endforeach; endif; unset($_from); ?>
                  </ul>
                </div>
				<span id="by_expid"  style="display:none">请选择工作经验</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> 手机：</div>
              <div class="text">
                <input name="telphone" id="telphone" type="text" value="<?php echo $this->_tpl_vars['resume']['telphone']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" class="info_text"/>
                <span id="by_telphone"  style="display:none">请正确填写手机号码</span> </div>
            </li>

            <li class="short">
              <div class="name"> <b>*</b> 电子邮件：</div>
              <div class="text">
                <input name="email" id="email" type="text" size="30" value="<?php echo $this->_tpl_vars['resume']['email']; ?>
" class="info_text"/>
                <span id="by_email"  class="errordisplay">邮件格式错误</span> </div>
            </li>
			 <?php if ($this->_tpl_vars['resume']['basic_info'] == '1'): ?>
            <li class="short">
              <div class="name"> 身高：</div>
              <div class="text">
                <input type="text" name="height" id="height" value="<?php echo $this->_tpl_vars['resume']['height']; ?>
" size="10" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"  class="info_text"/>
                <em>CM</em> </div>
              <div class="name_60"> 民族：</div>
              <div class="text">
                <input type="text" name="nationality" id="nationality" value="<?php echo $this->_tpl_vars['resume']['nationality']; ?>
" size="10" class="info_text"/>
              </div>
            </li>
            <li class="short">
              <div class="name" >体重：</div>
              <div class="text">
                <input type="text" name="weight" id="weight" value="<?php echo $this->_tpl_vars['resume']['weight']; ?>
" size="10" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" class="info_text"/>
                <em> kg</em> </div>
              <div class="name_60"> 婚姻：</div>
              <div class="text text_seclet_cur4">
                <input class="SpFormLBut text_seclet_w134 " type="button" <?php if ($this->_tpl_vars['resume']['marriage'] == ''): ?>value="请选择"<?php else: ?>value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['marriage']]; ?>
"<?php endif; ?> id="marriage" onclick="search_show('job_marriage');">
                <input type="hidden" id="marriageid" name="marriage" value="<?php echo $this->_tpl_vars['resume']['marriage']; ?>
"/>
                <div  class="cus-sel-opt-panel cus-sel-opt-panel-w132 cus-sel-opt-panel-H132" style="display:none" id="job_marriage">
                  <ul class="Search_Condition_box_list">
                    <?php $_from = $this->_tpl_vars['userdata']['user_marriage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                    <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','marriage','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                    <?php endforeach; endif; unset($_from); ?>
                  </ul>
                </div>
              </div>
            </li>
			<li class="short">
              <div class="name"> 座机：</div>
              <div class="text">
                <input name="telhome" id="telhome" type="text" size="30" value="<?php echo $this->_tpl_vars['resume']['telhome']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9-.]/g,'')" class="info_text"/>
              </div>
            </li>
			<li class="short">
              <div class="name"> 户籍所在地：</div>
              <div class="text">
                <input class="info_text" type="text" value="<?php echo $this->_tpl_vars['resume']['domicile']; ?>
" size="30" id="domicile" name="domicile">
              </div>
            </li>
			 <li class="short">
              <div class="name">  详细地址：</div>
              <div class="text">
                <input name="address"  id="address" type="text" value="<?php echo $this->_tpl_vars['resume']['address']; ?>
" size="40" class="info_text">
                <span id="by_address"  style="display:none">请填写详细地址</span></div>
            </li>
            <li class="short">
              <div class="name"> 个人主页/博客：</div>
              <div class="text">
                <input name="homepage" id="homepage" type="text" maxlength="255" size="40" value="<?php echo $this->_tpl_vars['resume']['homepage']; ?>
" class="info_text"/>
              </div>
            </li>
            <?php endif; ?>


            <li class="short">
              <div class="name"> <b>*</b>自我评价：</div>
              <div class="text">
                <textarea name="description" id="description" class="infor_textarea " placeholder="简单介绍下自己，让用人企业更关注你！"><?php echo $this->_tpl_vars['resume']['description']; ?>
</textarea>
				<span id="by_description"  style="display:none">请填写自我评价</span>
              </div>
            </li>
            <li class="short">
              <div class="name">&nbsp;</div>
              <div class="text">
              	<input type="hidden" id="getinfoid" value="<?php if ($this->_tpl_vars['resume']['name'] != ""): ?>1<?php endif; ?>">
                <input type="submit" name="submitBtn" value=" " class="expect_sub2" />
                <img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" onclick="checkClose('info');" style="cursor:pointer;">
              </div>
            </li>
          </ul>
          </form>
        </div>
      </div>
	<div class="clear"></div>
      <div class="jianli_list"> <b>求职意向</b><a id="expect_botton" onclick="checkmore('expect');" class="jianli_list_add"><em>修改</em></a></div>

      <div class="clear"></div><!-- 用户已填写求职意向--><div class="clear"></div>

      <div class="expect_cont_box" id="getexpect" >
        <ul class="expect_amend" id="expect">
          <li><span>简历名称：</span><?php echo $this->_tpl_vars['row']['name']; ?>
</li>
          <li><span>到岗时间：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['report']]; ?>
</li>
          <li><span>期望从事行业：</span><?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
</li>
          <li><span>期望工作地点：</span><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
 <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['cityid']]; ?>
 <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['three_cityid']]; ?>
</li>
          <li><span>期望月薪水：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['salary']]; ?>
</li>
		  <li><span>期望工作性质：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['type']]; ?>
</li>
          <li class="expect_amend_end"><span>期望从事职位：</span><em><?php echo $this->_tpl_vars['job_classname']; ?>
</em></li>
        </ul>
      </div>
      <div class="clear"></div>
    <div class="clear"></div>  <!-- 用户未填写求职意向--><div class="clear"></div>
      <div class="clear"></div>
      <div class="expect_Not_filled" id="saveexpect" style="display:none;">
        <div class="formbox02">
          <ul class="expect_cont_Fill">
            <li>
              <div class="name"> <b>*</b>简历名称：</div>
              <div class="text">
                <input name="name" type="text" value="<?php echo $this->_tpl_vars['row']['name']; ?>
" maxlength="100"  placeholder="例如: 求销售员工作 2年工作经验"  id="expect_name" class="expect_text info_text"/>
              </div>
            </li>
			<li>
              <div class="name"><b>*</b> 期望从事行业：</div>
              <div class="text">
                <div class="text_seclet_cur0 text_seclet_w250 fltL">
                  <input class="SpFormLBut text_seclet_w250 text_seclet_cur4" type="button" <?php if ($this->_tpl_vars['row']['hy']): ?> value="<?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
" <?php else: ?> value="请选择行业" <?php endif; ?> id="hy" onclick="search_show('job_hy');">
                  <input type="hidden" id="hyid" name="hy"  <?php if ($this->_tpl_vars['row']['hy']): ?> value="<?php echo $this->_tpl_vars['row']['hy']; ?>
"<?php endif; ?>/>
                  <div  class="cus-sel-opt-panel" style="display:none" id="job_hy">
                    <ul>
                      <?php $_from = $this->_tpl_vars['industry_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','hy','<?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
           	<li>
              <div class="name"><b>*</b> 期望从事职位：</div>
              <div class="text" style="width:400px; overflow:hidden">
                <input type="button"<?php if ($this->_tpl_vars['job_classname']): ?>value="<?php echo $this->_tpl_vars['job_classname']; ?>
"<?php else: ?> value=" 请选择 "<?php endif; ?>style=" float:left;" class="expect_text" onclick="index_job();" id="workadds_job" >
				<input name='job_class' id='job_class' <?php if ($this->_tpl_vars['row']['job_classid']): ?> value="<?php echo $this->_tpl_vars['row']['job_classid']; ?>
"<?php endif; ?> type='hidden' />
              </div>
            </li>

            <li>
              <div class="name"><b>*</b> 期望工作地点：</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['provinceid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
" <?php else: ?>value="请选择省份"<?php endif; ?> id="province" onclick="search_show('job_province');">
                  <input type="hidden" id="provinceid" name="provinceid" value="<?php echo $this->_tpl_vars['row']['provinceid']; ?>
" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_province">
                    <div style="width:100%;  overflow:auto; overflow-x:hidden"> <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['city_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="select_city('<?php echo $this->_tpl_vars['v']; ?>
','province','<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
','citys','city');"> <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                    </div>
                  </div>
                </div>

                <div class="text_seclet text_seclet_cur fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['cityid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['cityid']]; ?>
" <?php else: ?>value="请选择城市"<?php endif; ?> id="citys" onclick="search_show('job_citys');">
                  <input type="hidden" id="citysid" name="citysid" value="<?php echo $this->_tpl_vars['row']['cityid']; ?>
" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_citys">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['city_type'][$this->_tpl_vars['row']['provinceid']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="select_city('<?php echo $this->_tpl_vars['v']; ?>
','citys','<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
','three_city','city');"> <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>

                <div class="text_seclet text_seclet_cur fltL" id="cityshowth" <?php if ($this->_tpl_vars['row']['three_cityid'] == ''): ?>style="display:none"<?php endif; ?>>
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['three_cityid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['three_cityid']]; ?>
" <?php else: ?>value="请选择区县"<?php endif; ?> id="three_city" onclick="search_show('job_three_city');">
                  <input type="hidden" id="three_cityid" name="three_cityid" value="<?php echo $this->_tpl_vars['row']['three_cityid']; ?>
" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_three_city">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['city_type'][$this->_tpl_vars['row']['cityid']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','three_city','<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>


              </div>
            </li>
            <li>
              <div class="name"><b>*</b> 期望月薪水：</div>
              <div class="text" style="width:400px;">
                <div class=" text_seclet text_seclet_cur2 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['salary']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['salary']]; ?>
" <?php else: ?> value="请选择薪水" <?php endif; ?>  id="salary" onclick="search_show('job_salary');">
                  <input type="hidden" id="salaryid" name="salary" <?php if ($this->_tpl_vars['row']['salary']): ?> value="<?php echo $this->_tpl_vars['row']['salary']; ?>
"<?php endif; ?> />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_salary">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['userdata']['user_salary']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','salary','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
                <em>元/月</em> </div>
            </li>
			<li>
              <div class="name"><b>*</b> 期望工作性质：</div>
              <div class="text" style="width:400px;">
                <div class=" text_seclet text_seclet_cur3 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['type']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['type']]; ?>
" <?php else: ?> value="请选择工作性质" <?php endif; ?>  id="type" onclick="search_show('job_type');">
                  <input type="hidden" id="typeid" name="type" <?php if ($this->_tpl_vars['row']['type']): ?> value="<?php echo $this->_tpl_vars['row']['type']; ?>
"<?php endif; ?> />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_type">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['userdata']['user_type']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','type','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
               </div>
            </li>
            <li>
              <div class="name"><b>*</b> 到岗时间：</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur4 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['report']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['report']]; ?>
" <?php else: ?>value="请选择到岗时间"<?php endif; ?> id="report" onclick="search_show('job_report');">
                  <input type="hidden" id="reportid" name="report" value="<?php echo $this->_tpl_vars['row']['report']; ?>
" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_report">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['userdata']['user_report']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','report','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="name">&nbsp;</div>
              <div class="text"> <a href="javascript:;" onclick="saveexpect();"> <?php if ($_GET['e']): ?> <img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlxg.jpg" title="修改"> <?php else: ?> <img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"> <?php endif; ?> </a>
              <img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" onclick="checkClose('expect');" style="cursor:pointer;"> <input id="dom_m_sort" type="hidden" name="dom_m_sort" value="<?php echo $this->_tpl_vars['row']['dom_sort']; ?>
" />
               </div>
            </li>
          </ul>
        </div>
		</div>
		<div class="clear"></div>
		<div id="dom0" style="height:auto; width:100%; position:static;">
		<div id="m0" class="dom_m"><div class="jianli_list"><h1  ><b>教育经历</b></h1><a id="edu_botton" onclick="checkmore2('edu');" class="jianli_list_add"><em>添加</em></a></div>
      <!-- 用户已填写教育经历-->
      <div class="expect_cont_box" id="eduList">
      <?php $_from = $this->_tpl_vars['edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="edu<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="edu_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>学校名称：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>在校时间：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>所学专业：</span><?php echo $this->_tpl_vars['v']['specialty']; ?>
</li>
          <li><span>担任职位：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>专业描述：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
       </div>
       <div class="clear" id="edu_add"></div>
        <div class="formbox02" id="edu" style="display:none;">
          <ul>
            <li>
              <div class="name"> 学校名称：</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="edu_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 在校时间：</div>
              <div class="text">
                <input class="text_seclet text_seclet_w130 " type="text" name="sdate" value="" size="15" readonly="" id="edu_sdate">
                <script type="text/javascript">
				Calendar.setup({
					weekNumbers: true,
					inputField : "edu_sdate",
					trigger : "edu_sdate",
					dateFormat: "%Y-%m-%d",
					showTime: false,
					onSelect : function() {this.hide();}
				});
            </script>
                <em>到</em>
                <input class="text_seclet text_seclet_w130 " type="text" name="edate" value="" size="15" readonly="" id="edu_edate">
                <script type="text/javascript">
				Calendar.setup({
					weekNumbers: true,

					inputField : "edu_edate",
					trigger : "edu_edate",
					dateFormat: "%Y-%m-%d",
					showTime: false,
					onSelect : function() {this.hide();}
				});
            </script>
              </div>
            </li>
            <li>
              <div class="name"> 所学专业：</div>
              <div class="text">
                <input type="text" value="" size="20" name="specialty" id="edu_specialty"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 担任职位：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="edu_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 专业描述：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="edu_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="eduid" />
          <div class="formbox_right" id="educz"><a href="javascript:;" onclick="saveedu();" ><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="checkClose2('edu');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="删除" ></a></div>
        </div>
         <div class="add Add_expect" id="Addedu"> <a href="javascript:void(0);" onclick="checkmore2('edu');">添加教育经历</a></div>
      </div>
		<!---------------------教育经历 end---------------------------------------->
		<!---------------------培训 begin---------------------------------------->
		<div class="clear"></div>
		<div id="m1" class="dom_m"><div class="jianli_list"><h1 ><b>培训经历</b></h1><a id="training_botton" onclick="checkmore2('training');" class="jianli_list_add"><em>添加</em></a></div>
		<div class="clear"></div> <!-- 用户已填写培训 经历-->
      <div class="expect_cont_box" id="trainingList">
      <?php $_from = $this->_tpl_vars['training']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="training<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="training_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>培训中心：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>培训时间：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>培训方向：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>培训描述：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
    </div>
      <?php endforeach; endif; unset($_from); ?>
        </div>
        <div class="clear" id="training_add"></div>
        <div class="formbox02" id="training" style="display:none;">
          <ul>
            <li>
              <div class="name"> 培训中心：</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="training_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 培训时间：</div>
              <div class="text">
                <input class="text_seclet text_seclet_w130 " type="text" name="sdate" value="" size="15" readonly="" id="training_sdate">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "training_sdate",
						trigger : "training_sdate",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
                </script>
                <em>到</em>
                <input class="text_seclet text_seclet_w130 " type="text" name="edate" value="" size="15" readonly="" id="training_edate">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "training_edate",
						trigger : "training_edate",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
                </script>
              </div>
            </li>
            <li>
              <div class="name"> 培训方向：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="training_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 培训描述：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="training_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="trainingid" />
          <div class="formbox_right" id="trainingcz"><a href="javascript:;" onclick="savetraining();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="checkClose2('training');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="删除" ></a></div>
        </div>
        <div class="add Add_expect" id="Addtraining"> <a href="javascript:void(0);" onclick="checkmore2('training');">添加培训经历</a></div>
      </div>
      <!-------------培训---End------------------->
      <div class="clear"></div>
	  <div id="m2" class="dom_m"><div class="jianli_list"><h1 ><b>专业技能</b></h1><a id="skill_botton" class="jianli_list_add" onclick="checkmore2('skill');"><em>添加</em></a></div>
      <div class="clear"></div><!-- 用户已填写专业技能-->
      <div class="expect_cont_box" id="skillList">
      <?php $_from = $this->_tpl_vars['skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="skill<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">

      <div><div class="expect_modify"><a href="javascript:getresume('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>

        <ul class="expect_amend" id="skill_<?php echo $this->_tpl_vars['v']['id']; ?>
">
		  <li><span>技能名称：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>   
          <li><span>掌握时间：</span><?php echo $this->_tpl_vars['v']['longtime']; ?>
年</li>
          <li><span>技能类别：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['skill']]; ?>
</li>
          <li><span>熟练程度：</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['ing']]; ?>
</li>  
        </ul>
        </div>
        <?php endforeach; endif; unset($_from); ?>
      </div>

      <div class="clear" id="skill_add"></div>
        <div class="formbox02 " id="skill" style="display:none;">
          <ul>
		    <li>
              <div class="name"> 技能名称：</div>
              <div class="text">
                <input type="text" name="name" value="" id="skill_name" class="info_text"/>
                例：英语、C语言、速记 <span id="by_name" class="errordisplay">不能为空</span> </div>
            </li>
            <li>
              <div class="name"> 技能类别：</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur2">
                  <input class="SpFormLBut text_seclet_w134" type="button"  value="请选择技能类别" id="skillc" name="skillc" onclick="search_show('job_skillc');">
                  <input type="hidden" id="skillcid" name="skill" value="" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w132 cus-sel-opt-panel-H72" style="display:none" id="job_skillc">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['userdata']['user_skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','skillc','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
              </div>			  
              <div class="name_60" style="width:90px;"> 熟练程度：</div>
              <div class="text">
                <div class="text_seclet  text_seclet_cur2">
                  <input class="SpFormLBut  text_seclet_w134" type="button"  value="请选择熟练程度" id="level" name="level" onclick="search_show('job_level');">
                  <input type="hidden" id="levelid" name="level" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w132 " style="display:none; height:92px;" id="job_level">
                    <ul class="Search_Condition_box_list">
                      <?php $_from = $this->_tpl_vars['userdata']['user_ing']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
                      <li><a href="javascript:;" onclick="selects('<?php echo $this->_tpl_vars['v']; ?>
','level','<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
');"> <?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</a></li>
                      <?php endforeach; endif; unset($_from); ?>
                    </ul>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="name"> 掌握时间：</div>
              <div class="text">
                <input type="text" name="longtime" size='5' value="" id="skill_longtime"class="info_text"/>年</div>
            </li>

            <li>
              <div class="name">&nbsp;</div>
              <div class="text">
              	<input type="hidden" id="skillid" name="skillid" />
                <div id="skillcz"><a href="javascript:;" onclick="saveskill();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a> <a onclick="javascript:checkClose2('skill');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="取消" ></a></div>
              </div>
            </li>
          </ul>
        </div>

      <div class="add Add_expect" id="Addskill"> <a href="javascript:void(0);" onclick="checkmore2('skill');">添加专业技能</a></div>
      </div>
     <!-------------------专业技能-----END---------------------->
      <!-------------------工作经历-----Begin-------------------->
      <div class="clear"></div>
	  <div id="m3" class="dom_m"><div class="jianli_list"><h1 ><b>工作经历</b></h1><a id="work_botton" onclick="checkmore2('work');" class="jianli_list_add"><em>添加</em></a></div>
   <div class="clear"></div>   <!-- 用户已填写工作经历-->
      <div class="expect_cont_box" id="workList">
      <?php $_from = $this->_tpl_vars['work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="work<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
            <div><div class="expect_modify"><a href="javascript:getresume('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="work_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>单位名称：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>工作时间：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至 <?php if ($this->_tpl_vars['v']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>&nbsp;&nbsp;至今<?php endif; ?></li>
          <li><span>所在部门：</span><?php echo $this->_tpl_vars['v']['department']; ?>
</li>
          <li><span>担任职位：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>工作内容：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
        </div>
        <?php endforeach; endif; unset($_from); ?>
      </div>


        <div class="clear" id="work_add"></div>
        <div class="formbox02" style="display:none;" id="work">
          <ul>
            <li>
              <div class="name"> 单位名称：</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="work_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 工作时间：</div>
              <div class="text">
                <input class="text_seclet text_seclet_w130 " type="text" name="sdate" value="" size="15" readonly="" id="work_sdate"/>
                <script type="text/javascript">
				Calendar.setup({
					weekNumbers: true,
					inputField : "work_sdate",
					trigger : "work_sdate",
					dateFormat: "%Y-%m-%d",
					showTime: false,
					onSelect : function() {this.hide();}
				});
            </script>
            
                <em>到</em>
                <input class="text_seclet text_seclet_w130 " type="text" name="edate" value="" size="15" readonly="" id="work_edate">
				<input type='checkbox' value='1' onclick="totoday()" id='totoday'><label for='totoday'>至今</label>
                <script type="text/javascript">
				Calendar.setup({
					weekNumbers: true,
					inputField : "work_edate",
					trigger : "work_edate",
					dateFormat: "%Y-%m-%d",
					showTime: false,
					onSelect : function() {this.hide();$("#totoday").attr("checked",false);}
				});
            </script>
              </div>
            </li>
            <li>
              <div class="name"> 所在部门：</div>
              <div class="text">
                <input type="text" value="" size="20" name="department" id="work_department"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 担任职位：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="work_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 工作内容：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="work_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="workid" />
          <div class="formbox_right" id="workcz"><a href="javascript:;" onclick="savework();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="javascript:checkClose2('work');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="取消" ></a></div>
        </div>
        <div class="add Add_expect" id="Addwork"><a href="javascript:void(0);" onclick="checkmore2('work');">添加工作经历</a></div>
</div>
     <!-------------------工作 -----END---------------------->
      <!-----------项目经历--Begin-------------->
      <div class="clear"></div>
	  <div id="m4" class="dom_m"><div class="jianli_list"><h1 ><b>项目经历</b></h1><a id="project_botton" onclick="checkmore2('project');" class="jianli_list_add"><em>添加</em></a></div>
    <div class="clear"></div>  <!-- 用户已填写项目经历-->
      <div class="expect_cont_box" id="projectList">
      <?php $_from = $this->_tpl_vars['project']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="project<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
            <div><div class="expect_modify"><a href="javascript:getresume('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="project_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>项目名称：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>项目时间：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>项目环境：</span><?php echo $this->_tpl_vars['v']['sys']; ?>
</li>
          <li><span> 担任职位：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>项目内容：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
        </div>
      <?php endforeach; endif; unset($_from); ?>
 </div>
		<div class="clear" id="project_add"></div>
        <div class="formbox02" id="project" style="display:none;">
          <ul>
            <li>
              <div class="name"> 项目名称：</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="project_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 项目时间：</div>
              <div class="text">
                <input class="text_seclet text_seclet_w130 " type="text" name="sdate" value="" size="15" readonly="" id="project_sdate">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "project_sdate",
						trigger : "project_sdate",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
                </script>
                <em>到</em>
                <input class="text_seclet text_seclet_w130 " type="text" name="edate" value="" size="15" readonly="" id="project_edate">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "project_edate",
						trigger : "project_edate",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
                </script>
              </div>
            </li>
            <li>
              <div class="name"> 项目环境：</div>
              <div class="text">
                <input type="text" value="" size="20" name="sys" id="project_sys"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 担任职位：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="project_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 项目内容：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="project_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="projectid" />
          <div class="formbox_right" id="projectcz"><a href="javascript:;" onclick="saveproject();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="checkClose2('project');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="删除" ></a></div>
        </div>
        <div class="add Add_expect" id="Addproject"><a href="javascript:void(0);" onclick="checkmore2('project');">添加项目经历</a></div>
</div>
      
      <!-------------证书---Begin------------------->
      <div class="clear"></div>
	  <div id="m5" class="dom_m"><div class="jianli_list"><h1 ><b name="m_cert">证书</b></h1><a id="cert_botton" onclick="checkmore2('cert');" class="jianli_list_add"><em>添加</em></a></div>
      <div class="clear"></div><!-- 用户已填写培训 经历-->
      <div class="expect_cont_box" id="certList">
      <?php $_from = $this->_tpl_vars['cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="cert<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="cert_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>证书全称：</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>颁发时间：</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>颁发单位：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>证书描述：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
      </div>
      <div class="clear" id="cert_add"></div>
        <div class="formbox02" id="cert" style="display:none;">
          <ul>
            <li>
              <div class="name"> 证书全称：</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="cert_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name">颁发时间：</div>
              <div class="text">
                <input class="text_seclet text_seclet_w130 " type="text" name="sdate" value="" size="15" readonly="" id="cert_sdate">
                <script type="text/javascript">
					Calendar.setup({
						weekNumbers: true,
						inputField : "cert_sdate",
						trigger : "cert_sdate",
						dateFormat: "%Y-%m-%d",
						showTime: false,
						onSelect : function() {this.hide();}
					});
                </script>  
              </div>
            </li>
            <li>
              <div class="name"> 颁发单位：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="cert_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 证书描述：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="cert_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="certid" />
          <div class="formbox_right" id="certcz"><a href="javascript:;" onclick="savecert();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="checkClose2('cert');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="取消" ></a></div>
        </div>
        <div class="add Add_expect" id="Addcert"> <a href="javascript:void(0);" onclick="checkmore2('cert');">添加证书</a></div>
      </div>
      <!-------------附加信息---Begin------------------->
      <div class="clear"></div>
	  <div id="m6" class="dom_m"><div class="jianli_list"><h1 ><b name="m_other">附加信息</b></h1><a id="other_botton" onclick="checkmore2('other');" class="jianli_list_add"><em>添加</em></a></div>
     <div class="clear"></div> <!-- 用户已填写附加信息-->
            <div class="expect_cont_box" id="otherList">
      <?php $_from = $this->_tpl_vars['other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="other<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">修改</a><a href="javascript:resume_del('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">删除</a></div></div>
        <ul class="expect_amend" id="other_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>其他标题：</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>其他描述：</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
     </div>
      <div class="clear" id="other_add"></div>
        <div class="formbox02" id="other" style="display:none;">
          <ul>
            <li>
              <div class="name"> 其他标题：</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="other_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> 其他描述：</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="other_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="otherid" />
          <div class="formbox_right" id="othercz"><a href="javascript:;" onclick="saveother();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="保存"></a><a onclick="checkClose2('other');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="取消" ></a></div>
        </div>
         <div class="add Add_expect" id="Addother"><a href="javascript:void(0);" onclick="checkmore2('other');">添加附加信息</a></div>
      <div class="operatebox03 mt10">
        <input name="eid" id="eid" type="hidden" value="<?php echo $_GET['e']; ?>
"/>
      </div>
    </div>
    </div>
    </div>
  </div>
</div>
</div>
</div>
<input name="urlid" type="hidden" id="urlid" value="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
"  />
<div id="bg" style="display:none;"></div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>