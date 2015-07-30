<?php /* Smarty version 2.6.26, created on 2015-06-15 20:13:37
         compiled from wap/user_show.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/user_show.htm', 64, false),array('function', 'image', 'wap/user_show.htm', 133, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">找人才</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 
<section>
  <div class="user_header_warp">
    <div class="user_header_img">
      <div class="user_header_bg"><img src="http://www.hr135.com/data/upload/user/20150606/1433560499629_1.JPG" ></div>
    </div>
    <div class="user_header_mag">
      <div class="user_header_u_name"><?php echo $this->_tpl_vars['Info']['username_n']; ?>
 </div>
      <div class="user_header_u_info"><i class="fa fa-venus"></i><span class="user_header_u_s"><?php echo $this->_tpl_vars['Info']['user_sex']; ?>
</span><i class="fa fa-leaf"></i><span class="user_header_u_s">保密</span><i class="fa fa-tasks"></i><span class="user_header_u_s"><?php echo $this->_tpl_vars['Info']['user_exp']; ?>
</span></div>
    </div>
  </div>
</section>


<section>
  <div class="user_contnet mt10">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">基本信息</span></div>
      <ul class="user_contnet_ul">
        <li><span class="user_contnet_info_n">学历：</span>本科</li>
        <li><span class="user_contnet_info_n">身高：</span>160cm </li>        <li><span class="user_contnet_info_n">体重：</span>45kg</li>        <li><span class="user_contnet_info_n">婚况：</span>未婚</li>        <li><span class="user_contnet_info_n">民族：</span>汉</li>        <li><span class="user_contnet_info_n">所在地：</span>江苏 </li>        <li><span class="user_contnet_info_n">居住地：</span>江苏省宿迁市沭阳县颜集镇</li>        <li><span class="user_contnet_info_n">更新：</span>2015-06-12</li>
      </ul>
    </div>
    <div class="user_contnet_box mt10 ">
      <div class="wap_title"><span class="">求职意向</span></div>
      <ul class="user_contnet_ul">
        <li style="width:100%; height:auto"><span class="user_contnet_info_n">意向：</span><span class="c288"><?php echo $this->_tpl_vars['Info']['jobname']; ?>
</span></li>
        <li><span class="user_contnet_info_n">薪水：</span><?php echo $this->_tpl_vars['Info']['salary']; ?>
</li>
        <li><span class="user_contnet_info_n">性质：</span>全职</li>
        <li><span class="user_contnet_info_n">到岗：</span>随时到岗</li>
        <li><span class="user_contnet_info_n">地点：</span>上海 上海 崇明县 </li>
        <li><span class="user_contnet_info_n">行业：</span><?php echo $this->_tpl_vars['Info']['hy']; ?>
</li>
        <li><span class="user_contnet_info_n">状态：</span></li>
      </ul>
    </div>
    <div class="user_contnet_box mt10 ">
      <div class="wap_title"><span class="">自我评价</span></div>
      <?php echo $this->_tpl_vars['Info']['description']; ?>
 </div>
  </div>
</section>

<div class="user_contnet">
<div class="user_contnet_box">

<?php if ($this->_tpl_vars['Info']['user_work']): ?>
<section class="com_post_title">
  <div class="wap_title"><span class="">工作经历</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_work']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['worklist']):
?>
  <div class="user_jl_jy_list">     
  <div class="job_jl_list">
      <div class="firm_name_h1_h"><?php echo $this->_tpl_vars['worklist']['name']; ?>
</div>
      <aside><em>任职职位：</em><?php echo $this->_tpl_vars['worklist']['title']; ?>
</aside>
      <aside><em>在职时间：</em><?php echo ((is_array($_tmp=$this->_tpl_vars['worklist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 至 <?php if ($this->_tpl_vars['worklist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['worklist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>至今<?php endif; ?> </aside>
      <aside><em>工作职责：</em><?php echo $this->_tpl_vars['worklist']['content']; ?>
</aside>
    </div>
     </div>
	 <?php endforeach; endif; unset($_from); ?>
</section>
<?php endif; ?>

<?php if ($this->_tpl_vars['Info']['user_edu']): ?>
<section class="com_post_title">
  <div class="wap_title"><span class="">教育经历</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_edu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['edulist']):
?>
  <div class="user_jl_jy_list">     <div class="job_jl_list">
      <div class="firm_name_h1_h"><?php echo $this->_tpl_vars['edulist']['name']; ?>
</div>
      <aside><em>担任职位：</em><?php echo $this->_tpl_vars['edulist']['title']; ?>
  </aside>
      <aside><em>在校时间：</em><?php echo ((is_array($_tmp=$this->_tpl_vars['edulist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 至 <?php if ($this->_tpl_vars['edulist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['edulist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>至今<?php endif; ?></aside>
      <aside><em>专业描述：</em><?php echo $this->_tpl_vars['edulist']['content']; ?>
</aside>
    </div>
     </div>
	 <?php endforeach; endif; unset($_from); ?>
</section>
<?php endif; ?>
 
<?php if ($this->_tpl_vars['Info']['user_skill']): ?>  
<section class="com_post_title">
  <div class="wap_title"><span class="">专业技能</span></div>
  <?php $_from = $this->_tpl_vars['Info']['user_skill']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['skilllist']):
?>
  <div class="user_jl_jy_list">     <div class="job_jl_list">
      <aside><em>技能名称：</em><?php echo $this->_tpl_vars['skilllist']['skill_n']; ?>
 </aside>
      <aside><em>掌握时间：</em><?php echo $this->_tpl_vars['skilllist']['longtime']; ?>
</aside>
      <aside><em>技能类别：</em><?php echo $this->_tpl_vars['skilllist']['name']; ?>
</aside>
      <aside><em>熟练程度：</em><?php echo $this->_tpl_vars['skilllist']['ing_n']; ?>
</aside> </div>
   <?php endforeach; endif; unset($_from); ?>	  
</section>
<?php endif; ?>

<?php if ($this->_tpl_vars['Info']['user_cert']): ?>
        <section class="com_post_title">
    <div class="wap_title"><span class="">证书</span></div>
	<?php $_from = $this->_tpl_vars['Info']['user_cert']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['certlist']):
?>
    <div class="user_jl_jy_list">       <div class="job_jl_list">
        <aside><em>证书全称：</em><?php echo $this->_tpl_vars['certlist']['name']; ?>
</aside>
        <aside><em> 颁发时间：</em><?php echo ((is_array($_tmp=$this->_tpl_vars['certlist']['sdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
 至 <?php if ($this->_tpl_vars['certlist']['edate']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['certlist']['edate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
<?php else: ?>至今<?php endif; ?></aside>
        <aside><em> 颁发单位：</em><?php echo $this->_tpl_vars['certlist']['title']; ?>
</aside>
        <aside><em>证书描述：</em><?php echo $this->_tpl_vars['certlist']['content']; ?>
</aside>
         </div>
	<?php endforeach; endif; unset($_from); ?>	 
      </section>
<?php endif; ?>
   
<?php if ($this->_tpl_vars['Info']['user_other']): ?>
          <section class="com_post_title">
        <div class="wap_title"><span class="">其他信息</span></div>
		<?php $_from = $this->_tpl_vars['Info']['user_other']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['otherlist']):
?>
        <div class="user_jl_jy_list">           <div class="job_jl_list">
            <aside><em>其他标题：</em><?php echo $this->_tpl_vars['otherlist']['title']; ?>
</aside>
            <aside><em>其他描述：</em><?php echo $this->_tpl_vars['otherlist']['content']; ?>
</aside>
          </div>
           </div>
		   <?php endforeach; endif; unset($_from); ?>
      </section>
<?php endif; ?>
	  
<section class="com_post_title">
        <div class="wap_title"><span class="">联系方式</span></div>
        <div style="clear:both"></div>
		
		<?php if ($this->_tpl_vars['Info']['m_status'] == '1'): ?>
                 
				<aside class="wap_touch_img"><em>身份证：</em> <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'idcard','width' => 180), $this);?>
<?php if ($this->_tpl_vars['Info']['idcard_status'] == 1): ?>已认证<?php endif; ?></aside>
				<aside class="wap_touch_img"><em>联系手机：</em><?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telphone','width' => 200), $this);?>
</aside>
				<?php if ($this->_tpl_vars['Info']['basic_info'] == '1'): ?>
				<aside class="wap_touch_img"><em>联系座机：</em> <?php echo smarty_function_image(array('uid' => $this->_tpl_vars['Info']['uid'],'action' => 'telhome','width' => 200), $this);?>
</aside>
				<?php endif; ?> 
				<aside class="wap_touch_img"><em>联系邮箱：</em><?php echo $this->_tpl_vars['Info']['email']; ?>
</aside>
		<?php else: ?>
				 <div class="com_post_login"> 您还没有登录，请点击<a href="javascript:void(0);" onclick="showlogin('2');">登录</a>！</div>
        <?php endif; ?>     
</section>



	  
	  
	  
    </div>
  </div> 


<div id="yun_cz" class="fn-dbox center">
  <input name="uid" value="<?php echo $this->_tpl_vars['cuid']; ?>
" type="hidden">
  <div class="deep fn-dbox-flex fn-dbox-flex-flex1"> 
  <i class="fa fa-send-o"></i>
  <input class="btn_1 user_post_talentadd" type="button" onClick="talent_pool('<?php echo $this->_tpl_vars['Info']['uid']; ?>
','<?php echo $this->_tpl_vars['Info']['id']; ?>
')" value="加入人才库" style="border:0px;color:#fff;background:#288EDF">
  </div>
  <div id="favBtn" class="light" style="width:100px">
  <i class="fa fa-star-o"></i> 
  <input class="btn_1 sq_resume user_post_invite" type="button"  uid="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" eid="<?php echo $this->_tpl_vars['Info']['id']; ?>
" username="<?php echo $this->_tpl_vars['Info']['name']; ?>
" name="submit" value="面试" style="border:0px;color:#fff;background:#4CA1E4">
  </div>
</div>
  

</div>
       <div class="com_box_yq" id='job_box' style="display:none;float:left; z-index:100; position:absolute;top:10px;">
        <dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">面试职位：</span>
		  </dt>
          <dd><select id='jobname'></select></dd>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">联系人：</span>
             <dd> <input   id='linkman' value=''>
</dd>
        </dl>
        <dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">联系电话：</span>
              <dd>  <input id='linktel' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">面试时间：</span>
            <dd><input id='intertime' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
          <dt>
			<span class="city_01">面试地址：</span><dd><input id='address' value=''></dd>
		  </dt>
        </dl>
		<dl class="com_box_yq_dl">
			<dt><span class="city_01">面试备注：</span><dd><textarea id="content"  class="resyme_text"></textarea></dd>
		</dl>
      <dl class="com_box_yq_dl" id="resume_job" style="height:40px;">
        <dt><span class="city_01">&nbsp;</span><input type="hidden" value="<?php echo $this->_tpl_vars['Info']['id']; ?>
" id="eid">
		<input type="hidden" value="<?php echo $this->_tpl_vars['Info']['uid']; ?>
" id="uid">
		<input type="hidden" id="username" value="<?php echo $this->_tpl_vars['Info']['name']; ?>
"> 
		<input class="resume_sub_yq" id="click_invite" type="button" value="邀请面试"  >
    </dl>
  
 </div>
 
 
 
<script language="javascript" type="text/javascript">
function for_link(eid){
	$.post(weburl+"/index.php?m=ajax&c=for_link",{eid:eid},function(data){  
		var data=eval('('+data+')');
		var status=data.status;
		if(status==1){
			layermsg(data.msg);
		}else if(status==2){
				layer.open({
					content:data.msg,
					btn: ['确认', '取消'],
					shadeClose: false,
					yes: function(){
						down_integral(eid,data.uid);
					} 
				});
		}else if(status==3){
			location.reload();
		} 
	});
}
function down_integral(eid,uid){
	$.post(weburl+"/index.php?m=ajax&c=down_resume",{type:"integral",eid:eid,uid:uid},function(data){ 
		var data=eval('('+data+')');
		var status=data.status;
		var integral=data.integral;
		if(status==5){
			layermsg('您还有'+integral+integral_pricename+'！不够下载简历!');
		}else if(status==3){
			location.reload();
		}else{
			layermsg(data.msg);return false;
		}
	})
}
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
	$(".sq_resume").click(function(){
		if($(this).attr("uid")){$("#uid").val($(this).attr("uid"));}
		if($(this).attr("username")){$("#username").val($(this).attr("username"));}
		$.post(weburl+"/index.php?m=ajax&c=index_ajaxresume",{show_job:'1'},function(data){
			var data=eval('('+data+')');
			var status=data.status;
			var integral=data.integral;
			if(data.html){
				$("#jobname").html(data.html);
			}
			if(data.linkman){
				$("#linkman").val(data.linkman);
			}
			if(data.linktel){
				$("#linktel").val(data.linktel);
			}
			if(data.address){
				$("#address").val(data.address);
			}
			if(data.intertime){
				$("#intertime").val(data.intertime);
			}
			if(data.content){
				$("#content").text(data.content);
				$("#update_yq").attr("checked",true);
			}
			if(status == 6){
			    layermsg('请先登录！');return false;
			}
			if(!status || status == 0){
				 layermsg('您不是企业用户，请先登录！');
				/*layer.alert('您不是企业用户，请先登录！', 0, '提示',function(){
					window.location.href =weburl+"/index.php?m=login&usertype=2&type=out"; window.event.returnValue = false;return false;
				});*/

			}else if(status==1){
				layer.open({
					content:"邀请面试将扣除"+integral+integral_pricename+"，是否继续？",
					btn: ['确认', '取消'],
					shadeClose: false,
					yes: function(){
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
					} 
				});
				/*layer.confirm("邀请面试将扣除"+integral+integral_pricename+"，是否继续？",function(){
					layer.closeAll();
					$.layer({
						type : 1,
						title :'邀请面试',
						offset: [($(window).height() - 280)/2 + 'px', ''],
						closeBtn : [0 , true],
						border : [10 , 0.3 , '#000', true],
						area : ['380px','auto'],
						page : {dom :"#job_box"}
					});
				});*/
			}else if(status==2){
				layer.open({
					content:"你的等级特权已经用完,将扣除"+integral+integral_pricename,
					btn: ['确认', '取消'],
					shadeClose: false,
					yes: function(){
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
					} 
				});
				/*layer.confirm("你的等级特权已经用完,将扣除"+integral+integral_pricename,function(){
					layer.closeAll();
					$.layer({
						type : 1,
						title :'邀请面试',
						offset: [($(window).height() -380)/2 + 'px', ''],
						closeBtn : [0 , true],
						border : [10 , 0.3 , '#000', true],
						area : ['380px','auto'],
						page : {dom :"#job_box"}
					});
				});*/
			}else if(status==3){ 
				/*$.layer({
					type : 1,
					title :'邀请面试',
					offset: [($(window).height() - 380)/2 + 'px', ''],
					closeBtn : [0 , true],
					border : [10 , 0.3 , '#000', true],
					area : ['380px','auto'],
					page : {dom :"#job_box"}
				});*/
						location.href=weburl+'/index.php?m=user&c=invite&jobname='+data.html+'&linkman='+data.linkman+'&linktel='+data.linktel+'&address='+data.address+'&intertime='+data.intertime+'&uid=<?php echo $this->_tpl_vars['Info']['uid']; ?>
';
				
						//$("#job_box").show();
			}else if(status==4){
				layermsg('会员邀请简历已用完！');return false;
			}else if(status==5){
				layermsg('您暂无发布中的职位！');return false;
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