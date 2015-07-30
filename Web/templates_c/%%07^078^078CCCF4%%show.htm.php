<?php /* Smarty version 2.6.26, created on 2015-06-15 16:34:34
         compiled from member/com/show.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div class="page-container"> 
   <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
    <div class="page-content">
    <div class='right_box'>
      <div class=admincont_box>
        <div class=admin_tit><span class="admin_tit_bg">环境展示</span><span class='remind'>以下*为必填项</span></div>
        <input class="btn_02 mt10 fltL btn_02_ie"   type="button" value="我要上传"  onclick="location.href='index.php?c=show&act=addshow'"/>      
        <div class="fltL mt10" style="line-height:30px; margin-left:10px;">最佳尺寸：155*110</div>
        <div class="show_pic fltL">
          <div id="trlisttwo">
             <div class="show_pic_list">
			  <?php $_from = $this->_tpl_vars['rows']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['show']):
?>   
				<dl>
					<dt>
						<img src=".<?php echo $this->_tpl_vars['show']['picurl']; ?>
" width="220" height="180"/>    
						<div style="width:100%; line-height:23px;white-space: normal; text-align:center; word-break: break-all;height:23px; overflow:hidden"><?php echo $this->_tpl_vars['show']['title']; ?>
</div>
						<div class="compl_list_bg"></div>
					</dt>
					<dd style="text-align:center;">
						<a href=".<?php echo $this->_tpl_vars['show']['picurl']; ?>
" target="_blank">查看</a> | 
						<a href="<?php echo $this->_tpl_vars['now_url']; ?>
&act=showpic&id=<?php echo $this->_tpl_vars['show']['id']; ?>
">修改</a> |
						<a href="javascript:void(0)" onclick="layer_del('确定要删除该数据？', 'index.php?c=show&&act=del&id=<?php echo $this->_tpl_vars['show']['id']; ?>
'); ">删除</a>
					</dd>
				</dl>
                <?php endforeach; else: ?>    
                <div class="show_pic_no">您还没有上传企业展示。</div>
             <?php endif; unset($_from); ?>
			 </div>   
			</div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="diggg"><?php echo $this->_tpl_vars['pagenav']; ?>
</div>
    </div>
  </div>
</div> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>