<?php
/* *
* $Author ��PHPYUN�����Ŷ�
*
* ����: http://www.phpyun.com
*
* ��Ȩ���� 2009-2015 ��Ǩ�γ���Ϣ�������޹�˾������������Ȩ����
*
* ���������δ����Ȩǰ���£�����������ҵ��Ӫ�����ο����Լ��κ���ʽ���ٴη�����
*/
class expect_controller extends company{
	function index_action(){
		$urlarr['c']="expect";
		$urlarr["page"]="{{page}}";
		$pageurl=$this->url("index","index",$urlarr);
		$this->get_page("resume_file","`uid`='".$this->uid."' order by sort desc",$pageurl,"12","`title`,`body`,`ctime`,`id`,`picurl`");
		$sessionid=session_id();
		$this->yunset("sessionid",$sessionid);
		$this->public_action();
		$this->yunset("js_def",5);
		$this->com_tpl('expect');
	}
	function del_action(){
		if($_GET['id']){
			$row=$this->obj->DB_select_once("resume_file","`id`='".(int)$_GET['id']."' and `uid`='".$this->uid."'","`picurl`");
			if(is_array($row))
			{
				$this->obj->unlink_pic(".".$row['picurl']);
				$oid=$this->obj->DB_delete_all("resume_file","`id`='".(int)$_GET['id']."' and `uid`='".$this->uid."'");
			}
			if($oid)
			{
				$this->obj->member_log("ɾ���ϴ��ļ���");
				$this->layer_msg('ɾ���ɹ���',9);
			}else{
				$this->layer_msg('ɾ��ʧ�ܣ�',8);
			}
		}
	}
	function showpic_action(){
		if($_GET['id']){
			$this->public_action();
			$picurl=$this->obj->DB_select_once("resume_file","`id`='".(int)$_GET['id']."' and `uid`='".$this->uid."'","`picurl`,`title`,`sort`");
			$this->yunset("picurl",$picurl);
			$this->yunset("uid",$this->uid);
			$this->yunset("id",$_GET['id']);
		    $this->yunset("js_def",2);
			$this->com_tpl('editshow');
		}
	}
	function delshow_action(){
		
		$ids=@explode(',',$_POST['ids']);
		$resume_file=$this->obj->DB_select_all("resume_file","`id` in (".$this->pylode(',',$ids).") and `uid`='".$this->uid."'","`picurl`");
		if(is_array($resume_file)&&$resume_file){
			foreach($resume_file as $val){
				$this->obj->unlink_pic(".".$val['picurl']);
			}
			$this->obj->DB_delete_all("resume_file","`id` in (".$this->pylode(',',$ids).") and `uid`='".$this->uid."'","");
			$this->obj->member_log("ɾ����ҵ����չʾ");
		}
		return true;
	}
	function saveexpect_action(){
		if($_POST['submitbtn']){
			$pid=$this->pylode(',',$_POST['id']);
			$company_expect=$this->obj->DB_select_all("resume_file","`id` in (".$pid.") and `uid`='".$this->uid."'","`id`");
			if($company_expect&&is_array($company_expect)){
				foreach($company_expect as $val){
					$title=$_POST['title_'.$val['id']];
					$this->obj->update_once("resume_file",array("title"=>trim($title)),array("id"=>(int)$val['id']));
					
					
					$body=$_POST['body_'.$val['id']];
					$this->obj->update_once("resume_file",array("body"=>trim($body)),array("id"=>(int)$val['id']));
					
					
				}
				$this->obj->member_log("�ϴ�����");
				$this->obj->ACT_layer_msg("�ѳɹ��ϴ�������",9,"index.php?c=expect");
			}else{
				$this->obj->ACT_layer_msg("�Ƿ�������",3,"index.php");
			}
		}else{
			$this->obj->ACT_msg("index.php","�Ƿ�������");
		}
	}
	function addexpect_action(){
		$this->public_action();
		$this->yunset("uid",$this->uid);
		$this->yunset("js_def",5);
		$this->com_tpl('addexpect');
	}
	function upshow_action(){
       if($_POST['submitbtn']){
       	$time=time();
            unset($_POST['submitbtn']);
	        if(!empty($_FILES['uplocadpic']['tmp_name']))
			{
					$upload=$this->upload_pic("../upload/show/",false);
					$uplocadpic=$upload->picture($_FILES['uplocadpic']);
					$this->picmsg($uplocadpic,$_SERVER['HTTP_REFERER']);
					$uplocadpic = str_replace("../upload/show","./upload/show",$uplocadpic);
	            	$row=$this->obj->DB_select_once("resume_file","`uid`='".(int)$_POST['uid']."' and `id`='".intval($_POST['id'])."'","`picurl`");
					if(is_array($row))
					{
						$this->obj->unlink_pic(".".$row['picurl']);
					}
			}else{
				$uplocadpic=$_POST['picurl'];
			}
			$nid=$this->obj->DB_update_all("resume_file","`picurl`='".$uplocadpic."',`title`='".$_POST['title']."',`sort`='".$_POST['showsort']."',`ctime`='".$time."'","`uid`='".$this->uid."'and `id`='".$_POST['id']."'");
			if($nid)
			{
				$this->obj->ACT_layer_msg("���³ɹ���",9,"index.php?c=expect");
			}else{
				$this->obj->ACT_layer_msg("����ʧ�ܣ�",8,"index.php?c=expect");
			}
			}

       }
}
?>