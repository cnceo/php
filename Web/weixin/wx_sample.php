<?php
header("Content-type: text/html; charset=gb2312");

$conn=@mysql_connect("localhost","root","") or die ("���Ӵ���");
mysql_select_db("toptophr_com",$conn);
mysql_query("set names 'gb2312'");





///��ѯ��Ա����/
    $docsql="select *,phpyun_company.uid as wxuid from `phpyun_wx_cert`
	         LEFT JOIN phpyun_company ON phpyun_company.uid=`phpyun_wx_cert`.uid
		     WHERE phpyun_company.uid=".$_GET['uid']." ";
	 
	$docrs=mysql_query($docsql);
	$doc=mysql_fetch_array($docrs);
	$title = '��л����'.$doc['name'].'�ٷ�����š�';
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
	//������Ϣ
	$poststr = $GLOBALS['HTTP_RAW_POST_DATA'];
	$xmlobj = simplexml_load_string($poststr, 'SimpleXMLElement', LIBXML_NOCDATA);
	$xmlArr = json_decode(json_encode($xmlobj),true);	
	if($xmlArr['MsgType']=='text'){
$reply = "�ף���л�������ԣ������ʱ��û�пͷ���Ա�ظ�����Ҳ����ͨ�����·�ʽ��������ϵ��
΢������http://toptophr.com/company/index.php?id=".$doc['uid']."&style=wap
�绰��".$doc['linkphone']."
��ַ��".$doc['address']."
";

echo send($reply);
}
//�����һ�ι�ע΢�ź�
if($xmlArr['MsgType']=='event'){
$title = '��л����'.$doc['name'].'�ٷ�����š�';
$description = $doc['content'];
$picurl = "http://www.toptophr.com/".$doc['content']."";
$url = "http://www.toptophr.com/company/index.php?id=".$doc['uid']."&style=wap";
echo imgsend($title,$description,$picurl,$url);
}	
 
 
	//�����ı���Ϣ
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
	
	
 //�Զ���˵�
 
$access_token =$doc['access_token'];
  
$jsonmenu = '{
      "button":[
      {
           "name":"�ҵĲ˵�",
           "sub_button":[
            {
                "type":"view",
                "name":"�ҵ��ʺ�",
                "url":"http://www.toptophr.com/wap/member/index.php"
            },
            {
                "type":"view",
                "name":"�ҵļ���",
                "url":"http://www.toptophr.com/wap/member/index.php?c=resume"
            },
            {
               "type":"view",
                "name":"��������",
                "url":"http://www.toptophr.com/wap/member/index.php?c=msg"
            },
            {
               "type":"view",
                "name":"��Ƹְλ",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=post&style=wap"
            }]
      

       },
       {
           "name":"��ҵ����",
           "sub_button":[
             {
                "type":"view",
                "name":"��˾����",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=about&style=wap"
            },
            {
                "type":"view",
                "name":"��ҵ��Ʒ",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=product&style=wap"
            },
            {
                "type":"view",
                "name":"��ҵ����",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=news&style=wap"
            },
			{
                "type":"view",
                "name":"��ҵ����",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=show&style=wap"
            }]
       

       },
       {
           "name":"��ϵ��ҵ",
           "sub_button":[
             {
                "type":"view",
                "name":"΢��̳",
                "url":"http://m.wsq.qq.com/264238151 "
            },
			{
                "type":"view",
                "name":"��ϵ��ʽ",
                "url":"http://www.toptophr.com/company/index.php?id='.$doc['wxuid'].'&tp=connection&style=wap"
            },
            {
                "type":"view",
                "name":"����λ��",
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