<?php /* Smarty version 2.6.26, created on 2015-07-29 21:11:54
         compiled from member/user/resume.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'member/user/resume.htm', 119, false),array('function', 'url', 'member/user/resume.htm', 135, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script type="text/javascript">  

function gourl(){
	layer.confirm('ȷ��Ҫ�����µļ�����', function(){window.location.href='index.php?c=expect&add=<?php echo $this->_tpl_vars['uid']; ?>
';window.event.returnValue = false;return false;   });
}  


function setdef_resume(id){
	$.post(weburl+"/index.php?m=ajax&c=default_resume",{eid:id},function(data){
		if(data==0){
			layer.alert('���ȵ�¼��', 0, '��ʾ',function(){window.location.href ="index.php?m=login&usertype=1";window.event.returnValue = false;return false;});
		}else if(data==1){ 
			layer.msg('���óɹ���', 2, 9,function(){ location.reload();});return false; 
		}else{ 
			layer.msg('ϵͳ�������Ժ����ԣ�', 2, 8,function(){ location.reload();});return false; 
		}
	}) 
}
function showmsg(msg){
	$("#msgs").html(msg);
	$.layer({
		type : 1,
		title :'�鿴ԭ��',
		offset: [($(window).height() - 300)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['400px','200px'],
		page : {dom :"#showmsg"}
	});
} 

function showExport(){
	$.layer({
				type : 1,
				title :'��������',
				offset: [($(window).height() - 300)/2 + 'px', ''],
				closeBtn : [0 , true],
				border : [10 , 0.3 , '#000', true],
				area : ['300px','260px'],
				page : {dom :"#imResume"}
		});
}
function exportResume(){
	var pwd = $("#password").val();
	var user = $("#username").val();
	var type= $('input[name="ext"]:checked').val();
	console.log("val"+pwd+user+type);
	var data = {"password":pwd,"username":user,"type":type};
	$.ajax({
			type:"POST",
			url:"../template/member/include/getResume.php",
			data:data,
			timeout: 3000,
			success:function(obj,status){
				console.log(obj);
			},
			error:function(err){
		  		console.log("err");
			}
		
	});
}
</script>
<!--��������ģ��-->
<div id="imResume" style="display:none;position:relative;top:-30px;left:0;">
    <ul  style="padding:45px;line-height:35px;">
    	<h3>��¼������ƽ̨</h3>
    <hr/>
    	<li>
        	 <label>�û�����</label><input class = "info_text" id = "username" name="username">
        </li>
        <li>
        	 <label>��&nbsp;&nbsp;&nbsp;�룺</label><input type="password" class = "info_text" id = "password" name="password">
        </li>
        <li>
        	<input type="radio" name="ext" value = "������Ƹ" checked="checked"><label>������Ƹ</label>
            <input type="radio" name="ext" value = "�л�Ӣ��"><label>�л�Ӣ��</label>
            <input type="radio" name="ext" value = "ǰ������"><label>ǰ������</label>
        </li>
        <li>
        	<button class="com_pop_bth" onclick = "exportResume()" style="margin-left:50px;">��ʼ����</button>
        </li>
    </ul>
</div>
<div class="w950"> 
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<div class="mian_right fltR mt12 re">
    <div class="tabmenubox01 mt9">
      <ul>
        <li class="cur"> <a href="index.php?c=resume">�ҵļ���</a></li>
        <li> <a href="index.php?c=look">���������</a></li>
        <li> <a href="index.php?c=look_job">�����ְλ</a></li>
        <li> <a href="index.php?c=privacy">��˽����</a></li>
      </ul>
    </div>
    

    <div id="" class="resume_box_list">
    <div class="resume_Prompt">��ʾ�����м�����������Ͷ��ְλ������˽����Ϊ"����"ʱ����Ĭ�ϼ������Ա���ҵ������ </div>
    <div class="clear"></div>
    <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['resume']):
?>
    <div class="resume_list_mr <?php if ($this->_tpl_vars['resume']['id'] == $this->_tpl_vars['def_job']): ?>index_resume_box_Set<?php else: ?>resume_list_bor<?php endif; ?>">
    <?php if ($this->_tpl_vars['resume']['id'] == $this->_tpl_vars['def_job']): ?><div class="index_resume_Set">Ĭ�ϼ���</div><?php endif; ?>
    <div class="resume_list_mr_name"><?php echo $this->_tpl_vars['resume']['name']; ?>
</div>
    <div class="resume_list_mr_wzd fltL">
    <div class="resume_list_mr_wz_left">
    <span class="resume_list_mr_wzdleft">�����ȣ�</span><span class="shell fltL shell_mt">
<i style="width:<?php echo $this->_tpl_vars['resume']['integrity']; ?>
%"></i>
</span>
<font class="red"><?php if ($this->_tpl_vars['resume']['integrity']): ?><?php echo $this->_tpl_vars['resume']['integrity']; ?>
<?php else: ?>0<?php endif; ?>%</font>
</div>
<div class="resume_list_mr_cont">


<a title="�ϴ���Ʒ" href="index.php?c=show&eid=<?php echo $this->_tpl_vars['resume']['id']; ?>
" class="resume_list_gj_r_zp png">�ϴ���Ʒ����</a>
<div class="resume_list_gj_ln"><span class="resume_list_ln_cs"><?php echo $this->_tpl_vars['resume']['hits']; ?>
</span>�����</div>
</div>
<span class="resume_list_date fltR">����ʱ�䣺<?php echo ((is_array($_tmp=$this->_tpl_vars['resume']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</span>

</div>

    <div class="index_resume_Operating mt10 fltL ">
		<span class="index_resume_Operating_l  fltL ">�������ͣ�<?php if ($this->_tpl_vars['resume']['doc'] == '1'): ?>���ټ���<?php else: ?>��׼����<?php endif; ?>
		&nbsp; &nbsp; &nbsp; &nbsp;ϵͳΪ��ƥ������ְλ��<a href="index.php?c=likejob&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
" class="index_resume_Operating_la">����鿴����</a></span>
		<span class="resume_Operating_r fltR">
		 <?php if ($this->_tpl_vars['resume']['id'] != $this->_tpl_vars['def_job']): ?>
		<a href="javascript:setdef_resume('<?php echo $this->_tpl_vars['resume']['id']; ?>
');" class="resume_Operating_mr">��ΪĬ��</a>
		|
		<?php endif; ?>
		<a class="index_resume_Operating_a" title="�ö�" href="javascript:void(0)" onclick="resumetop('<?php echo $this->_tpl_vars['resume']['id']; ?>
','<?php echo $this->_tpl_vars['resume']['topdate']; ?>
')">�ö�</a>
		|
		<a class="index_resume_Operating_a" title="�޸�" href="index.php?c=expect<?php if ($this->_tpl_vars['resume']['doc']): ?>q<?php endif; ?>&e=<?php echo $this->_tpl_vars['resume']['id']; ?>
">�޸�</a>
		|
		<a class="index_resume_Operating_a"  title="Ԥ��" target="_blank" href="<?php echo smarty_function_url(array('m' => 'resume','url' => "id:".($this->_tpl_vars['resume']['id']).",tmp:".($this->_tpl_vars['resume']['tmpid'])), $this);?>
">Ԥ��</a>
		|
		<a class="index_resume_Operating_a" href="javascript:void(0)" onclick="layer_del('ȷ��Ҫˢ�£�', '<?php echo $this->_tpl_vars['now_url']; ?>
&act=refresh&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
');" title="ˢ��">ˢ��</a>
		|
		<a class="index_resume_Operating_a"  href="javascript:void(0)" onclick="layer_del('ȷ��Ҫɾ����', '<?php echo $this->_tpl_vars['now_url']; ?>
&act=del&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
');" >ɾ��</a> 
		</span>
	</div>
    </div>
    
    <div class="clear"></div>
          <?php endforeach; else: ?>
          <div class="msg_no">���޼�����</div>
          <?php endif; unset($_from); ?>
        
        <div class="resume_cj"><?php if ($this->_tpl_vars['confignum'] != ""): ?>�������Դ��� <span class="resume_cj_sz">(<?php echo $this->_tpl_vars['maxnum']; ?>
)</span> �ݱ��ü���<?php endif; ?>
		<?php if ($this->_tpl_vars['maxnum'] > 1): ?>
		<a class="thickbox" title="�����¼���" href="javascript:void(0)" onclick="gourl();return false;">�����¼���</a>
        <a href="index.php?c=expectq&add=<?php echo $this->_tpl_vars['uid']; ?>
" title="ֱ��ճ�����еĸ��˼���"class="thickbox2" >����ճ������</a>
        <a class="thickbox2" title="�������" href="javascript:void(0)" onclick="showExport();">�������</a><!--��������-->
		<?php else: ?>
		<a class="thickbox" title="�����¼���" href="javascript:void(0)" onclick="layer.msg('��ļ������Ѿ��ﵽϵͳ���õļ�������',2,8);return false;">�����¼���</a>
        <a href="javascript:void(0)" onclick="layer.msg('��ļ������Ѿ��ﵽϵͳ���õļ�������',2,8);return false;" title="ֱ��ճ�����еĸ��˼���"class="thickbox2" >����ճ������</a>
		<?php endif; ?></div>
           <div  class="clear"></div>
    <div class="wxts_box wxts_box_mt30">
<div class="wxts">��ܰ��ʾ��</div>

1���ϴ�������Ʒ���ϴ�������Ʒ����ҵֱ���˽����������
<br>
</div>
  </div>


      </div>
    </div> 

<div id="showmsg"  style="display:none; width: 400px;"> 
    <div id="infobox">
		 <div class="admin_Operating_sh" style="padding:10px; ">
		<div class="admin_Operating_sh_h1" style="padding:5px;">���˵����<div class="user_Audit_box" id="msgs"></div></div>

		<div class="admin_Operating_sub" style="margin-top:10px;"> 
          &nbsp;&nbsp;<input type="button" onClick="layer.closeAll();" class="com_pop_bth" value='ȷ��'></div>
		</div>
    </div> 
</div>
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>