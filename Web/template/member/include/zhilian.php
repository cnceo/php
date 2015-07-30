
  <?php
  
  function zhilian($username,$pwd){
	  require_once('include/simple_html_dom.php');
	  //配置URl  登录信息
	  $login="https://passport.zhaopin.com/account/login";
	  $post_file= "LoginName=".$username."&Password=".$pwd;
	  $cookie_file = tempnam('./temp','cookie');
	  //初始化curl
	  $ch=curl_init($login); /////初始化一个CURL对象
	  //SSL加密  证书检查
	  curl_setopt($ch,CURLOPT_HEADER,1); 
	  ///设置不输出在浏览器上 
	  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1); 
	  curl_setopt($ch,CURLOPT_POST,1);
	  // https请求 不验证证书和hosts
	  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); 
	  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);  
	  //防止重定向
	  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
	  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
	  curl_setopt($ch,CURLOPT_POSTFIELDS,$post_file);
	  /////把返回来的cookie信息保存在$cookie_jar文件中
	  curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
	  $data = curl_exec($ch);///执行
	  curl_close($ch);////关闭
	  //现在已经是登录状态
	  $domain = "http://www.zhaopin.com/";
	  $url="http://my.zhaopin.com/myzhaopin/resume_list.asp";
	  $ch = curl_init($url);
	  //防止重定向
	  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
	  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
	  ///设置不输出在浏览器上
	  curl_setopt($ch, CURLOPT_HEADER, 0);
	  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
	  $contents = curl_exec($ch);
	  curl_close($ch);////关闭
	  $html = new simple_html_dom();
	  $html->load($contents);
	  $str = $html->find('div[resume_id]');
	  $st = $str[0]->resume_id;
	  //取得简历Id和用户Id
	  $resume = 'http://my.zhaopin.com/myzhaopin/resume_preview.asp?'.$st;
	  //进入简历页
	  $ch = curl_init($resume);
	  curl_setopt($ch, CURLOPT_HEADER, 0);
	  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);///设置不输出在浏览器上
	  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
	  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
	  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
	  $contents = curl_exec($ch);
	  return $st;
  }
?>



