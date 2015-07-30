<?php 
	//引入抓取简历文件
	require('include/simple_html_dom.php');	
	include('zhilian.php');
	include('zhyc.php');
	include('51job.php');
	$msg = "..";
	$user = $_POST['username'];
	$pwd = $_POST['password'];
	$type = $_POST['type'];
	$msg = "";
	 if($type=="智联招聘"){
	 	$msg = zhilian($user,$pwd);//抓取智联招聘的简历
	 }else if($type=="前程无忧"){
	 	$msg = job51($user,$pwd);//抓取智联招聘的简历
	 }else if($type=="中华英才"){
		 $msg = zhyc($user,$pwd);//抓取智联招聘的简历
	 }
	echo $msg;
?>