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
		//ҳ�����	
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
    <div class="jianli_boxtit04 mt5"> <span class="s1"> ��д����</span> <em style="width:200px; float:left;"><font color="#FF0000">*</font> ����Ϊ������</em> <span style="float:right;"><a href="index.php" class="jianli_fh_index">�����ҵ���ְ��ҳ</a></span></div>
    <div class="clear"></div>
    <div class="expect_cont">
      <div class="jianli_list mt10"> <b>��������</b><a id="info_botton" onclick="checkmore('info');" class="jianli_list_add"><em>�޸�</em></a></div>
     <div class="clear"></div> <!-- �û�����д��������-->
     <div class="clear"></div>
      <div class="expect_cont_box" id="getinfo" <?php if ($this->_tpl_vars['resume']['name'] == ""): ?>style="display:none"<?php endif; ?>>
        <ul class="expect_amend">
          <li style="height:30px;"><span>����������</span><strong><?php echo $this->_tpl_vars['resume']['name']; ?>
</strong>��<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['sex']]; ?>
</li>
          <li><span>�������£�</span><?php echo $this->_tpl_vars['resume']['birthday']; ?>
</li>
          <li><span>�������飺</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['exp']]; ?>
</li>
          <li><span>�����̶ȣ�</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['edu']]; ?>
</li>
          <li><span>��ϵ�ֻ���</span><?php echo $this->_tpl_vars['resume']['telphone']; ?>
</li>
		  <li><span>�־�ס�أ�</span><?php echo $this->_tpl_vars['resume']['living']; ?>
</li>
		  <li><span>�����ʼ���</span><?php echo $this->_tpl_vars['resume']['email']; ?>
</li>
		  <?php if ($this->_tpl_vars['config']['user_idcard'] == '1'): ?><li><span>���֤���룺</span><?php echo $this->_tpl_vars['resume']['idcard']; ?>
</li> <?php endif; ?>
		  <?php if ($this->_tpl_vars['resume']['basic_info'] == '1'): ?>
			<li><span>���/���أ�</span><?php echo $this->_tpl_vars['resume']['height']; ?>
cm/<?php echo $this->_tpl_vars['resume']['weight']; ?>
kg</li>
          <li><span>����״����</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['marriage']]; ?>
</li>
          <li><span>���壺</span><?php echo $this->_tpl_vars['resume']['nationality']; ?>
</li>
          <li><span>������</span><?php echo $this->_tpl_vars['resume']['telhome']; ?>
</li>
          <li><span>������ҳ��</span><?php echo $this->_tpl_vars['resume']['homepage']; ?>
</li>
		   <li class="expect_amend_end"><span>�������ڵأ�</span><?php echo $this->_tpl_vars['resume']['domicile']; ?>
</li>
		   <li class="expect_amend_end"> <span>��ϸ��ַ��</span><?php echo $this->_tpl_vars['resume']['address']; ?>
</li>
          <?php endif; ?>
          <li class="expect_amend_end"><span>�������ۣ�</span><em><?php echo $this->_tpl_vars['resume']['description']; ?>
</em></li>
        </ul>
      </div>
      <div class="clear"></div><!-- �û�δ��д��������--><div class="clear"></div>
      <div class="expect_Not_filled" id="saveinfo" <?php if ($this->_tpl_vars['resume']['name'] != ""): ?>style="display:none"<?php endif; ?>>
        <div class="formbox02">
        <iframe id="supportiframe" name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
        <form name="MyForm" method="post" action="index.php?c=info" target="supportiframe" onsubmit="return CheckPost();">
          <ul>
            <li class="short">
              <div class="name"><b>*</b> �� ����</div>
              <div class="text">
                <input name="name" id="username" type="text" maxlength="50" value="<?php echo $this->_tpl_vars['resume']['name']; ?>
