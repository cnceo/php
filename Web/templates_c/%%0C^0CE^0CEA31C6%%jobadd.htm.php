<?php /* Smarty version 2.6.26, created on 2015-06-15 20:35:04
         compiled from wap/member/com/jobadd.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/member/cheader.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="<?php echo $this->_tpl_vars['wap_style']; ?>
/js/jobadd.js" language="javascript"></script>
<script>var weburl='<?php echo $this->_tpl_vars['config_wapdomain']; ?>
';</script>
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">企业会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>
 
<div class="main_member_body">
 
 
 
<section class="wap_member">
  <div class="wap_member_comp_h1" style="position:relative"><span>新增职位</span><em class="wap_member_comp_em">以下<font color="#ff0000">*</font> 号为必填项</em></div>
  <div class="resume-cont">
  <div class="resume-cont_zk">
    <div class="resume-cont_wate">
    <form action="" method="post" onsubmit="return checkfrom();">
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 招聘名称：</dt>
        <dd>
          <input type="text" name="name" id='name' value="<?php echo $this->_tpl_vars['row']['name']; ?>
" class="reinputText">
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 招聘职位：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:32%">
              <select name="job1" onchange="checkjob(this.value,'1');">
                <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['job_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['job1'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
            <div class="selectOption" style="width:32%">
              <select name="job1_son" id="job1_son" onchange="checkjob(this.value,'2');">
                <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['job_type'][$this->_tpl_vars['row']['job1']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['job1_son'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
            <div class="selectOption" style="width:32%">
              <select name="job_post" id="job_post">
              <option value="">请选择</option>
                <?php $_from = $this->_tpl_vars['job_type'][$this->_tpl_vars['row']['job1_son']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['job_post'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['job_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 工作地点：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:49%">
              <select name="provinceid" onchange="checkcity(this.value,'1');">
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
            <div class="selectOption" style="width:49%">
              <select name="cityid" id="cityid" onchange="checkcity(this.value,'2');">
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
            <div class="selectOption" style="width:49%">
              <select name="three_cityid" id="three_cityid">
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
        <dt><font color="#ff0000">*</font> 招聘天数：</dt>
        <dd>
          <input type="text" name="days" id='days' value="<?php if ($this->_tpl_vars['row']['days']): ?><?php echo $this->_tpl_vars['row']['days']; ?>
<?php else: ?>30<?php endif; ?>" class="reinputText" style="width:30%" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"></dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt><font color="#ff0000">*</font> 职位描述：</dt>
        <dd>
          <textarea class="textAreaMsg tip" name="description" id="description" placeholder="请输入职位描述500字以内" en="Please input your career direction,limited to 500 characters."><?php echo $this->_tpl_vars['row']['description']; ?>
</textarea>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>从事行业：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="hy">
				<?php $_from = $this->_tpl_vars['industry_index']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
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
        <dt>招聘人数：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="number">
				<?php $_from = $this->_tpl_vars['comdata']['job_number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['number'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>薪水待遇：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="salary">
				<?php $_from = $this->_tpl_vars['comdata']['job_salary']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['salary'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>工作性质：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="type">
				<?php $_from = $this->_tpl_vars['comdata']['job_type']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['type'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>工作经验：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="exp">
				<?php $_from = $this->_tpl_vars['comdata']['job_exp']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['exp'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>到岗时间：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="report">
				<?php $_from = $this->_tpl_vars['comdata']['job_report']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['report'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>年龄要求：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="age">
				<?php $_from = $this->_tpl_vars['comdata']['job_age']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['age'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>性别要求：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="sex">
				<?php $_from = $this->_tpl_vars['comdata']['job_sex']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['sex'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>教育程度：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="edu">
				<?php $_from = $this->_tpl_vars['comdata']['job_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['edu'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>婚姻状况：</dt>
        <dd>
          <div class="mLeft12 relative">
            <div class="selectOption" style="width:100%">
              <select name="marriage">
				<?php $_from = $this->_tpl_vars['comdata']['job_marriage']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
                <option value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['marriage'] == $this->_tpl_vars['v']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</option>
                <?php endforeach; endif; unset($_from); ?>
              </select>
            </div>
          </div>
        </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>语言要求：</dt>
        <dd> 
        <?php $_from = $this->_tpl_vars['comdata']['job_lang']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
        <span class="jobadd_span">
          <input type="checkbox" name="lang[]" value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['lang'] && in_array ( $this->_tpl_vars['v'] , $this->_tpl_vars['row']['lang'] )): ?>checked<?php endif; ?>> <?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</span> 
          <?php endforeach; endif; unset($_from); ?>
          </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>福利待遇：</dt>
        <dd> 
        <?php $_from = $this->_tpl_vars['comdata']['job_welfare']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['j'] => $this->_tpl_vars['v']):
?>
        <span class="jobadd_span">
          <input type="checkbox" name="welfare[]" value="<?php echo $this->_tpl_vars['v']; ?>
" <?php if ($this->_tpl_vars['row']['welfare'] && in_array ( $this->_tpl_vars['v'] , $this->_tpl_vars['row']['welfare'] )): ?>checked<?php endif; ?>> <?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['v']]; ?>
</span> 
          <?php endforeach; endif; unset($_from); ?>
          </dd>
      </dl>
      <dl class="resume-cont_wate_list">
        <dt>&nbsp;</dt>
        <dd>
            <input name="id" value="<?php echo $this->_tpl_vars['row']['id']; ?>
" type="hidden"/>
            <input name="state" value="<?php echo $this->_tpl_vars['row']['state']; ?>
" type="hidden"/>
          <input type="submit" name="submit" value="提交操作" class="reinputText2">
        </dd>
      </dl>
      </form>
    </div>
  </div></div>
  </div>
</section>
</div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 