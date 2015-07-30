<?php

  require_once('include/simple_html_dom.php');
  //配置URl  登录信息
  $login="http://my.51job.com/my/My_Pmc.php";
  $post_file="username=qq738613780@163.com&userpwd=a13660858829";//passport_loginName:738613780@qq.com passport_password
  $cookie_file = tempnam('./temp','cookie');

  //初始化curl
  $ch=curl_init($login); /////初始化一个CURL对象
  curl_setopt($ch,CURLOPT_HEADER,0); 
  ///设置不输出在浏览器上 
  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1); 
  curl_setopt($ch,CURLOPT_POST,1);
 ////传递一个作为HTTP "POST"操作的所有数据的字符串
  curl_setopt($ch,CURLOPT_POSTFIELDS,$post_file);
  /////把返回来的cookie信息保存在$cookie_jar文件中
  curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);  
  curl_exec($ch);///执行
  curl_close($ch);////关闭

  //现在已经是登录状态
  $domain = "http://www.51job.com";
  $url="http://my.zhaopin.com/myzhaopin/resume_list.asp";
   //http://my.51job.com/sc/applyjob/preview_resume.php?ReSumeID=330146538&AccountID=100707500  
  $ch = curl_init($domain);
  //防止重定向
  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
  ///设置不输出在浏览器上
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
  $contents = curl_exec($ch);//
  $html = new simple_html_dom();
  $html->load($contents);
  $resumePage =$html->find('.orange');
  $resumeLink =$resumePage[0]->href; 
  $html->clear();
  curl_close($ch);////关闭

  $ch = curl_init($resumeLink);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);///设置不输出在浏览器上
  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
  $contents = curl_exec($ch);//icon18 iconSee
  $html->load($contents);
  $resume = $html->find('a[onfocus]');
  $url = $resume[22]->href;
  $html->clear();
  curl_close($ch);////关闭

  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/4");
  curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);///设置不输出在浏览器上
  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
  $contents = curl_exec($ch);//icon18 iconSee
  echo $contents;  
?>