" class="info_text"/>
				<span id="by_name"  style="display:none">����ȷ��д����</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> �� ��</div>
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
              <span id="by_sex"  style="display:none">��ѡ���Ա�</span>
              </div>
            </li>

			<?php if ($this->_tpl_vars['config']['user_idcard'] == '1'): ?>
            <li class="short">
              <div class="name"><b>*</b>���֤���룺</div>
              <div class="text">
                <input name="idcard" id="idcard" type="text" size="30" maxlength="20" value="<?php echo $this->_tpl_vars['resume']['idcard']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9Xx.]/g,'')" class="info_text"/>
                <span id="by_idcard"  style="display:none">����ȷ��д���֤����</span> </div>
            </li>
			<?php endif; ?>
            <li class="short">
              <div class="name"> <b>*</b> �������£�</div>
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
				<span id="by_birthday"  style="display:none">��ѡ���������</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> �־�ס�أ�</div>
              <div class="text">
                <input class="info_text" type="text" value="<?php echo $this->_tpl_vars['resume']['living']; ?>
" size="30" id="living" name="living">
				<span id="by_living"  style="display:none">����д�־�ס��</span>
              </div>
            </li>

            <li class="short">
              <div class="name"><b>*</b> �����̶ȣ�</div>
              <div class="text text_seclet_cur3">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['resume']['edu'] == ''): ?>value="��ѡ������̶�"<?php else: ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['edu']]; ?>
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
				<span id="by_educid"  style="display:none">��ѡ������̶�</span>
              </div>
            </li>
            <li class="short">
              <div class="name"> <b>*</b> �������飺</div>
              <div class="text text_seclet_cur4">
                <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['resume']['exp'] == ''): ?>value="��ѡ��������"<?php else: ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['exp']]; ?>
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
				<span id="by_expid"  style="display:none">��ѡ��������</span>
              </div>
            </li>
            <li class="short">
              <div class="name"><b>*</b> �ֻ���</div>
              <div class="text">
                <input name="telphone" id="telphone" type="text" value="<?php echo $this->_tpl_vars['resume']['telphone']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" class="info_text"/>
                <span id="by_telphone"  style="display:none">����ȷ��д�ֻ�����</span> </div>
            </li>

            <li class="short">
              <div class="name"> <b>*</b> �����ʼ���</div>
              <div class="text">
                <input name="email" id="email" type="text" size="30" value="<?php echo $this->_tpl_vars['resume']['email']; ?>
" class="info_text"/>
                <span id="by_email"  class="errordisplay">�ʼ���ʽ����</span> </div>
            </li>
			 <?php if ($this->_tpl_vars['resume']['basic_info'] == '1'): ?>
            <li class="short">
              <div class="name"> ��ߣ�</div>
              <div class="text">
                <input type="text" name="height" id="height" value="<?php echo $this->_tpl_vars['resume']['height']; ?>
" size="10" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')"  class="info_text"/>
                <em>CM</em> </div>
              <div class="name_60"> ���壺</div>
              <div class="text">
                <input type="text" name="nationality" id="nationality" value="<?php echo $this->_tpl_vars['resume']['nationality']; ?>
" size="10" class="info_text"/>
              </div>
            </li>
            <li class="short">
              <div class="name" >���أ�</div>
              <div class="text">
                <input type="text" name="weight" id="weight" value="<?php echo $this->_tpl_vars['resume']['weight']; ?>
" size="10" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" class="info_text"/>
                <em> kg</em> </div>
              <div class="name_60"> ������</div>
              <div class="text text_seclet_cur4">
                <input class="SpFormLBut text_seclet_w134 " type="button" <?php if ($this->_tpl_vars['resume']['marriage'] == ''): ?>value="��ѡ��"<?php else: ?>value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['resume']['marriage']]; ?>
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
              <div class="name"> ������</div>
              <div class="text">
                <input name="telhome" id="telhome" type="text" size="30" value="<?php echo $this->_tpl_vars['resume']['telhome']; ?>
