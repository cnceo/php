<?php /* Smarty version 2.6.26, created on 2015-07-27 19:54:13
         compiled from admin/admin_model_config.htm */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="images/reset.css" rel="stylesheet" type="text/css" />
<link href="images/system.css" rel="stylesheet" type="text/css" />
<link href="images/table_form.css" rel="stylesheet" type="text/css" />
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/jquery-1.8.0.min.js"></script>
<script src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/js/layer/layer.min.js" language="javascript"></script>
<script src="js/admin_public.js" language="javascript"></script>
<title>后台管理</title>
</head>
<body class="body_ifm">
<div class="infoboxp">
<div class="infoboxp_top_bg"></div>
<div class="admin_Prompt">
        <div class="admin_Prompt_span">
           提示：如果关闭模块，请对系统->导航管理里面删除或取消显示！
        </div>
        <div class="admin_Prompt_close"></div>
    </div>
<div id="subboxdiv" style="width:100%;height:100%;display:none;position:absolute;"></div>
<div class="infoboxp_top infoboxp_topIjf">
    <span class="infoboxp_top_span">模块设置</span>
</div>
<div class="main_tag">
<div class="clear"></div>
<div class="tag_box">
<div>
<table width="100%" class="table_form">
  <tr class="admin_table_trbg">
          <th width="220">参数说明：</th>
          <td width="220">参数值</td>
		  <td width="280">二级域名（无需http，未绑定则留空）</td>
		  <td width="280">指向目录</td>
          <td width="330">参数变量</td>
		  <td width="330">URL变量</td>
    </tr>
    <tr>
		<th width="220">WAP：</th>
		<td>
          <input type="radio" name="sy_wap_web" value="1" id="sy_wap_web1" <?php if ($this->_tpl_vars['config']['sy_wap_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_wap_web1">开启</label>&nbsp;
          <input type="radio" name="sy_wap_web" value="2" id="sy_wap_web2" <?php if ($this->_tpl_vars['config']['sy_wap_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_wap_web2">关闭</label>
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_wapdomain']; ?>
" size="40" name="sy_wapdomain">
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_wapdir']; ?>
" size="20" name="sy_wapdir">
        </td>
        <td width="280">sy_wap_web</td>
		<td width="280">sy_wapdomain</td>
	</tr>
    <tr class="admin_com_td_bg">
		<th width="220">朋友圈：</th>
		<td>
          <input type="radio" name="sy_friend_web" value="1" id="sy_friend_web1" <?php if ($this->_tpl_vars['config']['sy_friend_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_friend_web1">开启</label>&nbsp;
          <input type="radio" name="sy_friend_web" value="2" id="sy_friend_web2" <?php if ($this->_tpl_vars['config']['sy_friend_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_friend_web2">关闭</label>
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_frienddomain']; ?>
" size="40" name="sy_frienddomain">
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_frienddir']; ?>
" size="20" name="sy_frienddir">
        </td>
        <td width="280">sy_friend_web</td>
		<td width="280">sy_frienddomain</td>
	</tr>
    <tr>
		<th width="220">问答：</th>
		<td>
          <input type="radio" name="sy_ask_web" value="1" id="sy_ask_web1" <?php if ($this->_tpl_vars['config']['sy_ask_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_ask_web1">开启</label>&nbsp;
          <input type="radio" name="sy_ask_web" value="2" id="sy_ask_web2" <?php if ($this->_tpl_vars['config']['sy_ask_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_ask_web2">关闭</label>
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_askdoamin']; ?>
" size="40" name="sy_askdoamin">
        </td>
		<td>
          <input type="text" value="<?php echo $this->_tpl_vars['config']['sy_askdir']; ?>
" size="20" name="sy_askdir">
        </td>
        <td width="280">sy_ask_web</td>
		<td width="280">sy_askdoamin</td>
	</tr>
   
    <tr class="admin_com_td_bg">
		<th width="220">招聘会：</th>
		<td>
          <input type="radio" name="sy_zph_web" value="1" id="sy_zph_web1" <?php if ($this->_tpl_vars['config']['sy_zph_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_zph_web1">开启</label>&nbsp;
          <input type="radio" name="sy_zph_web" value="2" id="sy_zph_web2" <?php if ($this->_tpl_vars['config']['sy_zph_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_zph_web2">关闭</label>
		  
        </td>
		<td>
       
        </td>
		<td>
       
        </td>
        <td width="280">sy_zph_web</td>
		<td width="280"></td>
	</tr>
    <tr>
		<th width="220">微招聘：</th>
		<td>
          <input type="radio" name="sy_wzp_web" value="1" id="sy_wzp_web1" <?php if ($this->_tpl_vars['config']['sy_wzp_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_wzp_web1">开启</label>&nbsp;
          <input type="radio" name="sy_wzp_web" value="2" id="sy_wzp_web2" <?php if ($this->_tpl_vars['config']['sy_wzp_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_wzp_web2">关闭</label>
        </td>
		<td>
       
        </td>
			<td>
       
        </td>
        <td width="280">sy_wzp_web</td>
		<td width="280"></td>
	</tr>
    <tr class="admin_com_td_bg">
		<th width="220">微简历：</th>
		<td>
          <input type="radio" name="sy_wjl_web" value="1" id="sy_wjl_web1" <?php if ($this->_tpl_vars['config']['sy_wjl_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_wjl_web1">开启</label>&nbsp;
          <input type="radio" name="sy_wjl_web" value="2" id="sy_wjl_web2" <?php if ($this->_tpl_vars['config']['sy_wjl_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_wjl_web2">关闭</label>
        </td>
		<td>
       
        </td>
		<td>
       
        </td>
        <td width="280">sy_wjl_web</td>
		<td width="280"></td>
	</tr>
    <tr>
		<th width="220">工具箱：</th>
		<td>
          <input type="radio" name="sy_gjx_web" value="1" id="sy_gjx_web1" <?php if ($this->_tpl_vars['config']['sy_gjx_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_gjx_web1">开启</label>&nbsp;
          <input type="radio" name="sy_gjx_web" value="2" id="sy_gjx_web2" <?php if ($this->_tpl_vars['config']['sy_gjx_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_gjx_web2">关闭</label>
        </td>
		<td>
       
        </td>
		<td>
       
        </td>
        <td width="280">sy_gjx_web</td>
		<td width="280"></td>
	</tr>
	<tr>
		<th width="220">积分商城：</th>
		<td>
          <input type="radio" name="sy_redeem_web" value="1" id="sy_redeem_web1" <?php if ($this->_tpl_vars['config']['sy_redeem_web'] == '1'): ?>checked<?php endif; ?>>
          <label for="sy_redeem_web1">开启</label>&nbsp;
          <input type="radio" name="sy_redeem_web" value="2" id="sy_redeem_web2" <?php if ($this->_tpl_vars['config']['sy_redeem_web'] == '2'): ?>checked<?php endif; ?>>
          <label for="sy_redeem_web2">关闭</label>
        </td>
		<td>
       
        </td>
		<td>
       
        </td>
        <td width="280">sy_redeem_web</td>
		<td width="280"></td>
	</tr>
    <input type="hidden" value="company"  name="sy_companydir">

    <tr>
		<td colspan="3" align="center">
        <input class="admin_submit4" id="integral" type="button" name="config" value="提交" />&nbsp;&nbsp;
        <input class="admin_submit4" type="reset" value="重置" /></td>
	</tr>
</table>
</div>

</div>
</div>
</div>
<input type="hidden" name="pytoken" id='pytoken' value="<?php echo $this->_tpl_vars['pytoken']; ?>
">
<script>
$(function(){
	$("#integral").click(function(){
		$.post("index.php?m=model_config&c=save",{
			config : $("#integral").val(),
			sy_wap_web: $("input[name=sy_wap_web]:checked").val(),
			sy_friend_web: $("input[name=sy_friend_web]:checked").val(),
			sy_ask_web: $("input[name=sy_ask_web]:checked").val(),
			sy_zph_web: $("input[name=sy_zph_web]:checked").val(),
			sy_wzp_web: $("input[name=sy_wzp_web]:checked").val(),
			sy_wjl_web: $("input[name=sy_wjl_web]:checked").val(),
			sy_gjx_web: $("input[name=sy_gjx_web]:checked").val(),
			sy_redeem_web: $("input[name=sy_redeem_web]:checked").val(),
			sy_wapdomain: $("input[name=sy_wapdomain]").val(),
			sy_frienddomain: $("input[name=sy_frienddomain]").val(),
			sy_askdoamin: $("input[name=sy_askdoamin]").val(),
			sy_companydomain: $("input[name=sy_companydomain]").val(),
			sy_companydir: $("input[name=sy_companydir]").val(),
			sy_wapdir: $("input[name=sy_wapdir]").val(),
			sy_frienddir: $("input[name=sy_frienddir]").val(),
			sy_askdir: $("input[name=sy_askdir]").val(),

			pytoken : $("#pytoken").val()
		},function(data,textStatus){
			config_msg(data);
		});
	});
})
</script>
</body>
</html>