<?php /* Smarty version 2.6.26, created on 2015-06-15 16:13:56
         compiled from ../template/member/com/footer.htm */ ?>
<!-- BEGIN FOOTER -->
<div class="clear"></div>
	<div class="footer">

		<div class="footer-inner">

			2015 &copy;  <a href="http://www.toptophr.com/" title="拓普网" target="_blank">拓普网</a> 版权所有 - 企业后台管理</a>

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->



	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="<?php echo $this->_tpl_vars['comstyle']; ?>
/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="<?php echo $this->_tpl_vars['comstyle']; ?>
/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="<?php echo $this->_tpl_vars['comstyle']; ?>
/media/js/app.js" type="text/javascript"></script>     

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   App.init(); // initlayout and core plugins

		   Index.init();

		   Index.initJQVMAP(); // init index page's custom scripts

		   Index.initCalendar(); // init index page's custom scripts

		   Index.initCharts(); // init index page's custom scripts

		   Index.initChat();

		   Index.initMiniCharts();

		   Index.initDashboardDaterange();

		   Index.initIntro();

		});

	</script>

	<!-- END JAVASCRIPTS -->
	
	
<div class="clear"></div>
<div id="bg" <?php if ($this->_tpl_vars['company']['hy'] == "" && ( $_GET['c'] == 'index' || $_GET['c'] == "" )): ?>style="display:block"<?php endif; ?>></div> 
<div id="uclogin" style="display:none"></div>
</div>
<div class="clear"></div>
</body>
</html>