" onkeyup="this.value=this.value.replace(/[^0-9-.]/g,'')" class="info_text"/>
              </div>
            </li>
			<li class="short">
              <div class="name"> �������ڵأ�</div>
              <div class="text">
                <input class="info_text" type="text" value="<?php echo $this->_tpl_vars['resume']['domicile']; ?>
" size="30" id="domicile" name="domicile">
              </div>
            </li>
			 <li class="short">
              <div class="name">  ��ϸ��ַ��</div>
              <div class="text">
                <input name="address"  id="address" type="text" value="<?php echo $this->_tpl_vars['resume']['address']; ?>
" size="40" class="info_text">
                <span id="by_address"  style="display:none">����д��ϸ��ַ</span></div>
            </li>
            <li class="short">
              <div class="name"> ������ҳ/���ͣ�</div>
              <div class="text">
                <input name="homepage" id="homepage" type="text" maxlength="255" size="40" value="<?php echo $this->_tpl_vars['resume']['homepage']; ?>
" class="info_text"/>
              </div>
            </li>
            <?php endif; ?>


            <li class="short">
              <div class="name"> <b>*</b>�������ۣ�</div>
              <div class="text">
                <textarea name="description" id="description" class="infor_textarea " placeholder="�򵥽������Լ�����������ҵ����ע�㣡"><?php echo $this->_tpl_vars['resume']['description']; ?>
</textarea>
				<span id="by_description"  style="display:none">����д��������</span>
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
      <div class="jianli_list"> <b>��ְ����</b><a id="expect_botton" onclick="checkmore('expect');" class="jianli_list_add"><em>�޸�</em></a></div>

      <div class="clear"></div><!-- �û�����д��ְ����--><div class="clear"></div>

      <div class="expect_cont_box" id="getexpect" >
        <ul class="expect_amend" id="expect">
          <li><span>�������ƣ�</span><?php echo $this->_tpl_vars['row']['name']; ?>
</li>
          <li><span>����ʱ�䣺</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['report']]; ?>
</li>
          <li><span>����������ҵ��</span><?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
</li>
          <li><span>���������ص㣺</span><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
 <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['cityid']]; ?>
 <?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['three_cityid']]; ?>
</li>
          <li><span>������нˮ��</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['salary']]; ?>
</li>
		  <li><span>�����������ʣ�</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['type']]; ?>
</li>
          <li class="expect_amend_end"><span>��������ְλ��</span><em><?php echo $this->_tpl_vars['job_classname']; ?>
</em></li>
        </ul>
      </div>
      <div class="clear"></div>
    <div class="clear"></div>  <!-- �û�δ��д��ְ����--><div class="clear"></div>
      <div class="clear"></div>
      <div class="expect_Not_filled" id="saveexpect" style="display:none;">
        <div class="formbox02">
          <ul class="expect_cont_Fill">
            <li>
              <div class="name"> <b>*</b>�������ƣ�</div>
              <div class="text">
                <input name="name" type="text" value="<?php echo $this->_tpl_vars['row']['name']; ?>
" maxlength="100"  placeholder="����: ������Ա���� 2�깤������"  id="expect_name" class="expect_text info_text"/>
              </div>
            </li>
			<li>
              <div class="name"><b>*</b> ����������ҵ��</div>
              <div class="text">
                <div class="text_seclet_cur0 text_seclet_w250 fltL">
                  <input class="SpFormLBut text_seclet_w250 text_seclet_cur4" type="button" <?php if ($this->_tpl_vars['row']['hy']): ?> value="<?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['row']['hy']]; ?>
" <?php else: ?> value="��ѡ����ҵ" <?php endif; ?> id="hy" onclick="search_show('job_hy');">
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
              <div class="name"><b>*</b> ��������ְλ��</div>
              <div class="text" style="width:400px; overflow:hidden">
                <input type="button"<?php if ($this->_tpl_vars['job_classname']): ?>value="<?php echo $this->_tpl_vars['job_classname']; ?>
