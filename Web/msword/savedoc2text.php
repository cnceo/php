<?php
header("content-Type: text/html; charset=gb2312"); 

$conn=@mysql_connect("localhost","root","") or die ("链接错误");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");
?>



<html>
<head>
<title>分享简历 - 拓普人才资源平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><body>

<?php


	if(isset($_POST["submit"]))
	{ 
	
		$doccontent = $_POST['body'];
		
	    $result = iconv("UTF-8","gbk//TRANSLIT",$doccontent);//把uft8页面的内容转成GBK编码；
		
		$docid=$_POST['id'];
		

		$sql=mysql_query("UPDATE  `phpyun_resume_file` SET  `body` =  '$result' WHERE  `id` ='$docid'");
		
		if($sql){
			echo "<script>alert('成功分享简历！');window.parent.location.href='../member/index.php?c=expect'</script>";
		}else{
			echo "<script>alert('简历分享失败！');window.parent.location.href='../member/index.php?c=expect'</script>";
		}
	}




?>


</body>
</html>