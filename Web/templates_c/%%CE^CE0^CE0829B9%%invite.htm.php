<?php /* Smarty version 2.6.26, created on 2015-06-15 20:23:07
         compiled from wap/invite.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header_cont.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 

<link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/css/member-wap.css" type="text/css"> 

<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
    <div class="header_h1">企业会员中心</div>
    <label for="tm"><i class="header_top_r fa fa-th "></i></label>
  </div>
 </header>


<div class="main_member_body">
 
 <div style="padding:10px 10px;">
 <input name="uid" id="uid" value="<?php echo $_GET['uid']; ?>
" type="hidden">
<div class="wap_member_comp_h1"><span>邀请面试</span></div> 
<div class="wap_member_Receive">
       <div class="com_box_yq" id='job_box' >
       <div style="background:#fff;">
        <dl class="resume-cont_wate_list">
          <dt>
			<span class="city_01">面试职位：</span>
		  </dt>
          <dd>
          <div class="yq_in_selectOption" style="width:100%"><select id='jobname'>
          	<?php $_from = $this->_tpl_vars['joblist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['one']):
?>
            <option value="<?php echo $this->_tpl_vars['one']['name']; ?>
"><?php echo $this->_tpl_vars['one']['name']; ?>
</option>
            <?php endforeach; endif; unset($_from); ?>
          </select></div></dd>
        </dl>
		 <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">联系人：</span></dt>
			<dd> <input   class="invite_text"  id='linkman' value='<?php echo $_GET['linkman']; ?>
'></dd>
        </dl>
       <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">联系电话：</span></dt>
		  <dd>  <input  class="invite_text" id='linktel' value='<?php echo $_GET['linktel']; ?>
'></dd> 
        </dl>
	 <dl class="resume-cont_wate_list" >
          <dt style="width:auto;"> <span class="city_01">面试时间：如：2015-5-20 上午8点-10点</span> </dt>
            <dd><input  class="invite_text" id='intertime' value='<?php echo $_GET['intertime']; ?>
'></dd> 
        </dl>
		 <dl class="resume-cont_wate_list">
          <dt> <span class="city_01">面试地址：</span></dt>
			<dd><input  class="invite_text" id='address' value='<?php echo $_GET['address']; ?>
'></dd> 
        </dl>
		<dl class="resume-cont_wate_list">
			<dt><span class="city_01">面试备注：</span></dt>
			<dd><textarea id="content" class="textAreaMsg tip"><?php echo $_GET['jobname']; ?>
</textarea></dd>  
		</dl>
      <dl  class="resume-cont_wate_list" id="resume_job"> 
        <dd><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="reinputText2"  type="button" value="邀请面试"  ></dd>
    </dl>
   </div>
 </div>
 </div> 
</div> 
</div> </div>

<script language="javascript" type="text/javascript">
function talent_pool(uid,eid)
{
	$.post(weburl+"/index.php?m=ajax&c=talent_pool",{eid:eid,uid:uid},function(data){
		if(data=='0'){
			layermsg('只有企业用户，才可以操作！');
		}else if(data=='1'){
			layermsg('加入成功！');
		}else if(data=='2'){
			layermsg('该简历已加入到人才库！');
		}else{
			layermsg('对不起，操作出错！');
		}
	});
}
$(document).ready(function(){
	
	//邀请面试
	$("#click_invite").click(function(){
		var uid=$("#uid").val();
		var content=$("#content").val();
		var username=$("#username").val();
		var job=$("#jobname").val();
		var intertime=$("#intertime").val();
		var linkman=$("#linkman").val();
		var linktel=$("#linktel").val();
		var address=$("#address").val();
		job=job.split("+");
		var jobname=job[0];
		var jobid=job[1];
		if($("#update_yq").attr("checked")=='checked'){
			var update_yq=1;
		}else{
			var update_yq=0;
		}
		if($.trim(content)==""){
			layermsg('内容不能为空！');return false;
		}
		//layer.closeAll();
		//loadi = layer.load('执行中，请稍候...',0);
		$.post(weburl+"/index.php?m=ajax&c=sava_ajaxresume",{uid:uid,content:content,username:username,jobname:jobname,update_yq:update_yq,address:address,linkman:linkman,linktel:linktel,intertime:intertime,jobid:jobid},function(data){
			//layer.close(loadi);
			var data=eval('('+data+')');
			var status=data.status;
			var integral=data.integral;
			if(status==8){
				layermsg('您已被该用户列如黑名单！');return false;
			}else if(status==9){
				layermsg('该用户已被你列入黑名单！');return false;
			}else if(!status || status==0){
				//layer.alert('请先登录！', 0, '提示',function(){window.location.href ="index.php?m=login&usertype=2&type=out";window.event.returnValue = false;return false;  });
			}else if(status==5){
				//layer.confirm('您还有'+integral+integral_pricename+'！不够邀请面试，是否充值？', function(){window.location.href =weburl+"/member/index.php?c=pay";window.event.returnValue = false;return false;  });
			}else if(status==3){
				layermsg('您已成功邀请！',2,function(){history.back();});
			}else if(status==7){
				layermsg('您已经邀请过该人才，请不要重复邀请！',2,function(){history.back();});
			}
		});
	})
});
</script>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>