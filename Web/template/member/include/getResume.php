<?php 
	$msg = "..";
	//引入抓取简历文件
	try{
		include('zhilian.php');
		include('zhyc.php');
		include('51job.php');
	}catch(Exception $e){
		$msg = e;
	}
	$user = $_POST['username'];
	$pwd = $_POST['password'];
	$type = $_POST['type'];
	$msg = "";
	 if($type=="智联招聘"){
	 	//$msg = zhilian($user,$pwd);//抓取智联招聘的简历
	 }else if($type=="前程无忧"){
	 
	 }else if($type=="中华英才"){
		 
	 }
	echo $msg;
?>