<?php
header("content-Type: text/html; charset=utf-8"); 
/*
    梦想家设计工作室
    CopyRight 2014 All Rights Reserved
*/


///链接数据库/
$conn=@mysql_connect("localhost","root","abcdef123") or die ("链接错误");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'utf-8'");




///查询会员数据/
    $docsql="select *,phpyun_company.uid as wxuid from `phpyun_wx_cert`
	         LEFT JOIN phpyun_company ON phpyun_company.uid=`phpyun_wx_cert`.uid
		     WHERE phpyun_company.uid=".$_GET['uid']." ";
	 
	$docrs=mysql_query($docsql);
	$doc=mysql_fetch_array($docrs);


///如果第一次关注微信号回复内容/

define(Token,$_GET['Token']);
	$signature = $_GET['signature'];
	$timestamp = $_GET['timestamp'];
	$nonce = $_GET['nonce'];
	$echostr = $_GET['echostr'];
	$token = Token;
	$tmpArr = array($token,$timestamp,$nonce);
	sort($tmpArr);
	$tmpStr = implode($tmpArr);
	$result =  sha1($tmpStr);
	if($result == $signature){
		echo $echostr;
	}else{
		echo false;
	}
	//接收消息
	$poststr = $GLOBALS['HTTP_RAW_POST_DATA'];
	$xmlobj = simplexml_load_string($poststr, 'SimpleXMLElement', LIBXML_NOCDATA);
	$xmlArr = json_decode(json_encode($xmlobj),true);	
	if($xmlArr['MsgType']=='text'){
$title = '感谢您关注我公司微招聘官方平台。';
$description = '在这里，您可以更全面的了解到我公司的详情情况，实时掌握我公司的最新招聘信息。';
$picurl = "http://www.toptophr.com/".$doc['firmpic']."";
$url = "http://www.toptophr.com/company/index.php?id=".$doc['wxuid']."&style=wap";
echo imgsend($title,$description,$picurl,$url);
}
//如果第一次关注微信号
if($xmlArr['MsgType']=='event'){
$title = '感谢您关注我公司微招聘官方平台。';
$description = '在这里，您可以更全面的了解到我公司的详情情况，实时掌握我公司的最新招聘信息。';
$picurl = "http://www.toptophr.com/".$doc['firmpic']."";
$url = "http://www.toptophr.com/company/index.php?id=".$doc['wxuid']."&style=wap";
echo imgsend($title,$description,$picurl,$url);
}	
 
 
	//发送文本消息
	function send($reply){
		global $xmlArr;
		$str = "<xml>
					<ToUserName><![CDATA[".$xmlArr['FromUserName']."]]></ToUserName>
					<FromUserName><![CDATA[".$xmlArr['ToUserName']."]]></FromUserName>
					<CreateTime>".$xmlArr['createTime']."</CreateTime>
					<MsgType><![CDATA[text]]></MsgType>
					<Content><![CDATA[%s]]></Content>
				</xml>";
 
		return $result = sprintf($str,$reply);
	}	
	function imgsend($title,$description,$picurl,$turl){
		global $xmlArr;
		$str = "<xml>
					<ToUserName><![CDATA[".$xmlArr['FromUserName']."]]></ToUserName>
					<FromUserName><![CDATA[".$xmlArr['ToUserName']."]]></FromUserName>
					<CreateTime>".$xmlArr['CreateTime']."</CreateTime>
					<MsgType><![CDATA[news]]></MsgType>
					<ArticleCount>1</ArticleCount>
					<Articles>
					<item>
					<Title><![CDATA[%s]]></Title> 
					<Description><![CDATA[%s]]></Description>
					<PicUrl><![CDATA[%s]]></PicUrl>
					<Url><![CDATA[%s]]></Url>
					</item>
					</Articles>
				</xml>";
		$result = sprintf($str,$title,$description,$picurl,$turl);
		return $result;
	}
	
	
 
?>


