<?php /* Smarty version 2.6.26, created on 2015-06-15 15:38:51
         compiled from wap/index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'wapurl', 'wap/index.htm', 33, false),array('modifier', 'mb_substr', 'wap/index.htm', 144, false),)), $this); ?>

<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<title><?php echo $this->_tpl_vars['config']['sy_webname']; ?>
 -  手机人才网</title>
<meta http-equiv="keywords" content="人才招聘,网络招聘,wap" />
<meta http-equiv="description" content="人才招聘网wap网站" />
<meta content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport" />
<meta name="MobileOptimized" content="240" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=yes" name="format-detection" />
<meta content="email=no" name="format-detection" />
<meta http-equiv="X-UA-compatible"content="IE=edge">
<meta name="viewport" content="width=device-width" initial-scale="1">
<script src="http://www.hr135.com/js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="http://www.hr135.com/app/template/wap/js/layer/layer.m.js" language="javascript"></script>
<script src="http://www.hr135.com/app/template/wap/js/public.js" language="javascript"></script>
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/template/wap/css/css.css" type="text/css"> 
</head> 
<body>
<header>
<div class="header_bg">
<div class="logo"><img src="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/<?php echo $this->_tpl_vars['config']['sy_wap_logo']; ?>
" width="200" height="35"></div>
 
<em class="regorlogin"> 
<?php if (! $this->_tpl_vars['cookie']['uid']): ?>
<a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
">登录</a>
|
<a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
">注册</a>

<?php else: ?>
欢迎,<a href="member/"><?php echo $this->_tpl_vars['cookie']['username']; ?>
</a><strong></strong> <a href="<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
">退出</a>
<?php endif; ?>
 </em>
 </div>
</header>
<script src="http://www.hr135.com/js/slides.jquery.js" type="text/javascript"></script>
<section>
    <div class="WSCSlideWrapper">
        <div class="WSCSlide WSCSlideTransition">
                        <img class="WSCSlide_img" src="http://www.hr135.com/data/upload/pimg/20150609/14349851677.JPG" />
                        <img class="WSCSlide_img" src="http://www.hr135.com/data/upload/pimg/20150609/14419395058.JPG" />
                        <img class="WSCSlide_img" src="http://www.hr135.com/data/upload/pimg/20150606/14391365377.JPG" />
                    </div>
        <div class="WSCSlideStatus"></div>
    </div>
</section>
<section>
  <div class="index_warp_content clear">
     <form method="get" action="wap/index.php">
      <input type="hidden" name="c" value="job" />
      <div class="index_formFiled">
        <input type="text" value="" name="keyword" class="index_input_search" placeholder="请输入关键字，如：会计">
        <input type="submit" value="搜职位" class="index_input_btn">
      </div>
    </form>
    <nav>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
">
        <dt class="cor_1"><i class="nav_icon fa fa-briefcase"></i></dt>
        <dd>找职位</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:user"), $this);?>
">
        <dt class="cor_2"><i class="nav_icon fa fa-graduation-cap"></i></dt>
        <dd>找人才</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:firm"), $this);?>
">
        <dt class="cor_3"><i class="nav_icon fa fa-building-o"></i></dt>
        <dd>找企业</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="index.php?m=com&c=search&rec=1">
        <dt class="cor_4"><i class="nav_icon fa fa-thumbs-up"></i></dt>
        <dd>职位推荐</dd>
        </a>
      </dl>
           <dl class="nav_list">
        <a href="#">
        <dt class="cor_5"><i class="nav_icon fa fa-map-marker"></i></dt>
        <dd>附近职位</dd>
        </a>
      </dl> <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:once"), $this);?>
">
        <dt class="cor_6"><i class="nav_icon fa fa-tasks"></i></dt>
        <dd>微招聘</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:tiny"), $this);?>
">
        <dt class="cor_7"><i class="nav_icon fa fa-users"></i></dt>
        <dd>微简历</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:news"), $this);?>
">
        <dt class="cor_8"><i class="nav_icon fa fa-newspaper-o"></i></dt>
        <dd>看资讯</dd>
        </a>
      </dl>

    </nav>
  </div>
</section>
 
<section>
  <div class="index_warp_content mt10">
    <div class="index_login">
      <div class="index_login_p">您尚未登录，马上登录轻松管理信息</div>
      <div class="index_logoin_sub"><a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="index_logoin_bth">登录</a><a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
" class="index_logoin_bth index_reg_bth">注册</a></div>
    </div>
  </div>
</section>
<div class="clear"></div>
<section>
  <div  class="index_hotlist">  
  <?php $_from = $this->_tpl_vars['keylist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['keys'] => $this->_tpl_vars['keylist']):
?>
  <a href="<?php echo $this->_tpl_vars['keylist']['url']; ?>
"><span><font color="#616161"><?php echo $this->_tpl_vars['keylist']['key_name']; ?>
</font></span></a>  
  <?php if (( $this->_tpl_vars['keys']+1 ) % 4 == 0): ?>
  <?php endif; ?>
  <?php endforeach; endif; unset($_from); ?>  
  
  </div>
</section>
<div class="clear"></div>
<section>
  <div class="index_warp_content mt10">
    <div class="wap_title"><span class="">最新职位</span><a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
" class="more">更多>></a></div>
	
	
<?php $_from = $this->_tpl_vars['job']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['job']):
?>
	  <div class="job_list_box"> 
	  <a href="<?php echo smarty_function_wapurl(array('m' => 'com','url' => "c:view,id:".($this->_tpl_vars['job']['id'])), $this);?>
" class="job_list">
      <h3><?php echo ((is_array($_tmp=$this->_tpl_vars['job']['name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 12, 'gbk') : mb_substr($_tmp, 0, 12, 'gbk')); ?>
</h3>
      <aside class="job_qy_name"><?php echo $this->_tpl_vars['job']['job_city_one']; ?>
-<?php echo $this->_tpl_vars['job']['job_city_two']; ?>
<em class="line">|</em><?php echo ((is_array($_tmp=$this->_tpl_vars['job']['com_name'])) ? $this->_run_mod_handler('mb_substr', true, $_tmp, 0, 12, 'gbk') : mb_substr($_tmp, 0, 12, 'gbk')); ?>
</aside>
      <aside class="job_pay"><strong>1000 - 1999</strong><span class="job_date"><?php echo $this->_tpl_vars['job']['lastupdate']; ?>
</span></aside>
      </a> 
	  </div>
<?php endforeach; endif; unset($_from); ?>

     </div>
</section>
<style type="text/css">
    .WSCSlideWrapper {
        width: 100%;
        height: 100px;
        position: relative;
        overflow: hidden;
    }
    .WSCSlide {
        width: 1680px;
        height: 100%;
        font-size: 0;
        position: absolute;
        -webkit-transform: translate3d(0,0,0);
    }

    .WSCSlideTransition {
        -webkit-transition: all 0.5s 0s ease-in-out;
    }

    .WSCSlide_img {
        height: 180px;
    }
</style>
<script type="text/javascript">
    $(function () {
        $(".WSCSlide").width($(document).width() * $('.WSCSlide img').length);
        $(".WSCSlideWrapper").width($(document).width());
    });
    // 基于jQuery的移动端轮播插件，用zepto会有with问题
    // 返回值  轮播对象
    // 参数：
    // WSCSlideTransition    Transition的class名
    // WSCSlideWrapper    轮播的jQuery对象
    // WSCSlide     包裹轮播图片jQuery对象
    // WSCSlide_img   轮播图片列表jQuery对象
    // timerNum     循环时间
    function WSCMobileSlide(arg_obj) {
        /*
        参数:
        el是jQuery选择器

        返回值:
        matrix.m41是x值 number
        matrix.m42是y值 number
        参考链接 http://stackoverflow.com/questions/5968227/get-the-value-of-webkit-transform-of-an-element-with-jquery
        参考链接 https://developer.apple.com/library/safari/documentation/AudioVideo/Reference/WebKitCSSMatrixClassReference/WebKitCSSMatrix/WebKitCSSMatrix.html#//apple_ref/javascript/instp/WebKitCSSMatrix/m41
        */
        function getTransform(el) {
            var style = window.getComputedStyle($(el).get(0));
            var matrix = new WebKitCSSMatrix(style.webkitTransform);
            return matrix;
        }
        function slideAnimate(x, y) {
            if (Math.abs(x) >= y) {
                // $(".WSCSlide").removeClass("WSCSlideTransition");
                $(".WSCSlide").css("-webkit-transform", "translate3d(0,0,0)");
            } else {
                // $(".WSCSlide").addClass("WSCSlideTransition");
                $(".WSCSlide").css("-webkit-transform", "translate3d(" + x + "px,0,0)");
            }
        }
        function getSlideTimer(timeNum) {
            if (typeof (timeNum) == "undefined") {
                timeNum = 3000;
            }
            var slideTimer = setInterval(function () {
                var x = getTransform(".WSCSlide").m41;
                x = x - ImgWidth;
                if (Math.abs(x) > $(document).width() * ($('.WSCSlide img').length-1)) {
                    x = 0;
                }
                slideAnimate(x, endPosition);

            }, timeNum);
            return slideTimer;
        }
        function touchDragMe($element) {
            var gundongX = 0;
            var gundongY = 0;
            var d = document;
            var g = 'getElementById';
            var moveEle = $element;
            var stx = sty = etx = ety = curX = curY = 0;

            moveEle.on("touchstart", function (event) { //touchstart
                $element.removeClass(transitionName);
                clearInterval(slideTimer);
                var event = event.originalEvent;
                gundongX = 0;
                gundongY = 0;


                // 元素当前位置
                etx = parseInt(getT3d(moveEle, "x"));
                ety = parseInt(getT3d(moveEle, "y"));

                // 手指位置
                stx = event.touches[0].pageX;
                sty = event.touches[0].pageY;
            });

            moveEle.on("touchmove", function (event) {
                var event = event.originalEvent;
                // 防止拖动页面
                event.preventDefault();

                // 手指位置 减去 元素当前位置 就是 要移动的距离
                gundongX = event.touches[0].pageX - stx;
                gundongY = event.touches[0].pageY - sty;

                // 目标位置 就是 要移动的距离 加上 元素当前位置
                curX = gundongX + etx;
                curY = gundongY + ety;

                // 自由移动
                // moveEle.style.webkitTransform = 'translate3d(' + (curX) + 'px, ' + (curY) + 'px,0px)';
                // 只能移动Y轴方向
                // var realMoveEle = moveEle[0];
                moveEle[0].style.webkitTransform = 'translate3d(' + (curX) + 'px, ' + 0 + 'px,0px)';


            });
            moveEle.on("touchend", function (event) {
                // 手指接触屏幕的位置
                var oriX = etx;
                var oriY = ety;

                // 手指离开屏幕的位置
                etx = curX;
                ety = curY;

                var slidePosition = 0;
                for (var i = 0; i < ImgWidth_arr_length - 1; i++) {
                    if (Math.abs(etx) > ImgWidth_arr[i]) {
                        if (oriX > etx) {
                            // 左滑
                            slidePosition = -ImgWidth_arr[i + 1];
                        } else {
                            // 右滑
                            slidePosition = -ImgWidth_arr[i];
                        }
                    }
                }
                $element.addClass(transitionName);
                slideAnimate(slidePosition, endPosition);
                slideTimer = getSlideTimer(timerNum);
            });

            function getT3d(elem, ename) {
                var elem = elem[0];
                var str1 = elem.style.webkitTransform;
                if (str1 == "") return "0";
                str1 = str1.replace("translate3d(", "");
                str1 = str1.replace(")", "");
                var carr = str1.split(",");

                if (ename == "x") return carr[0];
                else if (ename == "y") return carr[1];
                else if (ename == "z") return carr[2];
                else return "";
            }
        }


        var transitionName = arg_obj["WSCSlideTransition"] || "WSCSlideTransition";
        var $WSCSlideWrapper = arg_obj["WSCSlideWrapper"] || $(".WSCSlideWrapper");
        var $WSCSlide = arg_obj["WSCSlide"] || $(".WSCSlide");
        var $WSCSlide_img = arg_obj["WSCSlide_img"] || $(".WSCSlide_img");
        var timerNum = arg_obj["timerNum"] || 3000;

        $WSCSlide_img.width($WSCSlideWrapper.width());
        $WSCSlide_img.height($WSCSlideWrapper.height());

        var ImgWidth_arr_length = $WSCSlide_img.length;
        var ImgWidth = $WSCSlide_img.width();


        $WSCSlide.width(ImgWidth * ImgWidth_arr_length);

        var WSCSlideWidth = $WSCSlide.width();
        // 轮播图终止位置
        var endPosition = WSCSlideWidth - ImgWidth;

        var ImgWidth_arr = [];
        for (var i = 0; i < ImgWidth_arr_length; i++) {
            ImgWidth_arr.push(i * ImgWidth);
        }
        // console.log(ImgWidth_arr);

        var slideTimer = getSlideTimer(timerNum);

        touchDragMe($WSCSlide, slideTimer);

        return slideTimer;
    }
    WSCMobileSlide({
        "WSCSlideTransition": "WSCSlideTransition",
        "WSCSlideWrapper": $(".WSCSlideWrapper"),
        "WSCSlide": $(".WSCSlide"),
        "WSCSlide_img": $(".WSCSlide_img"),
        "timerNum": 3000
    });

</script>
<footer>
<div class="footer">
<div class="footer_t">
 
<a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
">注册</a><em class="line">|</em><a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
">登录</a> 
<a href="#"><div class="footer_top"><i class="fa fa-angle-up"></i></div></a></div>
<div class="footer_bot">电脑版 <em class="line">|</em> 用户反馈 <em class="line">|</em> 用户协议<br></div>
</div>
</footer> 
<script>wapurl="http://www.qimaito.com/wap/";</script>  
<script>var weburl="http://www.qimaito.com"</script>
</body>
</html> <script>$(function(){$.get("http://www.qimaito.com/index.php?m=cron");});</script>