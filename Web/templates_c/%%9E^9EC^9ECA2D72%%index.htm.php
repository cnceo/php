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
 -  �ֻ��˲���</title>
<meta http-equiv="keywords" content="�˲���Ƹ,������Ƹ,wap" />
<meta http-equiv="description" content="�˲���Ƹ��wap��վ" />
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
">��¼</a>
|
<a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
">ע��</a>

<?php else: ?>
��ӭ,<a href="member/"><?php echo $this->_tpl_vars['cookie']['username']; ?>
</a><strong></strong> <a href="<?php echo smarty_function_wapurl(array('url' => "c:loginout"), $this);?>
">�˳�</a>
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
        <input type="text" value="" name="keyword" class="index_input_search" placeholder="������ؼ��֣��磺���">
        <input type="submit" value="��ְλ" class="index_input_btn">
      </div>
    </form>
    <nav>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
">
        <dt class="cor_1"><i class="nav_icon fa fa-briefcase"></i></dt>
        <dd>��ְλ</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:user"), $this);?>
">
        <dt class="cor_2"><i class="nav_icon fa fa-graduation-cap"></i></dt>
        <dd>���˲�</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:firm"), $this);?>
">
        <dt class="cor_3"><i class="nav_icon fa fa-building-o"></i></dt>
        <dd>����ҵ</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="index.php?m=com&c=search&rec=1">
        <dt class="cor_4"><i class="nav_icon fa fa-thumbs-up"></i></dt>
        <dd>ְλ�Ƽ�</dd>
        </a>
      </dl>
           <dl class="nav_list">
        <a href="#">
        <dt class="cor_5"><i class="nav_icon fa fa-map-marker"></i></dt>
        <dd>����ְλ</dd>
        </a>
      </dl> <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:once"), $this);?>
">
        <dt class="cor_6"><i class="nav_icon fa fa-tasks"></i></dt>
        <dd>΢��Ƹ</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:tiny"), $this);?>
">
        <dt class="cor_7"><i class="nav_icon fa fa-users"></i></dt>
        <dd>΢����</dd>
        </a>
      </dl>
      <dl class="nav_list">
        <a href="<?php echo smarty_function_wapurl(array('url' => "m:news"), $this);?>
">
        <dt class="cor_8"><i class="nav_icon fa fa-newspaper-o"></i></dt>
        <dd>����Ѷ</dd>
        </a>
      </dl>

    </nav>
  </div>
</section>
 
<section>
  <div class="index_warp_content mt10">
    <div class="index_login">
      <div class="index_login_p">����δ��¼�����ϵ�¼���ɹ�����Ϣ</div>
      <div class="index_logoin_sub"><a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
" class="index_logoin_bth">��¼</a><a href="<?php echo smarty_function_wapurl(array('m' => 'register'), $this);?>
" class="index_logoin_bth index_reg_bth">ע��</a></div>
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
    <div class="wap_title"><span class="">����ְλ</span><a href="<?php echo smarty_function_wapurl(array('url' => "m:com"), $this);?>
" class="more">����>></a></div>
	
	
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
    // ����jQuery���ƶ����ֲ��������zepto����with����
    // ����ֵ  �ֲ�����
    // ������
    // WSCSlideTransition    Transition��class��
    // WSCSlideWrapper    �ֲ���jQuery����
    // WSCSlide     �����ֲ�ͼƬjQuery����
    // WSCSlide_img   �ֲ�ͼƬ�б�jQuery����
    // timerNum     ѭ��ʱ��
    function WSCMobileSlide(arg_obj) {
        /*
        ����:
        el��jQueryѡ����

        ����ֵ:
        matrix.m41��xֵ number
        matrix.m42��yֵ number
        �ο����� http://stackoverflow.com/questions/5968227/get-the-value-of-webkit-transform-of-an-element-with-jquery
        �ο����� https://developer.apple.com/library/safari/documentation/AudioVideo/Reference/WebKitCSSMatrixClassReference/WebKitCSSMatrix/WebKitCSSMatrix.html#//apple_ref/javascript/instp/WebKitCSSMatrix/m41
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


                // Ԫ�ص�ǰλ��
                etx = parseInt(getT3d(moveEle, "x"));
                ety = parseInt(getT3d(moveEle, "y"));

                // ��ָλ��
                stx = event.touches[0].pageX;
                sty = event.touches[0].pageY;
            });

            moveEle.on("touchmove", function (event) {
                var event = event.originalEvent;
                // ��ֹ�϶�ҳ��
                event.preventDefault();

                // ��ָλ�� ��ȥ Ԫ�ص�ǰλ�� ���� Ҫ�ƶ��ľ���
                gundongX = event.touches[0].pageX - stx;
                gundongY = event.touches[0].pageY - sty;

                // Ŀ��λ�� ���� Ҫ�ƶ��ľ��� ���� Ԫ�ص�ǰλ��
                curX = gundongX + etx;
                curY = gundongY + ety;

                // �����ƶ�
                // moveEle.style.webkitTransform = 'translate3d(' + (curX) + 'px, ' + (curY) + 'px,0px)';
                // ֻ���ƶ�Y�᷽��
                // var realMoveEle = moveEle[0];
                moveEle[0].style.webkitTransform = 'translate3d(' + (curX) + 'px, ' + 0 + 'px,0px)';


            });
            moveEle.on("touchend", function (event) {
                // ��ָ�Ӵ���Ļ��λ��
                var oriX = etx;
                var oriY = ety;

                // ��ָ�뿪��Ļ��λ��
                etx = curX;
                ety = curY;

                var slidePosition = 0;
                for (var i = 0; i < ImgWidth_arr_length - 1; i++) {
                    if (Math.abs(etx) > ImgWidth_arr[i]) {
                        if (oriX > etx) {
                            // ��
                            slidePosition = -ImgWidth_arr[i + 1];
                        } else {
                            // �һ�
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
        // �ֲ�ͼ��ֹλ��
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
">ע��</a><em class="line">|</em><a href="<?php echo smarty_function_wapurl(array('m' => 'login'), $this);?>
">��¼</a> 
<a href="#"><div class="footer_top"><i class="fa fa-angle-up"></i></div></a></div>
<div class="footer_bot">���԰� <em class="line">|</em> �û����� <em class="line">|</em> �û�Э��<br></div>
</div>
</footer> 
<script>wapurl="http://www.qimaito.com/wap/";</script>  
<script>var weburl="http://www.qimaito.com"</script>
</body>
</html> <script>$(function(){$.get("http://www.qimaito.com/index.php?m=cron");});</script>