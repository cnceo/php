<?php /* Smarty version 2.6.26, created on 2015-06-15 15:53:11
         compiled from wap/com_show.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'wap/com_show.htm', 48, false),array('function', 'wapurl', 'wap/com_show.htm', 74, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<!-- Content area -->
<div class="body_wap">
<header>
   <div class="header">
    <div class="header_bg"> <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l fa fa-chevron-left"></i></a>
       <div class="header_h1">ְλ����</div>
       <label for="tm"><i class="header_top_r fa fa-th "></i></label>
     </div>
  </div>
 </header>
 
 
<section>
  <div class="user_contnet mt10">
  <!--��������Ȧ���� -->
  <link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/SELF_PUBLIC/content.css" />


<div id="mcover" onClick="document.getElementById('mcover').style.display='';" style="display:none;">
                    <img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/SELF_PUBLIC/Img/guide.png" />
                </div>

   <div class="text" id="content">
                    <div id="mess_share">
                        <div id="share_1">
                            <button class="button2" onClick="document.getElementById('mcover').style.display='block';">
                                <img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/SELF_PUBLIC/Img/icon_msg.png" width="64" height="64" />
                                &nbsp;���͸�����
                            </button>
                        </div>
                        <div id="share_2">
                            <button class="button2" onClick="document.getElementById('mcover').style.display='block';">
                                <img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/SELF_PUBLIC/Img/icon_timeline.png" width="64" height="64" />
                                &nbsp;��������Ȧ
                            </button>
                        </div>
                        <div class="clr"></div>
                    </div>
                </div>

  <!--��������Ȧ�������--> 
  
  
    <div class="user_contnet_box ">
      <div class="com_show_t1">
        <h2><?php echo $this->_tpl_vars['job']['name']; ?>
</h2>
        <span class="com_show_time"><?php echo ((is_array($_tmp=$this->_tpl_vars['job']['lastupdate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</span>
		</div>
        <div class="com_show_t2">
		<i class="user_map fa fa-map-marker"></i><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['job']['provinceid']]; ?>
/<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['job']['cityid']]; ?>
<i class="user_map fa fa-jpy" style="margin-left:20px;"></i><span class="com_show_xz cf60"><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['salary']]; ?>
</span><span class="com_show_l"><i class="user_map fa fa-eye"></i><?php echo $this->_tpl_vars['job']['jobhits']; ?>
</span></div>
         
        <!--<aside class="com_show_fl"> 
         
        <span class="com_show_fl_s">����ס</span> 
         
        <span class="com_show_fl_s">�ۺϲ���</span> 
         
        <span class="com_show_fl_s">����һ��</span> 
         
        <span class="com_show_fl_s">����һ��</span> 
         
      </aside>-->
            </div>
  </div>
</section>



  
  
<section>
  <div class="user_contnet">
    <div class="user_contnet_box "> <a href="<?php echo smarty_function_wapurl(array('m' => 'firm','url' => "c:show,id:".($this->_tpl_vars['job']['uid'])), $this);?>
" class="com_show_firm">
      <aside class="com_show_firm_name"><?php echo $this->_tpl_vars['company']['name']; ?>
</aside>
      <span class="user_contnet_info_n">���ʣ�</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['company']['pr']]; ?>
<span class="user_contnet_info_n" style="margin-left:30px;">��ģ��</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['company']['mun']]; ?>
 <i class="com_show_firm_icon fa fa-angle-double-right"></i> </a> </div>
  </div>
</section>
<section>
  <div class="user_contnet">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">������Ϣ</span></div>
      <ul class="user_contnet_ul">
        <li><span class="user_contnet_info_n">�������ʣ�</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['type']]; ?>
</li>
        <li><span class="user_contnet_info_n">�������飺</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['exp']]; ?>
</li>
        <li><span class="user_contnet_info_n">ѧ��Ҫ��</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['edu']]; ?>
 </li>
        <li><span class="user_contnet_info_n">��Ƹ������</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['number']]; ?>
</li>
        <li><span class="user_contnet_info_n">�Ա�Ҫ��</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['sex']]; ?>
</li>
        <li><span class="user_contnet_info_n">�����̶ȣ�</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['edu']]; ?>
</li>
        <li><span class="user_contnet_info_n">����������</span><?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['job']['provinceid']]; ?>
/<?php echo $this->_tpl_vars['city_name'][$this->_tpl_vars['job']['cityid']]; ?>
</li>
        <li class="com_show_li"><span class="user_contnet_info_n">ְλ���ͣ�</span><?php echo $this->_tpl_vars['comclass_name'][$this->_tpl_vars['job']['type']]; ?>
</li>
        <li class="com_show_li"><span class="user_contnet_info_n">������ҵ��</span><?php echo $this->_tpl_vars['industry_name'][$this->_tpl_vars['job']['hy']]; ?>
</li>
        
      </ul>
    </div>
  </div>
</section>
<section>
  <div class="user_contnet">
    <div class="user_contnet_box ">
      <div class="wap_title"><span class="">ְλ����</span></div>
       <?php echo $this->_tpl_vars['job']['description']; ?>

	   </div>
  </div>
</section>





<?php if (( $this->_tpl_vars['config']['com_login_link'] == 1 && $_COOKIE['uid'] && $_COOKIE['usertype'] == 1 ) || $this->_tpl_vars['config']['com_login_link'] == 0): ?>
<div class="user_contnet">
  <div class="user_contnet_box ">
    <div class="wap_title"><span class="">��ϵ��ʽ</span></div>
        <ul class="com_post_msg">
      <li>[��ϵ��] <?php echo $this->_tpl_vars['company']['linkman']; ?>
</li>
      <li>[��ϵ�绰] <?php echo $this->_tpl_vars['company']['linkphone']; ?>
</li>
      <li>[��ϵ�ֻ�] <?php echo $this->_tpl_vars['company']['linktel']; ?>
</li>
      <li>[��˾��ַ] <?php echo $this->_tpl_vars['company']['address']; ?>
</li>
    </ul>
    </div>
</div>
<?php else: ?>
<div class="user_contnet">
  <div class="user_contnet_box ">
    <div class="wap_title"><span class="">��ϵ��ʽ</span></div>
        <div class="com_post_login"> �� <a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="com_s_logoin">��¼</a> ��鿴��ϵ��ʽ
      û���ʺţ� <a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
" class="cf60">[ע��]</a> </div>
     </div>
</div>
<?php endif; ?>

<div class="user_contnet">
  <div class="user_contnet_box ">
    <div class="wap_title"><span class="">������ά���ȡ����ְλ��Ϣ</span></div>
        <img src="<?php echo $this->_tpl_vars['banner']['pic']; ?>
" class="pro-msg-img imgbox" alt="" width="280px" style="width:280px" />
     </div>
</div>



</section>
<!--������ -->

<div id="yun_cz" class="fn-dbox center">
 
  <div id="resumeBtn" class="deep fn-dbox-flex fn-dbox-flex-flex1" onclick="javascript:jobapply('<?php echo $this->_tpl_vars['job']['id']; ?>
');"> <i class="fa fa-send-o"></i> Ͷ�ݼ��� </div>
  <div id="favBtn" class="light" onclick="javascript:jobfav('<?php echo $this->_tpl_vars['job']['id']; ?>
');"> <i class="fa fa-star-o"></i> </div>
</div>
<script>function jobapply(jobid){
	$.get("index.php?m=com&c=view&type=sq&id=<?php echo $this->_tpl_vars['job']['id']; ?>
",function(data){
		var data=eval('('+data+')');
		if(data.url){
			if(data.url=='1'){url=location.href;}
			layermsg(data.msg,2,function(){location.href = data.url;});	
		}else{
			//layermsg(msg,2,function(){location.href = url;});	
			layermsg(data.msg,2);	
		}
	})};
	function jobfav(jobid){
	$.get("index.php?m=com&c=view&type=fav&id=<?php echo $this->_tpl_vars['job']['id']; ?>
",function(data){
		var data=eval('('+data+')');
		if(data.url){
			if(data.url=='1'){url=location.href;}
			layermsg(data.msg,2,function(){location.href = data.url;});	
		}else{
			//layermsg(msg,2,function(){location.href = url;});	
			layermsg(data.msg,2);	
		}
	})};
</script> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['wapstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>