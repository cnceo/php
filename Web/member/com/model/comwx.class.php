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
class comwx_controller extends company
{
	function index_action()
	{
		$member=$this->obj->DB_select_once("member","`uid`='".$this->uid."'");
		$this->yunset("member",$member);
		$company=$this->obj->DB_select_once("company","`uid`='".$this->uid."'");
		$this->yunset("company",$company);
		$cert=$this->obj->DB_select_once("wx_cert","`uid`='".$this->uid."' and type='3'");
		$this->yunset("cert",$cert);
		$this->public_action();
		$this->yunset("js_def",2);
		$this->com_tpl("comwx");
	}
	function save_action()
	{
	 
		if($_POST['comwx'])
		{
		        $sql['step']=1;
				$sql['check']="�ʺţ�".$_POST['wxname']."&nbsp;���룺".$_POST['wxpassword'];
				$sql['check2']="0";
				$sql['ctime']=mktime();
				$sql['APPID']=$_POST['APPID'];
				$sql['APPSECRET']=$_POST['APPSECRET'];
			    $row=$this->obj->DB_select_once("wx_cert","`uid`='".$this->uid."' and type='3'");
				if(is_array($row))
				{
					$this->obj->unlink_pic("../".$row['check']);
					$where['uid']=$this->uid;
					$where['type']='3';
					$sql['status']="0";
					$this->obj->update_once("wx_cert",$sql,$where);
					$this->obj->member_log("�����ύ΢��Ƹ��������");
				}else{
					$sql['uid']=$this->uid;
					$sql['type']=3;
					$this->obj->insert_into("wx_cert",$sql);
					$this->obj->member_log("΢��Ƹ�������ύ����");
					if($this->config['com_cert_status']!="1")
					{
						$this->get_integral_action($this->uid,"integral_comcert","΢��Ƹ�������ύ����");
					}
				}
				$this->obj->ACT_layer_msg("����΢��Ƹ�������ύ���룬��������У�",9,1);
		}
	
	}
	function del_action()
	{
		if($_GET['type']=="moblie")
		{
			$this->obj->DB_update_all("company","`moblie_status`='0'","`uid`='".$this->uid."'");
		}
		if($_GET['type']=="email")
		{
			$this->obj->DB_update_all("company","`email_status`='0'","`uid`='".$this->uid."'");
		}
		if($_GET['type']=="qqid")
		{
			$this->obj->DB_update_all("member","`qqid`=''","`uid`='".$this->uid."'");
		}
		if($_GET['type']=="sinaid")
		{
			$this->obj->DB_update_all("member","`sinaid`=''","`uid`='".$this->uid."'");
		}
		$this->layer_msg("����󶨳ɹ���",8,0,$_SERVER['HTTP_REFERER']);
	}
}
?>