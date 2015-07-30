

function check_company_cert(){
	layer.closeAll();
	if($.trim($("#wxname").val())==''){
		layer.msg('登陆帐号不能为空！',2,8,function(){getyyzz('请上传公众平台的登陆帐号');});
		return false;
	}
	if($.trim($("#wxpassword").val())==''){
		layer.msg('登陆密码不能为空！',2,8,function(){getyyzz('请上传公众平台的登陆密码');});
		return false;
	}
	if($.trim($("#APPID").val())==''){
		layer.msg('AppID(应用ID)不能为空！',2,8,function(){getyyzz('请输入公众号AppID(应用ID)');});
		return false;
	}
	if($.trim($("#APPSECRET").val())==''){
		layer.msg('AppSecret(应用密钥)不能为空！',2,8,function(){getyyzz('请输入公众号AppSecret(应用密钥)');});
		return false;
	}
	layer.load('资料正在上传中，请稍候...',0);return true;
}


function getyyzz(title){
	$.layer({
		type : 1,
		title :title,
		offset: [($(window).height() - 380)/2 + 'px', ''],
		closeBtn : [0 , true],
		border : [10 , 0.3 , '#000', true],
		area : ['500px','auto'],
		page : {dom :"#yyzz"}
	});
}
