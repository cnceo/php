<?php
header("Content-type: text/html; charset=GBK");

$conn=@mysql_connect("localhost","root","") or die ("���Ӵ���");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");


    $docsql="select * from `phpyun_resume_file`  WHERE `id`=".$_GET['expect_id']." ";
	$docrs=mysql_query($docsql);
	$doc=mysql_fetch_array($docrs);



?>



<html>
<head>
<title>�鿴�������� - �����˲���Դƽ̨</title>

<link rel="stylesheet"  type="text/css" href="http://localhost/toptophr.com/template/personalityblue/style/Resume.css">
<script src="../js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="../js/public.js" language="javascript"></script>
<script src="../js/layer/layer.min.js" language="javascript"></script>
<script src="../template/personalityblue/js/resume.js" language="javascript"></script>
<script type="text/javascript" src="../toptophr.com/js/jscolor/jscolor.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>


<body>

<div class="clear"></div>
 	<div class="container" >
        <div class="head">
            <div class="logo_1">
                <a href="../index.php"><img src="../data/logo/20141216/14218746848.PNG" class="png"></a>
            </div>
        </div>
<div class="menu1Content ">
  <div class="menu1_top">
    <div style="position:relative"> <span style="color:#900; font-size:20px;">����������鿴</span></div>
    <p>�˼���������ҵ��Ա�����Word�ĵ���ʽ�������ɣ�ҳ��չʾ�����һЩ�������������Ե�����ؼ����鿴����ϸ���ݡ�</p>
  </div>
  <div class="btn"> 

				
       <input class="btn_1" type="button" name="submit" value="���ؼ���" onClick="javascript:window.location.href='<?php echo $doc['picurl'];?>'">
       <input class="btn_1" type="button" name="submit" value="��ӡ���� " onClick="window.print();"> 
	   
	 </div>
     <div class="yun_content" >
	 <textarea name="textarea1" id="textarea1" style="overflow-y: hidden;width:740px;color:#333;border:0px;font-family:΢���ź�;line-height:25px" ><?php echo $doc['body'];?></textarea>
				<script>document.getElementById("textarea1").style.height = document.getElementById("textarea1").scrollHeight + 10 + "px";</script>
	 </div>

     <div class="btn"> 
       <input class="btn_1" type="button" name="submit" value="���ؼ���" onClick="javascript:window.location.href='<?php echo $doc['picurl'];?>'">
       <input class="btn_1" type="button" name="submit" value="��ӡ���� " onClick="window.print();"> 
	</div>
    </div>
</div>
  <div class="foot" style="font-family:΢���ź�,Arial"><a href="http://www.toptophr.com" target="_blank">�����˲���</a> &copy; ��Ȩ���� http:www.toptophr.com  ������Ƹ��������Ϣ�� ,δ��������Ȩ����ת�� <br />
  </div>
</div> 





</body>
</html>