"<?php else: ?> value=" ��ѡ�� "<?php endif; ?>style=" float:left;" class="expect_text" onclick="index_job();" id="workadds_job" >
				<input name='job_class' id='job_class' <?php if ($this->_tpl_vars['row']['job_classid']): ?> value="<?php echo $this->_tpl_vars['row']['job_classid']; ?>
"<?php endif; ?> type='hidden' />
              </div>
            </li>

            <li>
              <div class="name"><b>*</b> ���������ص㣺</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['provinceid']): ?> value="<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['row']['provinceid']]; ?>
" <?php else: ?>value="��ѡ��ʡ��"<?php endif; ?> id="province" onclick="search_show('job_province');">
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
" <?php else: ?>value="��ѡ�����"<?php endif; ?> id="citys" onclick="search_show('job_citys');">
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
" <?php else: ?>value="��ѡ������"<?php endif; ?> id="three_city" onclick="search_show('job_three_city');">
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
              <div class="name"><b>*</b> ������нˮ��</div>
              <div class="text" style="width:400px;">
                <div class=" text_seclet text_seclet_cur2 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['salary']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['salary']]; ?>
" <?php else: ?> value="��ѡ��нˮ" <?php endif; ?>  id="salary" onclick="search_show('job_salary');">
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
                <em>Ԫ/��</em> </div>
            </li>
			<li>
              <div class="name"><b>*</b> �����������ʣ�</div>
              <div class="text" style="width:400px;">
                <div class=" text_seclet text_seclet_cur3 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['type']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['type']]; ?>
" <?php else: ?> value="��ѡ��������" <?php endif; ?>  id="type" onclick="search_show('job_type');">
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
              <div class="name"><b>*</b> ����ʱ�䣺</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur4 fltL">
                  <input class="SpFormLBut text_seclet_w158" type="button" <?php if ($this->_tpl_vars['row']['report']): ?> value="<?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['row']['report']]; ?>
