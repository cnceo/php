<?php /* Smarty version 2.6.26, created on 2015-06-15 15:40:36
         compiled from D:%5Cwwwroot%5Ctoptophr.com%5CWeb/template/wap/footer.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'D:\\wwwroot\\toptophr.com\\Web/template/wap/footer.htm', 5, false),)), $this); ?>
<footer>
<div class="footer">
<div class="footer_t">
<?php if (! $this->_tpl_vars['cookie']['uid']): ?>
<a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
">注册</a><em class="line">|</em><a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
">登录</a> 
<a href="#"><div class="footer_top"><i class="fa fa-angle-up"></i></div></a></div>

<?php else: ?>
<span class="footer_member_span_a">你好！</span><span class="footer_member_span"><?php echo $this->_tpl_vars['cookie']['username']; ?>
</span><a href="member/" class="footer_member">进入用户中心</a><a href="javascript:;" onclick="islogout('<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
','确认退出吗？');" class="footer_member_out">退出</a> 
<a href="#"><div class="footer_top"><i class="fa fa-angle-up"></i></div></a>
<?php endif; ?>



<div class="footer_bot">电脑版 <em class="line">|</em> 用户反馈 <em class="line">|</em> 用户协议<br></div>
</div>
</footer> 
<script>wapurl="http://www.qimaito.com/wap/";</script>  
<script>var weburl="http://www.qimaito.com"</script>
</body>
</html> <script>$(function(){$.get("http://www.qimaito.com/index.php?m=cron");});</script>



<div id="oncelist" class="mask selecter hide " style="display:none;">
    <div class="f_body">
    <div style="transform: translate(0px, 0px); transition-duration: 0.4s; transition-timing-function: ease; transform-style: preserve-3d; backface-visibility: hidden;" class="once_h1_box">
    <div class="once_h1_box_h1">请输入密码</div>
    
    <input type="password" name="password" id="once_password" value="" class="once_h1_box_ps" />
     <input id="onceid" value="" type="hidden">
     <br />
     <div class="once_h1_box_bot">
     <button class="once_h1_bth1 ok selectorOk" onclick="checkOncePassword($('#onceid').val());">确定</button>
    <button class="once_h1_bth1 once_h1_bth2  clear_sub selectorClear" onclick="layer.closeAll();">关闭</button>
    <button class="once_h1_bth1 once_h1_bth3 clear_sub selectorClear" onclick="$('input[name=password]').val('');">清除</button> 
   </div>
    </div>
    </div>
</div>
<div id="tinylist" class="mask selecter hide " style="display:none;">
    <div class="f_body">
    <div style="transform: translate(0px, 0px); transition-duration: 0.4s; transition-timing-function: ease; transform-style: preserve-3d; backface-visibility: hidden;"class="once_h1_box">
     <div class="once_h1_box_h1">请输入密码</div>
     <input type="password" name="password" id="tiny_password" value="" class="once_h1_box_ps" />
    <input id="tinyid" value="" type="hidden">
     <div class="once_h1_box_bot">
    <button class="once_h1_bth1  ok selectorOk" onclick="checkTinyPassword($('#tinyid').val());">确定</button>
    <button class="once_h1_bth1 once_h1_bth2 clear_sub selectorClear" onclick="layer.closeAll();">关闭</button>
    <button class="once_h1_bth1  once_h1_bth3 clear_sub selectorClear" onclick="$('input[name=password]').val('');">清除</button> 
     </div>
   
    </div>
    </div>
</div>
<?php if ($this->_tpl_vars['layer']): ?>
<input id="layermsg" value="<?php echo $this->_tpl_vars['layer']['msg']; ?>
" type="hidden">
<input id="layerurl" value="<?php echo $this->_tpl_vars['layer']['url']; ?>
" type="hidden">
<script>window.onload=islayer(); </script>
<?php endif; ?>  
<script>var weburl='<?php echo $this->_tpl_vars['config_wapdomain']; ?>
';</script>
</body>
</html>