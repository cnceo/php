<?php /* Smarty version 2.6.26, created on 2015-07-28 11:19:43
         compiled from ../template/member/user/left.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', '../template/member/user/left.htm', 43, false),)), $this); ?>
<div class="left_sidebar">
<div class="left_sidebar_h2 left_sidebar_h1_no"><span class="left_sidebar_h2_span"><a  href="index.php">�ҵ���ְ��ҳ</a></span></div>
<div class="left_sidebar_h1 left_sidebar_h1_no"><span class="left_sidebar_h1_span">�ҵļ���</span></div>
<ul class="left_sidebar_nav">
<li><a href="index.php?c=resume" >�ҵļ���  </a></li> 
<?php if ($this->_tpl_vars['config']['user_number'] > $this->_tpl_vars['myresumenum']): ?>
<li><a href="index.php?c=expect&add=<?php echo $this->_tpl_vars['uid']; ?>
">��������</a></li> 
<?php else: ?>
<li><a href="javascript:void(0)" onclick="layer.msg('��ļ������Ѿ��ﵽϵͳ���õļ�������',2,8);return false;">��������</a></li> 
<?php endif; ?>       
<li><a href="index.php?c=look">��������� </a></li>     
<li><a href="index.php?c=look_job">�����ְλ </a></li>  
</ul>
<div class="left_sidebar_h1"><span class="left_sidebar_h1_span left_sidebar_h1_span_icon2">ӦƸ����</span></div>
<ul class="left_sidebar_nav">
<li><a href="index.php?c=msg">��������</a></li>        
<li><a href="index.php?c=job">�����¼</a></li> 
<li><a href="index.php?c=commsg">��ְ��ѯ </a></li>           
<li><a href="index.php?c=favorite">�ղؼ�¼</a></li>  
<li><a href="index.php?c=atn">��ע��ҵ</a></li> 
</ul>
<div class="left_sidebar_h1"><span class="left_sidebar_h1_span left_sidebar_h1_span_icon3">��ְ����</span></div>
<ul class="left_sidebar_nav">
<li><a href="index.php?c=blacklist">��˾������</a></li>            
<li><a href="index.php?c=privacy">��˽����</a></li>      
<li><a href="index.php?c=finder">ְλ������</a></li>       
<li><a href="index.php?c=log">������־</a></li>                 
</ul>
<div class="left_sidebar_h1"><span class="left_sidebar_h1_span left_sidebar_h1_span_icon4">�ʴ����</span></div>
<ul class="left_sidebar_nav">
<li><a href="index.php?c=my_question&type=0">�ҵ����� </a></li>        
<li><a href="index.php?c=my_question&type=1">�ҵĻش�</a></li>    
<li><a href="index.php?c=my_question&type=2">�ҵ�����</a></li>          
<li><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/friend/">���ѹ���</a></li>    
</ul>
<div class="left_sidebar_h1"><span class="left_sidebar_h1_span left_sidebar_h1_span_icon5">�˻���Ϣ</span></div>
<ul class="left_sidebar_nav">
<li><a href="index.php?c=info">������Ϣ</a></li>             
<li><a href="index.php?c=passwd">�޸�����</a></li>                
<li><a href="index.php?c=binding">�˻���</a></li>        
<li><a href="index.php?c=message">���Է���</a></li>              
<li><a href="index.php?c=sysnews">ϵͳ��Ϣ</a></li>    
<li><a href="<?php echo smarty_function_url(array('m' => 'invitereg'), $this);?>
" target='_blank'>����ע��</a></li>            
<li><a href="javascript:void(0)" onClick="logout('index.php?act=logout')">�˳���¼</a></li>            
</ul>
</div>