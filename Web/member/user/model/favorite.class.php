<?php
/* *
* $Author ��PHPYUN�����Ŷ�
*
* ����: http://www.phpyun.com
*
* ��Ȩ���� 2009-2015 ��Ǩ�γ���Ϣ�������޹�˾������������Ȩ����
*
* ����������δ����Ȩǰ���£�����������ҵ��Ӫ�����ο����Լ��κ���ʽ���ٴη�����
*/
class favorite_controller extends user{
	function index_action(){
		$CacheArr['city'] =array('city_index','city_type','city_name');
		$CacheArr['com'] =array('comdata','comclass_name');
		$this->CacheInclude($CacheArr);
		$this->public_action();
		$this->member_satic();
		$urlarr=array("c"=>"favorite","page"=>"{{page}}");
		$pageurl=$this->url("index","index",$urlarr);
		$rows=$this->get_page("fav_job","`uid`='".$this->uid."' order by id desc",$pageurl,"20");
		$fnum=$this->obj->DB_select_num("fav_job","`uid`='".$this->uid."'","`id`");
		if($rows&&is_array($rows)){
			foreach($rows as $val){
				$jobids[]=$val['job_id'];
			}
			$company_job=$this->obj->DB_select_all("company_job","`id` in(".@implode(',',$jobids).")","`id`,`salary`,`provinceid`,`cityid`");
			foreach($rows as $key=>$val){
				foreach($company_job as $v){
					if($val['job_id']==$v['id']){
						$rows[$key]['salary']=$v['salary'];
						$rows[$key]['provinceid']=$v['provinceid'];
						$rows[$key]['cityid']=$v['cityid'];
					}
				}
			}
		}
		$num=$this->obj->DB_select_num("fav_job","`uid`='".$this->uid."'");
		$this->obj->DB_update_all("member_statis","fav_jobnum='".$num."'","`uid`='".$this->uid."'");
		$this->yunset("rows",$rows);
		$this->yunset("fnum",$fnum);
		$this->user_tpl('favorite');
	}
	function del_action(){
		if($_GET['id']){
			$del=(int)$_GET['id'];
			$nid=$this->obj->DB_delete_all("fav_job","`id`='".$del."' and `uid`='".$this->uid."'");
			if($nid){
				$fnum=$this->obj->DB_select_num("fav_job","`uid`='".$this->uid."'","`id`");
				$this->obj->update_once('member_statis',array('fav_jobnum'=>$fnum),array('uid'=>$this->uid));
				$this->obj->member_log("ɾ���ղص�ְλ��Ϣ",5,3);
				$this->layer_msg('ɾ���ɹ���',9,0,"index.php?c=favorite");
			}else{
				$this->layer_msg('ɾ��ʧ�ܣ�',8,0,"index.php?c=favorite");
			}
		}
	}
}
?>