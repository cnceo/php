<?php
header("content-Type: text/html; charset=gb2312"); 

$conn=@mysql_connect("localhost","root","") or die ("���Ӵ���");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");
?>



<html>
<head>
<title>������� - �����˲���Դƽ̨</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><body>

<?php


	if(isset($_POST["submit"]))
	{ 
	
		$doccontent = $_POST['body'];
		
	    $result = iconv("UTF-8","gbk//TRANSLIT",$doccontent);//��uft8ҳ�������ת��GBK���룻
		
		$docid=$_POST['id'];
		

		$sql=mysql_query("UPDATE  `phpyun_resume_file` SET  `body` =  '$result' WHERE  `id` ='$docid'");
		
		if($sql){
			echo "<script>alert('�ɹ����������');window.parent.location.href='../member/index.php?c=expect'</script>";
		}else{
			echo "<script>alert('��������ʧ�ܣ�');window.parent.location.href='../member/index.php?c=expect'</script>";
		}
	}




?>


</body>
</html>