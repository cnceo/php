<?php
header("Content-type: text/html; charset=UTF-8");

$conn=@mysql_connect("localhost","root","") or die ("链接错误");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'utf-8'");


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
</head>


<body>
<?php
/*
 * PHP 读取MS Word文件格式.doc中的文字
 * Code By Jenen, http://blog.yuing.cn/
 */

	if (file_exists($doc['picurl']))
	{
		$doccontent = nl2br(doc2text($doc['picurl']));
	}
?>

<?php
if($_GET['ac']=='fx')
  {
?>


<form action="savedoc2text.php" method="post" >
<input name="id" value="<?php echo $_GET['expect_id']?>" type="hidden" >
<textarea name="body" style="display:none"><?php echo $doccontent?></textarea>

     <div style="color:#3366CC; width:379px;height:90px;line-height:90px;text-align:center">
	 分享简历后，其他企业将可以搜索到您上传的这份简历。
	 </div>
	 
     <div class="btn"> 
       <input class="btn_1" type="submit"  name="submit" value="分享简历" >
	</div>


</form>

<?php
}else{
?>
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
     <div class="yun_content" style="line-height:20px;font-family:微软雅黑,Arial"><?php echo $doccontent?></div>

     <div class="btn"> 
       <input class="btn_1" type="button" name="submit" value="下载简历" onClick="javascript:window.location.href='<?php echo $doc['picurl'];?>'">
       <input class="btn_1" type="button" name="submit" value="打印简历 " onClick="window.print();"> 
	</div>
    </div>
</div>
  <div class="foot" style="font-family:微软雅黑,Arial"><a href="http://www.toptophr.com" target="_blank">拓普人才网</a> &copy; 版权所有 http:www.toptophr.com  本网招聘及简历信息等 ,未经书面授权不得转载 <br />
  </div>
</div> 



<?php
  }
?>

<?php

function doc2text($doc_file,$data_file = 'data.json')
{
	if (!file_exists($data_file)) die('function.doc2text: data file not found!');
	$common_chars = json_decode(file_get_contents($data_file),true);
	$fp = fopen($doc_file,'r');
	$raw_sectors = array();
	$text = '';
	$en_text = '';
	$en_sectors = 0;
	$utf8_sectors = 0;
	//每512个字节为一个sector
	while(!feof($fp) && $sector = fread($fp,512))
	{
		/**
		* 由于中文和英文的文本在doc文件中存储规则不同。所以先两种方式都处理出来。最后再判断哪个的乱码少。
		*/
		$tmp = ''; //存储用于判断是否是文本sector的临时处理数据
		$real_content = ''; //存储未经修改的文本数据
		$en_content = '';
		$en_tmp = '';
		for($i=0;$i<512;$i+=2)
		{
			//中文部分
			//根据little endian规则读取(倒序)
			$code = bin2hex($sector[$i+1]).''.bin2hex($sector[$i]);
			//转换成utf-8编码
			$t = mb_convert_encoding(@pack("H4", $code),"UTF-8","UCS-2");
			$real_content .= $t;
			//如果不是常用的汉字、字母、数字和标点等，就当作空格对待
			$tmp .= ($common_chars[$t] == 1)?$t:' ';
			
			//英文部分
			for($j=0;$j<2;$j++)
			{
				$t = $sector[$i+$j];
				$en_content .= $t;
				$en_tmp .= (ord($t)>=35 && ord($t)<=126)?$t:' ';
			}
		}
		
		//中文
		if (calc_sector_chars($tmp) > 0.35)
		{
			$utf8_sectors++;
			$text .= $real_content;
		}
		//英文
		if (calc_sector_chars($en_tmp) > 0.35)
		{
			$en_sectors++;
			$en_text .= $en_content;
		}
	}
	fclose($fp);
	//判断中文和英文哪个乱码少
	if ($en_sectors == $utf8_sectors)
	{
		if (calc_valid_en_chars($en_text) > calc_valid_utf8_chars($common_chars,$text)) $text = $en_text;
	}
	else if ($en_sectors > $utf8_sectors)
	{
		$text = $en_text;
	}
	return str_replace("\r","\n",$text);
}

function calc_valid_utf8_chars(&$common_chars,&$content)
{
	$valid = 0;
	for($i=0,$len = mb_strlen($content,'UTF-8');$i<$len;$i++)
	{
		$c = mb_substr($content,$i,1,'UTF-8');
		if (!trim($c) || $common_chars[$c]) $valid++;
	}
	$re = ($len > 0)?$valid/$len:0;
	echo 'utf-8:'.$re."\n";
	return $re;
}

function calc_valid_en_chars(&$content)
{
	$valid = 0;
	for($i=0,$len = strlen($content);$i<$len;$i++)
	{
		$c = $content[$i];
		if (!trim($c) || ord($c)>=35 && ord($c)<=126) $valid++;
	}
	$re = ($len > 0)?$valid/$len:0;
	echo 'en:'.$re."\n";
	return $re;
}


function calc_sector_chars($tmp)
{
	$tmp = preg_replace('/\s+[^\s]{1,4}\s+/','',$tmp);
	$tmp = str_replace(array(
		'SummaryInformation',
		'DocumentSummaryInformation',
		'WordDocument',
		'Microsoft Office',
		'Administrator',
		'Entry',
		'Document',
		'Normal'),'',$tmp);
	$tmp = trim(preg_replace('/\s{2,}/',' ',$tmp));
	return strlen($tmp)/512; //计算剩下的文本与sector长度512的比值
}
?>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19433426-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>