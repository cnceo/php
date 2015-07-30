<?php
header("Content-type: text/html; charset=gb2312");

$conn=@mysql_connect("localhost","root","") or die ("链接错误");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");





///查询会员数据/
    $docsql="select *,phpyun_company.uid as wxuid from `phpyun_wx_cert`
	         LEFT JOIN phpyun_company ON phpyun_company.uid=`phpyun_wx_cert`.uid
		     WHERE phpyun_company.uid=".$_GET['uid']." ";
	 
	$docrs=mysql_query($docsql);
	$doc=mysql_fetch_array($docrs);
	$title = '感谢您关'.$doc['name'].'官方服务号。';
	echo $title;

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
$reply = "亲，感谢您的留言，如果长时间没有客服人员回复，您也可以通过以下方式与我们联系：
微官网：http://toptophr.com/company/index.php?id=".$doc['uid']."&style=wap
电话：".$doc['linkphone']."
地址：".$doc['address']."
";

echo send($reply);
}
//如果第一次关注微信号
if($xmlArr['MsgType']=='event'){
$title = '感谢您关'.$doc['name'].'官方服务号。';
$description = $doc['content'];
$picurl = "http://www.toptophr.com/".$doc['content']."";
$url = "http://www.toptophr.com/company/index.php?id=".$doc['uid']."&style=wap";
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
	
	
 //自定义菜单
 
$access_token =$doc['access_token'];
  
$jsonmenu = '{
      "button":[
      {
           "name":"我的菜单",
           "sub_button":[
            {
                "type":"view",
                "name":"我的帐号",
                "url":"http://www.toptophr.com/wap/member/index.php"
            },
            {
                "type":"view",
                "name":"我的简历",
                "url":"http://www.toptophr.com/wap/member/index.php?c=resume"
            },
            {
               "type":"view",
                "name":"面试邀请",
                "url":"http://www.toptophr.com/wap/member/index.php?c=msg"
            },
            {
               "type":"view",
                "name":"招聘职位",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=post&style=wap"
            }]
      

       },
       {
           "name":"企业介绍",
           "sub_button":[
             {
                "type":"view",
                "name":"公司资料",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=about&style=wap"
            },
            {
                "type":"view",
                "name":"企业产品",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=product&style=wap"
            },
            {
                "type":"view",
                "name":"企业新闻",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=news&style=wap"
            },
			{
                "type":"view",
                "name":"企业环境",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=show&style=wap"
            }]
       

       },
       {
           "name":"联系企业",
           "sub_button":[
             {
                "type":"view",
                "name":"微论坛",
                "url":"http://m.wsq.qq.com/264238151 "
            },
			{
                "type":"view",
                "name":"联系方式",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=connection&style=wap"
            },
            {
                "type":"view",
                "name":"地理位置",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=position&style=wap"
            }]
       

       }]
 }';



$url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$access_token;
$result = https_request($url, $jsonmenu);
var_dump($result);

function https_request($url,$data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}
?>