" <?php else: ?>value="��ѡ�񵽸�ʱ��"<?php endif; ?> id="report" onclick="search_show('job_report');">
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
/images/jlxg.jpg" title="�޸�"> <?php else: ?> <img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"> <?php endif; ?> </a>
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
		<div id="m0" class="dom_m"><div class="jianli_list"><h1  ><b>��������</b></h1><a id="edu_botton" onclick="checkmore2('edu');" class="jianli_list_add"><em>���</em></a></div>
      <!-- �û�����д��������-->
      <div class="expect_cont_box" id="eduList">
      <?php $_from = $this->_tpl_vars['edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="edu<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('edu','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="edu_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>ѧУ���ƣ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>��Уʱ�䣺</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
��<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>��ѧרҵ��</span><?php echo $this->_tpl_vars['v']['specialty']; ?>
</li>
          <li><span>����ְλ��</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>רҵ������</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
       </div>
       <div class="clear" id="edu_add"></div>
        <div class="formbox02" id="edu" style="display:none;">
          <ul>
            <li>
              <div class="name"> ѧУ���ƣ�</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="edu_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ��Уʱ�䣺</div>
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
                <em>��</em>
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
              <div class="name"> ��ѧרҵ��</div>
              <div class="text">
                <input type="text" value="" size="20" name="specialty" id="edu_specialty"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ����ְλ��</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="edu_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> רҵ������</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="edu_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="eduid" />
          <div class="formbox_right" id="educz"><a href="javascript:;" onclick="saveedu();" ><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="checkClose2('edu');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ɾ��" ></a></div>
        </div>
         <div class="add Add_expect" id="Addedu"> <a href="javascript:void(0);" onclick="checkmore2('edu');">��ӽ�������</a></div>
      </div>
		<!---------------------�������� end---------------------------------------->
		<!---------------------��ѵ begin---------------------------------------->
		<div class="clear"></div>
		<div id="m1" class="dom_m"><div class="jianli_list"><h1 ><b>��ѵ����</b></h1><a id="training_botton" onclick="checkmore2('training');" class="jianli_list_add"><em>���</em></a></div>
		<div class="clear"></div> <!-- �û�����д��ѵ ����-->
      <div class="expect_cont_box" id="trainingList">
      <?php $_from = $this->_tpl_vars['training']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="training<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('training','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="training_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>��ѵ���ģ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>��ѵʱ�䣺</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
��<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>��ѵ����</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>��ѵ������</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
    </div>
      <?php endforeach; endif; unset($_from); ?>
        </div>
        <div class="clear" id="training_add"></div>
        <div class="formbox02" id="training" style="display:none;">
          <ul>
            <li>
              <div class="name"> ��ѵ���ģ�</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="training_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ��ѵʱ�䣺</div>
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
                <em>��</em>
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
              <div class="name"> ��ѵ����</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="training_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ��ѵ������</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="training_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="trainingid" />
          <div class="formbox_right" id="trainingcz"><a href="javascript:;" onclick="savetraining();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="checkClose2('training');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ɾ��" ></a></div>
        </div>
        <div class="add Add_expect" id="Addtraining"> <a href="javascript:void(0);" onclick="checkmore2('training');">�����ѵ����</a></div>
      </div>
      <!-------------��ѵ---End------------------->
      <div class="clear"></div>
	  <div id="m2" class="dom_m"><div class="jianli_list"><h1 ><b>רҵ����</b></h1><a id="skill_botton" class="jianli_list_add" onclick="checkmore2('skill');"><em>���</em></a></div>
      <div class="clear"></div><!-- �û�����дרҵ����-->
      <div class="expect_cont_box" id="skillList">
      <?php $_from = $this->_tpl_vars['skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="skill<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">

      <div><div class="expect_modify"><a href="javascript:getresume('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('skill','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>

        <ul class="expect_amend" id="skill_<?php echo $this->_tpl_vars['v']['id']; ?>
">
		  <li><span>�������ƣ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>   
          <li><span>����ʱ�䣺</span><?php echo $this->_tpl_vars['v']['longtime']; ?>
��</li>
          <li><span>�������</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['skill']]; ?>
</li>
          <li><span>�����̶ȣ�</span><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['ing']]; ?>
