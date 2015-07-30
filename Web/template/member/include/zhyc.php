<?php

  require_once('include/simple_html_dom.php');
  //配置URl  登录信息
  $login="http://www.chinahr.com/modules/jsperson/login_ajax.php";
  $post_file="uname=738613780@qq.com&password=a13660858829&remember=1";
  $cookie_file = tempnam('./temp','cookie');

  //初始化curl
  $ch=curl_init($login); /////初始化一个CURL对象
  curl_setopt($ch,CURLOPT_HEADER,0); 

  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1); ///设置不输出在浏览器上
  curl_setopt($ch,CURLOPT_POST,1);

  curl_setopt($ch,CURLOPT_POSTFIELDS,$post_file);  ////传递一个作为HTTP "POST"操作的所有数据的字符串。
  curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);  /////把返回来的cookie信息保存在$cookie_jar文件中
  curl_exec($ch);///执行
  curl_close($ch);////关闭

  //现在已经是登录状态
  $domain = "http://www.chinahr.com/";
  $url="http://www.chinahr.com/modules/jsperson/index.php";
   
   //$url  = "http://www.chinahr.com/modules/jsresume/resume_edit.php";
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);///设置不输出在浏览器上
  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
  $contents = curl_exec($ch);
  $html = new simple_html_dom();
  $html->load($contents);
  $form1 = $html->find('.lightBlue');
  $resumeUrl  = $form1[1]->href;
  $index = strpos($resumeUrl,'?');
  $lastIndex = strpos($resumeUrl,'&');
  $resumeId = substr($resumeUrl,$index,$lastIndex);
  $ch = curl_init($domain."modules/jsresume/preview.php".$resumeId);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);///设置不输出在浏览器上
  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
  $contents = curl_exec($ch);
  echo $contents;
?>


