<?php /* Smarty version 2.6.26, created on 2015-07-28 11:21:42
         compiled from ../template/member/user/userleft.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '../template/member/user/userleft.htm', 36, false),array('function', 'url', '../template/member/user/userleft.htm', 64, false),)), $this); ?>

<div class="widemainbody">
<div class="w920">
<div class="w190 fl">
  <div class="resumestatebox01" id="resumenume" style="">
    <h2><span>简历完整度</span></h2>
    <?php if ($this->_tpl_vars['numresume'] > 20): ?>

    <?php endif; ?> 
    <div class="resumestatebox02 mt8">
      <div class="cont">
        <div id="_ctl0_UserManage_LeftTree1_progressDiv" class="bar" style="width:100px">
          <div class="play" style="width:<?php echo $this->_tpl_vars['numresume']; ?>
px"></div>
        </div>
        <div class="value"><b id="numresume"><?php echo $this->_tpl_vars['numresume']; ?>
%</b></div>
        <div id="_ctl0_UserManage_LeftTree1_msnInfo" class="intro"> <?php if ($this->_tpl_vars['numresume'] > 60): ?> 您的简历已符合要求！<?php endif; ?>
          <?php if ($this->_tpl_vars['numresume'] < 55): ?>  您现在的简历完整度太低，还不能够使用此简历应聘!<?php endif; ?> </div>
      </div>
    </div>
    
    <ul>
    <li style="border-top:none;">
        <div class="tit"><a onclick="checkmore('info');" href="javascript:void(0);">基本信息</a></div>
        <div class="resume_expect state <?php if ($this->_tpl_vars['resume']['name'] != ''): ?> state_done<?php endif; ?>">+20%</div>
      </li>
      <li style="border-top:none;">
        <div class="tit"><a onclick="checkmore('expect');" href="javascript:void(0);">求职意向</a></div>
        <div class="resume_expect state <?php if ($this->_tpl_vars['resume_row']['expect'] == 1): ?> state_done<?php endif; ?>">+35%</div>
      </li>
   </ul>
   <div class="clear"></div>
   <div class="re_right_pd">
   <div id="dom0_right" >
	 <div id="m_right0" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('edu');" href="javascript:void(0);">教育经历</a></div>
        <div class="m_right_edu dom_m_right_state resume_edu state <?php if (count($this->_tpl_vars['edu']) >= 1): ?> state_done<?php endif; ?>">+7%</div>
      </div>
      <div id="m_right1" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('training');" href="javascript:void(0);">培训经历</a></div>
        <div class="m_right_training dom_m_right_state resume_training state <?php if (count($this->_tpl_vars['training']) >= 1): ?> state_done<?php endif; ?>">+7%</div>
      </div>
      <div id="m_right2" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('skill');" href="javascript:void(0);">专业技能</a></div>
        <div class="m_right_skill dom_m_right_state resume_skill state <?php if (count($this->_tpl_vars['skill']) >= 1): ?> state_done<?php endif; ?>">+10%</div>
      </div>
      <div id="m_right3" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('work');" href="javascript:void(0);">工作经历</a></div>
        <div class="m_right_work dom_m_right_state resume_work state <?php if (count($this->_tpl_vars['work']) >= 1): ?> state_done<?php endif; ?>">+7%</div>
      </div>
      <div id="m_right4" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('project');" href="javascript:void(0);">项目经验</a></div>
        <div class="m_right_project dom_m_right_state resume_project state <?php if (count($this->_tpl_vars['project']) >= 1): ?> state_done<?php endif; ?>">+7%</div>
      </div>
      <div id="m_right5" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('cert');" href="javascript:void(0);">证书</a></div>
        <div class="m_right_cert dom_m_right_state resume_cert state <?php if (count($this->_tpl_vars['cert']) >= 1): ?> state_done<?php endif; ?>">+7%</div>
      </div>
      <div id="m_right6" class="dom_m_right" >
        <div class="tit dom_m_right_tit"><a onclick="checkmore('other');" href="javascript:void(0);">其他</a></div>
        <div class="m_right_other dom_m_right_state resume_other state <?php if (count($this->_tpl_vars['other']) >= 1): ?> state_done<?php endif; ?>">+0%</div>
      </div>

    </div>      <div class="clear"></div>
      <?php if ($_GET['e']): ?><div><a target="_blank" href="<?php echo smarty_function_url(array('m' => 'resume','url' => "id:".($_GET['e'])), $this);?>
" class="resume_look_sub">预览简历</a></div><?php endif; ?>
    
   </div>
  </div>
</div>