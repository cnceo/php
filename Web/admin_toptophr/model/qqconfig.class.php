<?php
/*
* $Author ��PHPYUN�����Ŷ�
*
* ����: http://www.phpyun.com
*
* ��Ȩ���� 2009-2015 ��Ǩ�γ���Ϣ�������޹�˾������������Ȩ����
*
* ����������δ����Ȩǰ���£�����������ҵ��Ӫ�����ο����Լ��κ���ʽ���ٴη�����
 */
class qqconfig_controller extends common
{
	function index_action()
	{
		$this->yunset("config",$this->config);
		$this->yuntpl(array('admin/admin_qq_config'));
	}

	function save_action()
	{
 		if($_POST['config']){
			unset($_POST['config']);
			foreach($_POST as $key=>$v){
		    	$config=$this->obj->DB_select_num("admin_config","`name`='".$key."'");
			    if($config==false){
					$this->obj->DB_insert_once("admin_config","`name`='".$key."',`config`='".$this->stringfilter($v)."'");
			    }else{
					$this->obj->DB_update_all("admin_config","`config`='".$this->stringfilter($v)."'","`name`='".$key."'");
			    }
		 	}
			$this->web_config();
			$this->obj->ACT_layer_msg("��ݵ�¼���������޸ĳɹ���",9,1,2,1);
		}
	}
}

?>