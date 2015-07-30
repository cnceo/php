<?php /* Smarty version 2.6.26, created on 2015-06-15 16:33:37
         compiled from member/com/addproduct.htm */ ?>
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
    <script charset="utf-8" src="../data/kindeditor/kindeditor-min.js"></script> 
    <script charset="utf-8" src="../data/kindeditor/lang/zh_CN.js"></script> 
    <script language="javascript">
var editor;
KindEditor.ready(function(K) {
editor = K.create('textarea[name="body"]', {
resizeType : 1,
allowPreviewEmoticons : false,
allowImageUpload : false,
items : [
'bold', 'italic', 'underline',
'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
'insertunorderedlist']
});
});
</script>
    <div class="page-content">
    <div class='right_box'>
      <div class=admincont_box>
        <div class=admin_tit><span class="admin_tit_bg">添加产品</span></div>
        <div class=admin_textbox_02>
        <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
        <form name="MyForm" method="post"target="supportiframe" action="index.php?c=product&act=save" onsubmit="return CheckPost();" enctype="multipart/form-data">
          <ul>
            <li>
              <div class=tit><font color="#FF0000">*</font> 产品标题：</div>
              <div class=textbox>
                <INPUT type="text" size="45" name="title" value="<?php echo $this->_tpl_vars['editrow']['title']; ?>
"class="com_info_text"  >
                <span id="by_name"  class="errordisplay">不能为空</span></div>
            </li>
            <li>
              <div class=tit><font color="#FF0000">*</font> 产品图片：</div>
              <div class=textbox>
                <INPUT type="file" size="15" name="pic" value="" class="com_info_text">
                <em style="float:left; margin-left:10px;">最佳尺寸：宽/高=270像素/180像素</em>
                <span id="by_name"  class="errordisplay">不能为空</span></div>
            </li>
            <?php if ($this->_tpl_vars['editrow']['pic'] != ""): ?>
            <li>
              <div class=tit>图片展示：</div>
              <div class=textbox><img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['editrow']['pic']; ?>
"  width="100" height="60"/></div>
            </li>
            <?php endif; ?>
            <li>
              <div class=tit><font color="#FF0000">*</font>产品描述：</div>
              <div class=textbox>
                <textarea name="body" id="description" style="height:200px; width:450px;" ><?php echo $this->_tpl_vars['editrow']['body']; ?>
</textarea>
                <span id="by_description" class="errordisplay">不能为空</span></div>
            </li>
          </ul>
          </div>
          <div class=admin_submit>
          <div class=condition>&nbsp;</div>
          <div class=sub_btn><span>
            <input name="id" value="<?php echo $_GET['id']; ?>
" type="hidden"/>
            <input class="btn_01" name="submit" type="submit" name="submitBtn" value=" 提 交 操 作 ">
            </span></div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
<script language="javascript">
function CheckPost(){ 
	if($.trim($("input[name='title']").val())==''){
		layer.msg('产品标题不能为空！', 2, 8);return false;
	}
	if($.trim($("input[name='pic']").val())=='' && $.trim($("input[name='id']").val())==''){
		layer.msg('产品图片不能为空！', 2, 8);return false;
	}
	if(editor.text()==''){
		layer.msg('产品描述不能为空！', 2, 8);return false;
	}  
}
</script> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>