<?php
/*
* $Author ：PHPYUN开发团队
*
* 官网: http://www.phpyun.com
*
* 版权所有 2009-2015 宿迁鑫潮信息技术有限公司，并保留所有权利。
*
* 软件声明：未经授权前提下，不得用于商业运营、二次开发以及任何形式的再次发布。
 */
class Page {
     public $firstRow;			
     public $listRows;			
     public $parameter;			
     protected $totalPages;		
     protected $totalRows  ;	
     protected $nowPage    ;	
     protected $coolPages   ;	
     protected $rollPage   ;	
     protected $config  =    array('header'=>'条记录','prev'=>'上一页','next'=>'下一页','first'=>'第一页','last'=>'最后一页','theme'=>' %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %downPage% %first%  %prePage%  %linkPage%  %nextPage% %end%'); 

     public function __construct($totalRows,$listRows=6,$parameter='',$rollPage=5) {
         $this->totalRows = $totalRows;
         $this->parameter = $parameter;
         $this->rollPage = $rollPage;
         $this->listRows = $listRows;
         $this->totalPages = ceil($this->totalRows/$this->listRows);
         $this->coolPages  = ceil($this->totalPages/$this->rollPage);
         $this->nowPage  = !empty($_GET['page'])?$_GET['page']:1;
         if(!empty($this->totalPages) && $this->nowPage>$this->totalPages) {
             $this->nowPage = $this->totalPages;
         }
         $this->firstRow = $this->listRows*($this->nowPage-1);
     }

     public function setConfig($name,$value){
         if(isset($this->config[$name])){
             $this->config[$name]=$value;
        }
     }

     public function show() {
         if(0 == $this->totalRows) return '';
         $p = 'page';
         $nowCoolPage      = ceil($this->nowPage/$this->rollPage);
         $url  =  $_SERVER['REQUEST_URI'].(strpos($_SERVER['REQUEST_URI'],'?')?'':"?").$this->parameter;
         $parse = parse_url($url);
         if(isset($parse['query'])) {
            parse_str($parse['query'],$params);
             unset($params[$p]);
             $url   =  $parse['path'].'?'.http_build_query($params);
         }

        
         $upRow   = $this->nowPage-1;
         $downRow = $this->nowPage+1;
        if ($upRow>0){
            $upPage="<a href='".$url."&".$p."=$upRow'>".$this->config['prev']."</a>";
        }else{
             $upPage="";
         }
         if ($downRow <= $this->totalPages){
             $downPage="<a href='".$url."&".$p."=$downRow'>".$this->config['next']."</a>";
         }else{
             $downPage="";
        }
        
         if($nowCoolPage == 1){
             $theFirst = "";
             $prePage = "";
         }else{
            $preRow =  $this->nowPage-$this->rollPage;
            $prePage = "<a href='".$url."&".$p."=$preRow' >上".$this->rollPage."页</a>";
            $theFirst = "<a href='".$url."&".$p."=1' >".$this->config['first']."</a>";
         }
       if($nowCoolPage == $this->coolPages){
             $nextPage = "";
             $theEnd="";
         }else{
             $nextRow = $this->nowPage+$this->rollPage;
             $theEndRow = $this->totalPages;
             $nextPage = "<a href='".$url."&".$p."=$nextRow' >下".$this->rollPage."页</a>";
             $theEnd = "<a href='".$url."&".$p."=$theEndRow' >".$this->config['last']."</a>";
         }
		
         $linkPage = "";
         for($i=1;$i<=$this->rollPage;$i++){
            $page=($nowCoolPage-1)*$this->rollPage+$i;
            if($page!=$this->nowPage){
                 if($page<=$this->totalPages){
                   $linkPage .= "&nbsp;<a href='".$url."&".$p."=$page'>&nbsp;".$page."&nbsp;</a>";
                 }else{
                    break;
                 }
            }else{
                 if($this->totalPages != 1){
                     $linkPage .= "&nbsp;<span class='current'>".$page."</span>";
                }
             }
        }
         $pageStr=str_replace(
             array('%header%','%nowPage%','%totalRow%','%totalPage%','%upPage%','%downPage%','%first%','%prePage%','%linkPage%','%nextPage%','%end%'), array($this->config['header'],$this->nowPage,$this->totalRows,$this->totalPages,$upPage,$downPage,$theFirst,$prePage,$linkPage,$nextPage,$theEnd),$this->config['theme']);
         return $pageStr;
     }
}
?>