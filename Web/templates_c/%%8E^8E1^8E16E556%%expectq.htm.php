<?php /* Smarty version 2.6.26, created on 2015-07-28 11:22:36
         compiled from member/user/expectq.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="w950">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tplstyle'])."/public_search/index_search.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
  <liNK href="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/yun_tck.css" type=text/css rel=stylesheet>
  <script charset="utf-8" src="../data/kindeditor/kindeditor-min.js"></script>
  <script charset="utf-8" src="../data/kindeditor/lang/zh_CN.js"></script>
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['userstyle']; ?>
/js/resume.js"></SCRIPT>
  <!--script type="text/javascript" src="<?php echo $this->_tpl_vars['style']; ?>
/js/index.js"></SCRIPT-->
  <script type="text/javascript" src="<?php echo $this->_tpl_vars['userstyle']; ?>
/js/search.js"></SCRIPT>
  <script language="javascript">
var editor;
KindEditor.ready(function(K) {
	editor = K.create('textarea[name="doc"]', {
		resizeType : 1,
		allowPreviewEmoticons : false,
		allowImageUpload : false,
		items : [
			'bold', 'italic', 'underline',
			'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
			'insertunorderedlist']
	});
});
</script>
<style>
* {
    margin: 0 ;
    padding: 0;
}
.cus_h70{height:70px;}
</style>
  <div class="widemainbody">
     <iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
   <div class="expect_left fltL">
    <form name="MyForm" action='index.php?c=expectq&act=save' method="POST" target="supportiframe"  onsubmit="return Checkexpectq();">

      <div class="tabmenubox01 mt9" style="width:730px;">
        <ul style="float:left;width:100%">
          <li class="cur" >黏贴简历</li>
          <li  style="width:100px; font-size:14px; float:right"><font color="#FF0000">*</font> 号项为必填项</li>
        </ul>
      </div>
      <div class="formbox02">
        <ul>
          <li>
            <div class="name"><font color="#FF0000">*</font> 简历名称：</div>
            <div class="text">
              <input name="name" type="text" value="<?php echo $this->_tpl_vars['row']['name']; ?>
" maxlength="100" id='name'class="info_text" />
              <span id="by_name"  class="errordisplay">简历名称不能为空</span> </div>
          </li>
          <li>
            <div class="name"> <font color="#FF0000">*</font> 期望从事行业：</div>
            <div class="text">
              <div class="text_seclet text_seclet_cur" style="z-index:400">
                <input class="SpFormLBut text_seclet_w250 " type="button" <?php if ($this->_tpl_vars['row']['hy']): ?> value="<?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
" <?php else: ?> value="请选择行业" <?php endif; ?> id="hy" onclick="search_show('job_hy');">
                <input type="hidden" id="hyid" name="hy"  <?php if ($this->_tpl_vars['row']['hy']): ?> value="<?php echo $this->_tpl_vars['row']['hy']; ?>
"<?php endif; ?>/>
                <div  class="cus-sel-opt-panel" style="display:none; z-index:301" id="job_hy">
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
              <span id="by_hy"  class="errordisplay">请选择从事行业</span> </div>
          </li>
          <li>
            <div class="name"> <font color="#FF0000">*</font> 期望从事职位：</div>
            <div class="text" style="width:400px; overflow:hidden;">

               <input class="expect_text fltL" type="button"<?php if ($this->_tpl_vars['job_classname']): ?>value="<?php echo $this->_tpl_vars['job_classname']; ?>
"<?php else: ?> value=" 请选择 "<?php endif; ?> class="expect_text" onclick="index_job();" id="workadds_job" >

              <input name='job_classid' id='job_class' <?php if ($this->_tpl_vars['row']['job_classid']): ?> value="<?php echo $this->_tpl_vars['row']['job_classid']; ?>
"<?php endif; ?> type='hidden' />

              <div style="float:left;width:90px;"> (可多选最多5项)</div>

              <span id="by_job_classid"  class="errordisplay">请选择从事职位</span>
            </div>
          </li>
          <li>
            <div class="name"> <font color="#FF0000">*</font> 期望工作地点：</div>
            <div class="text"> <!--<?php if ($this->_tpl_vars['expect_cityname']): ?>
              <input id="city" class="city_input" type="button" value="<?php echo $this->_tpl_vars['expect_cityname']; ?>
" name="workadds" onclick="index_city();">
              <?php else: ?>
              <input id="city" class="city_input" type="button" value="请选择工作地点" name="workadds" onclick="index_city();">

              <?php endif; ?> <span id="by_cityid"  class="errordisplay">请选择</span>-->
               <div class="text_seclet text_seclet_cur fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['provinceid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
" <?php else: ?>value="请选择省份"<?php endif; ?> id="province" onclick="search_show('job_province');">
                  <input type="hidden" id="provinceid" name="provinceid" value="<?php echo $this->_tpl_vars['row']['provinceid']; ?>
" />
                  <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156" style="display:none" id="job_province">
                   <div style="width:100%;  overflow:auto; overflow-x:hidden">
                    <ul class="Search_Condition_box_list">
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
                  <input type="hidden" id="citysid"  name="cityid"  value="<?php echo $this->_tpl_vars['row']['cityid']; ?>
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

                <div class="text_seclet text_seclet_cur fltL" id="cityshowth">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['three_cityid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['three_cityid']]; ?>
" <?php else: ?>value="请选择区县"<?php endif; ?> id="three_city" onclick="search_show('job_three_city');">
                  <input type="hidden" id="three_cityid"  name="three_cityid"  value="<?php echo $this->_tpl_vars['row']['three_cityid']; ?>
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
            <div class="name"> 期望月薪水：</div>
            <div class="text">
              <div class="text_seclet text_seclet_cur2">
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
            </div>
          </li>
          <li>
            <div class="name"> <font color="#FF0000">*</font> 期望工作性质：</div>
            <div class="text">
              <div class="text_seclet text_seclet_cur3 re">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['type']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['type']]; ?>
" <?php else: ?> value="请选择工作性质" <?php endif; ?>  id="type" onclick="search_show('job_type');">
                <input type="hidden" id="typeid" name="type" <?php if ($this->_tpl_vars['row']['type']): ?> value="<?php echo $this->_tpl_vars['row']['type']; ?>
"<?php endif; ?> />
                <div  class="cus-sel-opt-panel cus-sel-opt-panel-w156 cus_h70" style="display:none" id="job_type">

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
            <div class="name"> 到岗时间：</div>
            <div class="text">
              <div class="text_seclet text_seclet_cur4">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['report']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['report']]; ?>
" <?php else: ?> value="请选择到岗时间" <?php endif; ?>  id="report" onclick="search_show('job_report');">
                <input type="hidden" id="reportid" name="report" <?php if ($this->_tpl_vars['row']['report']): ?> value="<?php echo $this->_tpl_vars['row']['report']; ?>
"<?php endif; ?> />
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
            <div class="name"> 黏贴简历内容：</div>
            <div class="text">
              <textarea name="doc" id="content" cols="60" rows="10"><?php echo $this->_tpl_vars['row']['doc']; ?>
</textarea></div>
          </li>
          <li>
            <div class="name">&nbsp;</div>
            <div class="text">
              <input name="eid" type="hidden" value="<?php echo $_GET['e']; ?>
" />
              <input type="submit" name="submit" value=" 保 存" class="info_btn01" />
            </div>
          </li>
        </ul>
      </div>
	</form>
  </div>
  <div class="w920 fltR" >
    <div class="w190  fltR" >
      <div class="resumestatebox01 mt8">
        <h2><span>黏贴简历说明</span></h2>
        <div class="resumestatebox02 mt8">
          <div class="cont">
            <div class="value_p">快速黏贴简历只需选择基本求职意向，然后复制已有简历到内容框中即可！
              <hr size="1" />
              我们并不推荐这种方式，因为我们提供了更加规范的简历格式，一份漂亮的简历可以体现一个人的做事态度，直接影响你的求职成功率！</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<SCRIPT language=javascript>
function Checkexpectq(){
	var msg='';
	if($.trim($("#name").val())==''){msg=$("#by_name").html();}
	if($.trim($("#job_class").val())==''){msg=$("#by_job_classid").html();}
	if($.trim($("#hyid").val())==''){msg=$("#by_hy").html();}
	if($.trim($("#workadds_job").val())==''){msg=$("#by_workadds_job").html();}
	if($.trim($("#three_cityid").val())==''){msg="请选择工作地点";}
	if($.trim($("#typeid").val())==''){msg="请选择工作性质";}
	if(msg){
		layer.msg(msg, 2, 8);return false;
	}
	layer.load('执行中，请稍候...',0);
}
</SCRIPT>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