</li>  
        </ul>
        </div>
        <?php endforeach; endif; unset($_from); ?>
      </div>

      <div class="clear" id="skill_add"></div>
        <div class="formbox02 " id="skill" style="display:none;">
          <ul>
		    <li>
              <div class="name"> �������ƣ�</div>
              <div class="text">
                <input type="text" name="name" value="" id="skill_name" class="info_text"/>
                ����Ӣ�C���ԡ��ټ� <span id="by_name" class="errordisplay">����Ϊ��</span> </div>
            </li>
            <li>
              <div class="name"> �������</div>
              <div class="text">
                <div class="text_seclet text_seclet_cur2">
                  <input class="SpFormLBut text_seclet_w134" type="button"  value="��ѡ�������" id="skillc" name="skillc" onclick="search_show('job_skillc');">
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
              <div class="name_60" style="width:90px;"> �����̶ȣ�</div>
              <div class="text">
                <div class="text_seclet  text_seclet_cur2">
                  <input class="SpFormLBut  text_seclet_w134" type="button"  value="��ѡ�������̶�" id="level" name="level" onclick="search_show('job_level');">
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
              <div class="name"> ����ʱ�䣺</div>
              <div class="text">
                <input type="text" name="longtime" size='5' value="" id="skill_longtime"class="info_text"/>��</div>
            </li>

            <li>
              <div class="name">&nbsp;</div>
              <div class="text">
              	<input type="hidden" id="skillid" name="skillid" />
                <div id="skillcz"><a href="javascript:;" onclick="saveskill();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a> <a onclick="javascript:checkClose2('skill');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ȡ��" ></a></div>
              </div>
            </li>
          </ul>
        </div>

      <div class="add Add_expect" id="Addskill"> <a href="javascript:void(0);" onclick="checkmore2('skill');">���רҵ����</a></div>
      </div>
     <!-------------------רҵ����-----END---------------------->
      <!-------------------��������-----Begin-------------------->
      <div class="clear"></div>
	  <div id="m3" class="dom_m"><div class="jianli_list"><h1 ><b>��������</b></h1><a id="work_botton" onclick="checkmore2('work');" class="jianli_list_add"><em>���</em></a></div>
   <div class="clear"></div>   <!-- �û�����д��������-->
      <div class="expect_cont_box" id="workList">
      <?php $_from = $this->_tpl_vars['work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="work<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
            <div><div class="expect_modify"><a href="javascript:getresume('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('work','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="work_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>��λ���ƣ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>����ʱ�䣺</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
�� <?php if ($this->_tpl_vars['v']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>&nbsp;&nbsp;����<?php endif; ?></li>
          <li><span>���ڲ��ţ�</span><?php echo $this->_tpl_vars['v']['department']; ?>
</li>
          <li><span>����ְλ��</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>�������ݣ�</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
        </div>
        <?php endforeach; endif; unset($_from); ?>
      </div>


        <div class="clear" id="work_add"></div>
        <div class="formbox02" style="display:none;" id="work">
          <ul>
            <li>
              <div class="name"> ��λ���ƣ�</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="work_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ����ʱ�䣺</div>
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
            
                <em>��</em>
                <input class="text_seclet text_seclet_w130 " type="text" name="edate" value="" size="15" readonly="" id="work_edate">
				<input type='checkbox' value='1' onclick="totoday()" id='totoday'><label for='totoday'>����</label>
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
              <div class="name"> ���ڲ��ţ�</div>
              <div class="text">
                <input type="text" value="" size="20" name="department" id="work_department"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ����ְλ��</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="work_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> �������ݣ�</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="work_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="workid" />
          <div class="formbox_right" id="workcz"><a href="javascript:;" onclick="savework();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="javascript:checkClose2('work');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ȡ��" ></a></div>
        </div>
        <div class="add Add_expect" id="Addwork"><a href="javascript:void(0);" onclick="checkmore2('work');">��ӹ�������</a></div>
</div>
     <!-------------------���� -----END---------------------->
      <!-----------��Ŀ����--Begin-------------->
      <div class="clear"></div>
	  <div id="m4" class="dom_m"><div class="jianli_list"><h1 ><b>��Ŀ����</b></h1><a id="project_botton" onclick="checkmore2('project');" class="jianli_list_add"><em>���</em></a></div>
    <div class="clear"></div>  <!-- �û�����д��Ŀ����-->
      <div class="expect_cont_box" id="projectList">
      <?php $_from = $this->_tpl_vars['project']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="project<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
            <div><div class="expect_modify"><a href="javascript:getresume('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('project','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="project_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>��Ŀ���ƣ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>��Ŀʱ�䣺</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
��<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>��Ŀ������</span><?php echo $this->_tpl_vars['v']['sys']; ?>
</li>
          <li><span> ����ְλ��</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>��Ŀ���ݣ�</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
        </div>
      <?php endforeach; endif; unset($_from); ?>
 </div>
		<div class="clear" id="project_add"></div>
        <div class="formbox02" id="project" style="display:none;">
          <ul>
            <li>
              <div class="name"> ��Ŀ���ƣ�</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="project_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ��Ŀʱ�䣺</div>
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
                <em>��</em>
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
              <div class="name"> ��Ŀ������</div>
              <div class="text">
                <input type="text" value="" size="20" name="sys" id="project_sys"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ����ְλ��</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="project_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ��Ŀ���ݣ�</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="project_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="projectid" />
          <div class="formbox_right" id="projectcz"><a href="javascript:;" onclick="saveproject();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="checkClose2('project');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ɾ��" ></a></div>
        </div>
        <div class="add Add_expect" id="Addproject"><a href="javascript:void(0);" onclick="checkmore2('project');">�����Ŀ����</a></div>
</div>
      
      <!-------------֤��---Begin------------------->
      <div class="clear"></div>
	  <div id="m5" class="dom_m"><div class="jianli_list"><h1 ><b name="m_cert">֤��</b></h1><a id="cert_botton" onclick="checkmore2('cert');" class="jianli_list_add"><em>���</em></a></div>
      <div class="clear"></div><!-- �û�����д��ѵ ����-->
      <div class="expect_cont_box" id="certList">
      <?php $_from = $this->_tpl_vars['cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="cert<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('cert','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="cert_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>֤��ȫ�ƣ�</span><?php echo $this->_tpl_vars['v']['name']; ?>
</li>
          <li><span>�䷢ʱ�䣺</span><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</li>
          <li><span>�䷢��λ��</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>֤��������</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
      </div>
      <div class="clear" id="cert_add"></div>
        <div class="formbox02" id="cert" style="display:none;">
          <ul>
            <li>
              <div class="name"> ֤��ȫ�ƣ�</div>
              <div class="text">
                <input type="text" value="" size="40" name="name" id="cert_name"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name">�䷢ʱ�䣺</div>
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
              <div class="name"> �䷢��λ��</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="cert_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ֤��������</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="cert_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="certid" />
          <div class="formbox_right" id="certcz"><a href="javascript:;" onclick="savecert();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="checkClose2('cert');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ȡ��" ></a></div>
        </div>
        <div class="add Add_expect" id="Addcert"> <a href="javascript:void(0);" onclick="checkmore2('cert');">���֤��</a></div>
      </div>
      <!-------------������Ϣ---Begin------------------->
      <div class="clear"></div>
	  <div id="m6" class="dom_m"><div class="jianli_list"><h1 ><b name="m_other">������Ϣ</b></h1><a id="other_botton" onclick="checkmore2('other');" class="jianli_list_add"><em>���</em></a></div>
     <div class="clear"></div> <!-- �û�����д������Ϣ-->
            <div class="expect_cont_box" id="otherList">
      <?php $_from = $this->_tpl_vars['other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
      <div class="expect_tj_list" id="other<?php echo $this->_tpl_vars['v']['id']; ?>
" onmousemove="movelook('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');" onmouseout="outlook('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">
      <div><div class="expect_modify"><a href="javascript:getresume('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">�޸�</a><a href="javascript:resume_del('other','<?php echo $this->_tpl_vars['v']['id']; ?>
');">ɾ��</a></div></div>
        <ul class="expect_amend" id="other_<?php echo $this->_tpl_vars['v']['id']; ?>
">
          <li><span>�������⣺</span><?php echo $this->_tpl_vars['v']['title']; ?>
</li>
          <li class="expect_amend_end"><span>����������</span><em><?php echo $this->_tpl_vars['v']['content']; ?>
</em></li>
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?>
     </div>
      <div class="clear" id="other_add"></div>
        <div class="formbox02" id="other" style="display:none;">
          <ul>
            <li>
              <div class="name"> �������⣺</div>
              <div class="text">
                <input type="text" value="" size="20" name="title" id="other_title"class="info_text"/>
              </div>
            </li>
            <li>
              <div class="name"> ����������</div>
              <div class="text">
                <textarea rows="5" cols="50" name="content" id="other_content" class="infor_textarea "></textarea>
              </div>
            </li>
          </ul>
          <input type="hidden" id="otherid" />
          <div class="formbox_right" id="othercz"><a href="javascript:;" onclick="saveother();"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlbc.jpg" title="����"></a><a onclick="checkClose2('other');"><img src="<?php echo $this->_tpl_vars['userstyle']; ?>
/images/jlsc.jpg" title="ȡ��" ></a></div>
        </div>
         <div class="add Add_expect" id="Addother"><a href="javascript:void(0);" onclick="checkmore2('other');">��Ӹ�����Ϣ</a></div>
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