<?php /* Smarty version 2.6.26, created on 2015-06-15 18:19:57
         compiled from wap/member/user/addresume.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/member/user/addresume.htm', 340, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<script src="<?php echo $this->_tpl_vars['wap_style']; ?>
/js/resume.js" language="javascript"></script> 
<script>var weburl='<?php echo $this->_tpl_vars['config_wapdomain']; ?>
';</script>
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">个人会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>
 
 
<div class="resume-cont"> <a href="javascript:checkshow('info');" id="infobutton" class="resume-cont_p" style="display:none">
  <div class="resume-cont_h1" ><span>基本资料</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="info">
    <div class="resume-cont_h2" onclick="checkhide('info');"><span >基本资料</span></div>
    <div class="resume-cont_wate">
    <form id="resumeInfo" action="index.php?c=info" method="post" onsubmit="return checkinfo()">
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 姓 名</dt>
        <dd>
          <input type="text" name="name" value="<?php echo $this->_tpl_vars['resume']['name']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 性 别</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="sex">
              <?php $_from = $this->_tpl_vars['userdata']['user_sex']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
              <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['resume']['sex'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
              <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><?php if ($this->_tpl_vars['config']['user_idcard'] == '1'): ?><font color="#ff0000">*</font><?php endif; ?>身份证号码</dt>
        <dd>
          <input type="text" name="idcard" value="<?php echo $this->_tpl_vars['resume']['idcard']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt ><font color="#ff0000">*</font> 出生年月 </dt>
        <dd>
          <input type="text" name="birthday" id="birthday" value="<?php echo $this->_tpl_vars['resume']['birthday']; ?>
" class="reinputText" >
         
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 现居住地</dt>
        <dd>
          <input type="text" name="living" id="living" value="<?php echo $this->_tpl_vars['resume']['living']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 教育程度</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="edu">
              <?php $_from = $this->_tpl_vars['userdata']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
              <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['resume']['edu'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
              <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 工作经验</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="exp">
              <?php $_from = $this->_tpl_vars['userdata']['user_word']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
              <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['resume']['exp'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
              <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 手机</dt>
        <dd>
          <input type="text" name="telphone" id="telphone" value="<?php echo $this->_tpl_vars['resume']['telphone']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 电子邮件</dt>
        <dd>
          <input type="text" name="email" id="email" value="<?php echo $this->_tpl_vars['resume']['email']; ?>
"  class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>身高（CM）</dt>
        <dd>
          <input type="text" name="height" value="<?php echo $this->_tpl_vars['resume']['height']; ?>
" class="reinputText" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>民族</dt>
        <dd>
          <input type="text" name="nationality" value="<?php echo $this->_tpl_vars['resume']['nationality']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>体重（kg）</dt>
        <dd>
          <input type="text" name="weight" value="<?php echo $this->_tpl_vars['resume']['weight']; ?>
" class="reinputText" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>座机</dt>
        <dd>
          <input type="text" name="telhome" value="<?php echo $this->_tpl_vars['resume']['telhome']; ?>
"  class="reinputText" onkeyup="this.value=this.value.replace(/[^0-9-]/g,'')">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt> 婚姻</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="marriage">
              <?php $_from = $this->_tpl_vars['userdata']['user_marriage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
              <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['resume']['marriage'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
              <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>户籍所在地</dt>
        <dd>
          <input type="text" name="domicile" value="<?php echo $this->_tpl_vars['resume']['domicile']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>详细地址</dt>
        <dd>
          <input type="text" name="address" value="<?php echo $this->_tpl_vars['resume']['address']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>个人主页</dt>
        <dd>
          <input type="text" name="homepage" value="<?php echo $this->_tpl_vars['resume']['homepage']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 自我评价</dt>
        <dd>
          <textarea class="textAreaMsg tip" name="description" id="description" placeholder="请输入你的发展方向，500字以内" en="Please input your career direction,limited to 500 characters."><?php echo $this->_tpl_vars['resume']['description']; ?>
</textarea>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd>
          <input type="submit" name="submit" value="保存" class="reinputText2">
        </dd>
      </dl>
      </form>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('expect');" id="expectbutton" class="resume-cont_p">
  <div class="resume-cont_h1"><span>求职意向</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="expect" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('expect');"><span>求职意向</span></div>
    <div class="resume-cont_wate">
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font>简历名称</dt>
        <dd>
          <input type="text" value="<?php echo $this->_tpl_vars['row']['name']; ?>
" id="expect_name" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font>期望从事行业</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select id="hy">
              <?php $_from = $this->_tpl_vars['industry_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
              <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['hy'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['v']]; ?>
</option>
              <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font>期望从事职位</dt>
        <input type="hidden" id="job_classid" value="<?php echo $this->_tpl_vars['row']['job_classid']; ?>
" />
        <dd>
              <input type="button" id="jobclassbutton" value="<?php echo $this->_tpl_vars['jobname']; ?>
" class="reinputText" onclick="checkshowjob('job');" style="height:28px; background:#fff"/>
              <div class="job_search_box_jobclass" style="display:none; float:left;width:100%;height:auto; z-index:100; position:absolute; background-color:#FFF;">
        	<ul>
            	<?php $_from = $this->_tpl_vars['job_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <li style="width:auto;float:left;display:none; list-style-type:none; margin:5px 10px 5px 10px;" class="jobsearchjobclass 0" jobclassid="<?php echo $this->_tpl_vars['v']; ?>
" parentid="0"><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
</li>
                <?php $_from = $this->_tpl_vars['job_type'][$this->_tpl_vars['v']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v1']):
?>
                <li style="width:auto;float:left;display:none; list-style-type:none; margin:5px 10px 5px 10px;" class="jobsearchjobclass1 <?php echo $this->_tpl_vars['v']; ?>
" jobclassid="<?php echo $this->_tpl_vars['v1']; ?>
" parentid="<?php echo $this->_tpl_vars['v']; ?>
"><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v1']]; ?>
</li>
                <?php $_from = $this->_tpl_vars['job_type'][$this->_tpl_vars['v1']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v2']):
?>
                <li style="width:auto;float:left;display:none; list-style-type:none; margin:5px 10px 5px 10px;" class="jobsearchjobclass2 <?php echo $this->_tpl_vars['v1']; ?>
" jobclassid="<?php echo $this->_tpl_vars['v2']; ?>
" parentid="<?php echo $this->_tpl_vars['v1']; ?>
"><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v2']]; ?>
</li>
                <?php endforeach; endif; unset($_from); ?>
                <?php endforeach; endif; unset($_from); ?>
                <?php endforeach; endif; unset($_from); ?> 
           	</ul>
    	</div>
        <input type="hidden" name="job1" id="job1" value="" />
        <input type="hidden" name="job1_son" id="job1_son" value="" />
        <input type="hidden" name="job_post" id="job_post" value="" />
        <input type="hidden" name="job_classid" id="job_classid" value="" />
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font>期望工作地点</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:31%">
              <select id="provinceid" onchange="checkcity(this.value,'1');">
                <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['city_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['provinceid'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
            <div class="selectOption" style="width:31%">
              <select  id="cityid" onchange="checkcity(this.value,'2');">
                <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['city_type'][$this->_tpl_vars['row']['provinceid']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['cityid'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
            <div class="selectOption" style="width:31%">
              <select id="three_cityid">
                <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['city_type'][$this->_tpl_vars['row']['cityid']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['three_cityid'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 期望月薪水</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:70%">
              <select id="salary">
				<?php $_from = $this->_tpl_vars['userdata']['user_salary']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['salary'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
            元/月 </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font>到岗时间</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select id="report">
				<?php $_from = $this->_tpl_vars['userdata']['user_report']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['report'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd>
        <input type="hidden" id="eid" value="<?php echo $this->_tpl_vars['row']['eid']; ?>
" />
          <input type="submit" onclick="saveexpect();" value="保存" class="reinputText2">
        </dd>
      </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('skill');" id="skillbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>专业技能</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="skill" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('skill');"><span>专业技能</span></div>
	<?php $_from = $this->_tpl_vars['skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>技能类别：</dt>
        <dd><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['skill']]; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>熟练程度：</dt>
        <dd><?php echo $this->_tpl_vars['userclass_name'][$this->_tpl_vars['v']['ing']]; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>技能名称：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
&nbsp;</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>掌握时间：</dt>
        <dd><?php echo $this->_tpl_vars['v']['longtime']; ?>
个月</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=skill&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=skill&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=skill&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('work');" id="workbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>工作经历</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="work" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('work');"><span>工作经历</span></div>
	<?php $_from = $this->_tpl_vars['work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>单位名称：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>工作时间：</dt>
        <dd><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>所在部门：</dt>
        <dd><?php echo $this->_tpl_vars['v']['department']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>担任职位：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>工作内容：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=work&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=work&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=work&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('project');" id="projectbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>项目经历</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="project" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('project');"><span>项目经历</span></div>
	<?php $_from = $this->_tpl_vars['project']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>项目名称：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>项目时间：</dt>
        <dd><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>项目环境：</dt>
        <dd><?php echo $this->_tpl_vars['v']['sys']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>担任职位：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>项目内容：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=project&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=project&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=project&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('edu');" id="edubutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>教育经历</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="edu" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('edu');"><span>教育经历</span></div>
	<?php $_from = $this->_tpl_vars['edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>学校名称：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>在校时间：</dt>
        <dd><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>所学专业：</dt>
        <dd><?php echo $this->_tpl_vars['v']['specialty']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>担任职位：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>专业描述：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=edu&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=edu&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=edu&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('training');" id="trainingbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>培训经历</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="training" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('training');"><span>培训经历</span></div>
	<?php $_from = $this->_tpl_vars['training']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>培训中心：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>培训时间：</dt>
        <dd><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>培训方向：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>培训描述：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=training&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=training&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=training&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('cert');" id="certbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>证书</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="cert" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('cert');"><span>证书</span></div>
	<?php $_from = $this->_tpl_vars['cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>证书全称：</dt>
        <dd><?php echo $this->_tpl_vars['v']['name']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>有效时间：</dt>
        <dd><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
至<?php echo ((is_array($_tmp=$this->_tpl_vars['v']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>颁发单位：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>证书描述：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=cert&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=cert&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=cert&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
<div class="resume-cont"> <a href="javascript:checkshow('other');" id="otherbutton" class="resume-cont_p">
  <div class="resume-cont_h1" ><span>附加信息</span><i class="resume-icon"></i></div>
  </a>
  <div class="resume-cont_zk" id="other" style="display:none">
    <div class="resume-cont_h2" onclick="checkhide('other');"><span>附加信息</span></div>
	<?php $_from = $this->_tpl_vars['other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
    <div class="resume-cont_wate resume-cont_wate_yt">
      <dl class="resume-cont_wate_list">
        <dt>其他标题：</dt>
        <dd><?php echo $this->_tpl_vars['v']['title']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>其他描述：</dt>
        <dd><?php echo $this->_tpl_vars['v']['content']; ?>
</dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd> <a class="resume_xg_a resume_xg" href="index.php?c=addresumeson&type=other&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
">修改</a>
        <a class="resume_xg_a resume_sc" href="javascript:void(0)" onclick="isdel('index.php?c=addresume&type=other&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
&id=<?php echo $this->_tpl_vars['v']['id']; ?>
')">删除</a> </dd>
      </dl>
    </div>
    <?php endforeach; endif; unset($_from); ?>
    <div class="resume-cont_wate resume-cont_wate_yt">
    <dl class="resume-cont_wate_list">
    <a class="resume_xg_a resume_tj" href="index.php?c=addresumeson&type=other&eid=<?php echo $this->_tpl_vars['row']['id']; ?>
">添加</a>
    </dl>
    </div>
  </div>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/public.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 