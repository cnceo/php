<?php
/* *
* $Author ：PHPYUN开发团队
*
* 官网: http://www.phpyun.com
*
* 版权所有 2009-2015 宿迁鑫潮信息技术有限公司，并保留所有权利。
*
* 软件声明：未经授权前提下，不得用于商业运营、二次开发以及任何形式的再次发布。
*/
class seemessage_controller extends company
{
	function index_action()
	{
		$urlarr=array("c"=>"seemessage","page"=>"{{page}}");
		$pageurl=$this->url("index","index",$urlarr);
		$this->get_page("message","`uid`='".$this->uid."' order by id desc",$pageurl,"10");
		$this->public_action();
		$this->yunset("js_def",7);
		$this->com_tpl('seemessage');
	}
	function del_action()
	{
		if($_GET['id'])
		{
			$nid=$this->obj->DB_delete_all("message","`id`='".(int)$_GET['id']."' AND `uid`='".$this->uid."'"," ");
 			if($nid){
 				$this->obj->member_log("删除留言反馈");
 				$this->layer_msg('删除成功！',9,0,"index.php?c=seemessage");
 			}else{
 				$this->layer_msg('删除失败！',8,0,"index.php?c=seemessage");
 			}
		}
	}
}
?>