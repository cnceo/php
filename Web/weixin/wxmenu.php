<?php
header("Content-type: text/html; charset=utf-8");

 //自定义菜单
 
$access_token =$_GET['access_token'];
  
$jsonmenu = '{
      "button":[
      {
           "name":"我的菜单",
           "sub_button":[
            {
                "type":"view",
                "name":"我的帐号",
                "url":"http://www.toptophr.com/wap/member/index.php?comid='.$_GET['uid'].'"
            },
            {
                "type":"view",
                "name":"我的简历",
                "url":"http://www.toptophr.com/wap/member/index.php?c=resume&comid='.$_GET['uid'].'"
            },
            {
               "type":"view",
                "name":"面试邀请",
                "url":"http://www.toptophr.com/wap/member/index.php?c=msg&comid='.$_GET['uid'].'"
            },
            {
               "type":"view",
                "name":"招聘职位",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=post&style=wap"
            }]
      

       },
       {
           "name":"企业介绍",
           "sub_button":[
             {
                "type":"view",
                "name":"公司资料",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=about&style=wap"
            },
            {
                "type":"view",
                "name":"企业产品",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=product&style=wap"
            },
            {
                "type":"view",
                "name":"企业新闻",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=news&style=wap"
            },
			{
                "type":"view",
                "name":"企业环境",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=show&style=wap"
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
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=connection&style=wap"
            },
            {
                "type":"view",
                "name":"地理位置",
                "url":"http://www.toptophr.com/company/index.php?id='.$_GET['uid'].'&tp=position&style=wap"
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