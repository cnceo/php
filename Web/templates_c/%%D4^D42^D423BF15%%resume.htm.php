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
	layer.confirm('确定要创建新的简历吗？', function(){window.location.href='index.php?c=expect&add=<?php echo $this->_tpl_vars['uid']; ?>
';window.event.returnValue = false;return false;   });
}  


function setdef_resume(id){
	$.post(weburl+"/index.php?m=ajax&c=default_resume",{eid:id},function(data){
		if(data==0){
			layer.alert('请先登录！', 0, '提示',function(){window.location.href ="index.php?m=login&usertype=1";window.event.returnValue = false;return false;});
		}else if(data==1){ 
			layer.msg('设置成功！', 2, 9,function(){ location.reload();});return false; 
		}else{ 
			layer.msg('系统出错，请稍后再试！', 2, 8,function(){ location.reload();});return false; 
		}
	}) 
}
function showmsg(msg){
	$("#msgs").html(msg);
	$.layer({
		type : 1,
		title :'查看原因',
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
				title :'简历导入',
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
<!--简历导入模板-->
<div id="imResume" style="display:none;position:relative;top:-30px;left:0;">
    <ul  style="padding:45px;line-height:35px;">
    	<h3>登录第三方平台</h3>
    <hr/>
    	<li>
        	 <label>用户名：</label><input class = "info_text" id = "username" name="username">
        </li>
        <li>
        	 <label>密&nbsp;&nbsp;&nbsp;码：</label><input type="password" class = "info_text" id = "password" name="password">
        </li>
        <li>
        	<input type="radio" name="ext" value = "智联招聘" checked="checked"><label>智联招聘</label>
            <input type="radio" name="ext" value = "中华英才"><label>中华英才</label>
            <input type="radio" name="ext" value = "前程无忧"><label>前程无忧</label>
        </li>
        <li>
        	<button class="com_pop_bth" onclick = "exportResume()" style="margin-left:50px;">开始导入</button>
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
        <li class="cur"> <a href="index.php?c=resume">我的简历</a></li>
        <li> <a href="index.php?c=look">简历被浏览</a></li>
        <li> <a href="index.php?c=look_job">浏览的职位</a></li>
        <li> <a href="index.php?c=privacy">隐私设置</a></li>
      </ul>
    </div>
    

    <div id="" class="resume_box_list">
    <div class="resume_Prompt">提示：所有简历均可用于投递职位；当隐私设置为"公开"时，仅默认简历可以被企业搜索到 </div>
    <div class="clear"></div>
    <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['resume']):
?>
    <div class="resume_list_mr <?php if ($this->_tpl_vars['resume']['id'] == $this->_tpl_vars['def_job']): ?>index_resume_box_Set<?php else: ?>resume_list_bor<?php endif; ?>">
    <?php if ($this->_tpl_vars['resume']['id'] == $this->_tpl_vars['def_job']): ?><div class="index_resume_Set">默认简历</div><?php endif; ?>
    <div class="resume_list_mr_name"><?php echo $this->_tpl_vars['resume']['name']; ?>
</div>
    <div class="resume_list_mr_wzd fltL">
    <div class="resume_list_mr_wz_left">
    <span class="resume_list_mr_wzdleft">完整度：</span><span class="shell fltL shell_mt">
<i style="width:<?php echo $this->_tpl_vars['resume']['integrity']; ?>
%"></i>
</span>
<font class="red"><?php if ($this->_tpl_vars['resume']['integrity']): ?><?php echo $this->_tpl_vars['resume']['integrity']; ?>
<?php else: ?>0<?php endif; ?>%</font>
</div>
<div class="resume_list_mr_cont">


<a title="上传作品" href="index.php?c=show&eid=<?php echo $this->_tpl_vars['resume']['id']; ?>
" class="resume_list_gj_r_zp png">上传作品案例</a>
<div class="resume_list_gj_ln"><span class="resume_list_ln_cs"><?php echo $this->_tpl_vars['resume']['hits']; ?>
</span>被浏览</div>
</div>
<span class="resume_list_date fltR">更新时间：<?php echo ((is_array($_tmp=$this->_tpl_vars['resume']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')); ?>
</span>

</div>

    <div class="index_resume_Operating mt10 fltL ">
		<span class="index_resume_Operating_l  fltL ">简历类型：<?php if ($this->_tpl_vars['resume']['doc'] == '1'): ?>快速简历<?php else: ?>标准简历<?php endif; ?>
		&nbsp; &nbsp; &nbsp; &nbsp;系统为您匹配相似职位：<a href="index.php?c=likejob&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
" class="index_resume_Operating_la">点击查看详情</a></span>
		<span class="resume_Operating_r fltR">
		 <?php if ($this->_tpl_vars['resume']['id'] != $this->_tpl_vars['def_job']): ?>
		<a href="javascript:setdef_resume('<?php echo $this->_tpl_vars['resume']['id']; ?>
');" class="resume_Operating_mr">设为默认</a>
		|
		<?php endif; ?>
		<a class="index_resume_Operating_a" title="置顶" href="javascript:void(0)" onclick="resumetop('<?php echo $this->_tpl_vars['resume']['id']; ?>
','<?php echo $this->_tpl_vars['resume']['topdate']; ?>
')">置顶</a>
		|
		<a class="index_resume_Operating_a" title="修改" href="index.php?c=expect<?php if ($this->_tpl_vars['resume']['doc']): ?>q<?php endif; ?>&e=<?php echo $this->_tpl_vars['resume']['id']; ?>
">修改</a>
		|
		<a class="index_resume_Operating_a"  title="预览" target="_blank" href="<?php echo smarty_function_url(array('m' => 'resume','url' => "id:".($this->_tpl_vars['resume']['id']).",tmp:".($this->_tpl_vars['resume']['tmpid'])), $this);?>
">预览</a>
		|
		<a class="index_resume_Operating_a" href="javascript:void(0)" onclick="layer_del('确定要刷新？', '<?php echo $this->_tpl_vars['now_url']; ?>
&act=refresh&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
');" title="刷新">刷新</a>
		|
		<a class="index_resume_Operating_a"  href="javascript:void(0)" onclick="layer_del('确定要删除？', '<?php echo $this->_tpl_vars['now_url']; ?>
&act=del&id=<?php echo $this->_tpl_vars['resume']['id']; ?>
');" >删除</a> 
		</span>
	</div>
    </div>
    
    <div class="clear"></div>
          <?php endforeach; else: ?>
          <div class="msg_no">暂无简历！</div>
          <?php endif; unset($_from); ?>
        
        <div class="resume_cj"><?php if ($this->_tpl_vars['confignum'] != ""): ?>您还可以创建 <span class="resume_cj_sz">(<?php echo $this->_tpl_vars['maxnum']; ?>
)</span> 份备用简历<?php endif; ?>
		<?php if ($this->_tpl_vars['maxnum'] > 1): ?>
		<a class="thickbox" title="创建新简历" href="javascript:void(0)" onclick="gourl();return false;">创建新简历</a>
        <a href="index.php?c=expectq&add=<?php echo $this->_tpl_vars['uid']; ?>
" title="直接粘贴已有的个人简历"class="thickbox2" >在线粘贴简历</a>
        <a class="thickbox2" title="导入简历" href="javascript:void(0)" onclick="showExport();">导入简历</a><!--简历导入-->
		<?php else: ?>
		<a class="thickbox" title="创建新简历" href="javascript:void(0)" onclick="layer.msg('你的简历数已经达到系统设置的简历数了',2,8);return false;">创建新简历</a>
        <a href="javascript:void(0)" onclick="layer.msg('你的简历数已经达到系统设置的简历数了',2,8);return false;" title="直接粘贴已有的个人简历"class="thickbox2" >在线粘贴简历</a>
		<?php endif; ?></div>
           <div  class="clear"></div>
    <div class="wxts_box wxts_box_mt30">
<div class="wxts">温馨提示：</div>

1、上传个人作品：上传个人作品让企业直观了解你的你能力
<br>
</div>
  </div>


      </div>
    </div> 

<div id="showmsg"  style="display:none; width: 400px;"> 
    <div id="infobox">
		 <div class="admin_Operating_sh" style="padding:10px; ">
		<div class="admin_Operating_sh_h1" style="padding:5px;">审核说明：<div class="user_Audit_box" id="msgs"></div></div>

		<div class="admin_Operating_sub" style="margin-top:10px;"> 
          &nbsp;&nbsp;<input type="button" onClick="layer.closeAll();" class="com_pop_bth" value='确认'></div>
		</div>
    </div> 
</div>
<iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['userstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>