<?php
header("Content-type: text/html; charset=UTF-8");
?><html>
<head>
	<title>用PHP提取二进制doc(MS Word)文档的的文本内容演示</title>
	<meta name="Author" content="Longbill">
</head>
<body>
<h1>用PHP提取二进制doc(MS Word)文档的的文本内容演示</h1>
<h2>作者： Longbill (<a href="http://php.js.cn">php.js.cn</a>) 2010-11-14</h2>
<form action="old_doc2text.php" method="post" enctype="multipart/form-data">
<input type="file" name="docfile" size=20 /> <input type="submit" name="submit" value="上传" />
</form>
<?php
/*
 * PHP 读取MS Word文件格式.doc中的文字
 * Code By Jenen, http://blog.yuing.cn/
 */

if(isset($_FILES['docfile']))
{
	$docfile = $_FILES['docfile']['tmp_name'];
	$docname = $_FILES['docfile']['name'];
	if(strtolower(end(explode(".", $docname)))!='doc') exit('请上传.doc格式的文件!');

	if (file_exists($docfile))
	{
		echo "<h4>{$docname} 提取结果：</h4>";
		echo "<p>";
		echo nl2br(doc2text($docfile));
		echo "</p>";
	}
}



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