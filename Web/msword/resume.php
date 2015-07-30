<?php
header("Content-type: text/html; charset=GBK");

$conn=@mysql_connect("localhost","root","") or die ("链接错误");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");


    $docsql="select * from `phpyun_resume_file`  WHERE `id`=".$_GET['expect_id']." ";
	$docrs=mysql_query($docsql);
	$doc=mysql_fetch_array($docrs);



?>



<html>
<head>
<title>查看简历内容 - 拓普人才资源平台</title>

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
    <div style="position:relative"> <span style="color:#900; font-size:20px;">简历库简历查看</span></div>
    <p>此简历是由企业会员分享的Word文档格式编译生成，页面展示会存在一些乱码现象，您可以点击下载简历查看到详细内容。</p>
  </div>
  <div class="btn"> 

				
       <input class="btn_1" type="button" name="submit" value="下载简历" onClick="javascript:window.location.href='<?php echo $doc['picurl'];?>'">
       <input class="btn_1" type="button" name="submit" value="打印简历 " onClick="window.print();"> 
	   
	 </div>
     <div class="yun_content" >
	 <textarea name="textarea1" id="textarea1" style="overflow-y: hidden;width:740px;color:#333;border:0px;font-family:微软雅黑;line-height:25px" ><?php echo $doc['body'];?></textarea>
				<script>document.getElementById("textarea1").style.height = document.getElementById("textarea1").scrollHeight + 10 + "px";</script>
	 </div>

     <div class="btn"> 
       <input class="btn_1" type="button" name="submit" value="下载简历" onClick="javascript:window.location.href='<?php echo $doc['picurl'];?>'">
       <input class="btn_1" type="button" name="submit" value="打印简历 " onClick="window.print();"> 
	</div>
    </div>
</div>
  <div class="foot" style="font-family:微软雅黑,Arial"><a href="http://www.toptophr.com" target="_blank">拓普人才网</a> &copy; 版权所有 http:www.toptophr.com  本网招聘及简历信息等 ,未经书面授权不得转载 <br />
  </div>
</div> 





</body>
</html>