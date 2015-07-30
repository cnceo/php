<?php /* Smarty version 2.6.26, created on 2015-06-15 16:13:56
         compiled from ../template/member/com/left.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', '../template/member/com/left.htm', 79, false),)), $this); ?>
<!--link href="<?php echo $this->_tpl_vars['comstyle']; ?>
/images/user-n2012.css" rel="stylesheet" type="text/css" /-->
<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->        

			<ul class="page-sidebar-menu">

				<li>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>

				<li>

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search" method="get" action="../index.php" >

						<div class="input-box">

							
						<input name="m" type="hidden" value="user">
						<input name="c" type="hidden" value="search">
						<input type="text" id="keyword" name="keyword" value="请输入关键字" onclick="if(this.value=='请输入关键字'){this.value=''}" onblur="if(this.value==''){this.value='请输入关键字'}" class="he_input placeholder" placeholder="请输入关键字">
						<input type="submit" value=" " class="submit">

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 1): ?> class="start active " <?php endif; ?>>

					<a href="index.php?c=index">

					<i class="icon-home"></i> 

					<span class="title">管理首页</span>

					<span class="selected"></span>

					</a>

				</li>
				
				

				<li>

					<a href="index.php?c=info">

					<i class="icon-cogs"></i> 

					<span class="title">常用操作</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

							<li <?php if ($_GET['c'] == 'info'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=info" title="企业信息">企业信息</a> </li>
							<li <?php if ($_GET['c'] == 'jobadd'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=jobadd" title="发布职位">发布职位</a> </li>
							<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="人才管理">人才管理</a> </li>
							<li <?php if ($_GET['w'] == '1'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=job&w=1" title="现有职位">现有职位</a> </li>
							<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="申请职位人才">申请职位人才</a> </li>
							<li <?php if ($_GET['c'] == 'finder'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=finder" title="搜索器管理">搜索器管理</a> </li>
							<li class=style05><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/friend/" title="我的朋友圈">我的朋友圈</a></li>
							
							<li <?php if ($_GET['c'] == 'vs'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=vs" title="修改密码">修改密码</a> </li>
							<li class=style06><a href="<?php echo smarty_function_url(array('m' => 'invitereg'), $this);?>
" target='_blank'>邀请好友注册</a></li>
							
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 2): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-bookmark-empty"></i> 

					<span class="title">企业信息管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

    <li <?php if ($_GET['c'] == 'info'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=info" title="企业信息">企业信息</a></li>
    <li <?php if ($_GET['c'] == 'map'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=map" title="企业地图">企业地图</a></li>
    <li <?php if ($_GET['c'] == 'news'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=news" title="企业新闻">企业新闻</a></li>
    <li <?php if ($_GET['c'] == 'product'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=product" title="企业产品">企业产品</a></li>
    <li <?php if ($_GET['c'] == 'show'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=show" title="企业环境展示">企业环境</a></li>
    <li <?php if ($_GET['c'] == 'banner'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=banner" title="公众号绑定">公众号绑定</a></li>
    <li <?php if ($_GET['c'] == 'comwx'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=comwx" title="微招聘平台">微招聘平台</a></li>

					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 5): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-table"></i> 

					<span class="title">人才&简历</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

			<li <?php if ($_GET['c'] == 'expect'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=expect" title="我要分享简历">我要传简历</a> </li>
			<li <?php if ($_GET['c'] == 'expect_pool'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=expect_pool" title="我要淘简历">我要淘简历</a> </li>
			<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="申请职位人才">申请职位人才</a> </li>
			<li <?php if ($_GET['c'] == 'down'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=down" title="已下载简历人才">已下载简历人才</a> </li>
			<li <?php if ($_GET['c'] == 'invite'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=invite" title="已邀请面试的人才">已邀请面试的人才</a> </li>
			<li <?php if ($_GET['c'] == 'blacklist'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=blacklist" title="黑名单管理">黑名单管理</a> </li>
			<li <?php if ($_GET['c'] == 'talent_pool'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=talent_pool">人才库</a> </li>
			<li <?php if ($_GET['c'] == 'look_resume'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=look_resume">我浏览的简历</a> </li>
			<li <?php if ($_GET['c'] == 'look_job'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=look_job">被浏览的职位</a> </li>
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 3): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-briefcase"></i> 

					<span class="title">招聘&职位</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

	<li <?php if ($_GET['c'] == 'jobadd'): ?> class="active"<?php else: ?>class="style01"<?php endif; ?>><a href="index.php?c=jobadd" title="新增职位" style="color:red; font-weight:bold">新增职位</a> </li>
    <li <?php if ($_GET['c'] == 'search'): ?> class="active"<?php else: ?>class="style07"<?php endif; ?>><a href="index.php?c=search"  title="全部职位">全部职位</a></li>
    <li <?php if ($_GET['w'] == '0'): ?> class="active"<?php else: ?>class="style02"<?php endif; ?>><a href="index.php?c=job&w=0" title="待审核的职位">待审核的职位</a> </li>
    <li <?php if ($_GET['w'] == '3'): ?> class="active"<?php else: ?>class="style02"<?php endif; ?>><a href="index.php?c=job&w=3" title="未通过的职位">未通过的职位</a></li>
    <li <?php if ($_GET['w'] == '1'): ?> class="active"<?php else: ?>class="style03"<?php endif; ?>><a href="index.php?c=job&w=1" title="发布中的职位">发布中的职位</a></li>
    <li <?php if ($_GET['w'] == '2'): ?> class="active"<?php else: ?>class="style04"<?php endif; ?>><a href="index.php?c=job&w=2" title="过期的职位">过期的职位</a></li>
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 4): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-gift"></i> 

					<span class="title">财务管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

<li <?php if ($_GET['c'] == 'pay'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=pay" title="立刻充值"><font color="#FF0000">立刻充值</font></a></li>
<?php if ($this->_tpl_vars['config']['bank'] == 1): ?>
<li <?php if ($_GET['c'] == 'bank'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=bank" title="银行转帐">银行转帐</a></li>
<?php endif; ?>
<li <?php if ($_GET['c'] == 'paylog' && $_GET['consume'] != 'ok'): ?> class=""<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=paylog" title="充值记录">充值记录</a></li>
<li <?php if ($_GET['consume'] == 'ok'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=paylog&consume=ok" title="消费记录">消费记录</a></li>
<li <?php if ($_GET['c'] == 'reward_list'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=reward_list">兑换记录</a></li>

					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 7): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-sitemap"></i> 

					<span class="title">交流中心</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li>

							<a href="javascript:;">

							站内信管理

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

	<li <?php if ($_GET['c'] == 'message'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=message" title="留言反馈">留言反馈</a> </li>
    <li <?php if ($_GET['c'] == 'seemessage'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=seemessage" title="留言列表">留言列表</a> </li>
    <li <?php if ($_GET['c'] == 'sysnews'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=sysnews" title="系统消息">系统消息</a> </li>
    <li <?php if ($_GET['c'] == 'msg'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=msg" title="求职咨询">求职咨询</a> </li>
    <li <?php if ($_GET['c'] == 'xin'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=xin">站内信</a> </li>
    <li <?php if ($_GET['c'] == 'pl'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=pl" title="企业评论">企业评论</a> </li>

							</ul>

						</li>

						<li>

							<a href="javascript:;">

							问答管理

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

							<li <?php if ($_GET['type'] == '0'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=my_question&type=0" title="我的问答">我的问答</a> </li>

							</ul>

						</li>


					</ul>

				</li>

				<!--<li>

					<a href="javascript:;">

					<i class="icon-folder-open"></i> 

					<span class="title">4 Level Menu</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li>

							<a href="javascript:;">

							<i class="icon-cogs"></i> 

							Item 1

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li>

									<a href="javascript:;">

									<i class="icon-user"></i>

									Sample Link 1

									<span class="arrow"></span>

									</a>

									<ul class="sub-menu">

										<li><a href="#"><i class="icon-remove"></i> Sample Link 1</a></li>

										<li><a href="#"><i class="icon-pencil"></i> Sample Link 1</a></li>

										<li><a href="#"><i class="icon-edit"></i> Sample Link 1</a></li>

									</ul>

								</li>

								<li><a href="#"><i class="icon-user"></i>  Sample Link 1</a></li>

								<li><a href="#"><i class="icon-external-link"></i>  Sample Link 2</a></li>

								<li><a href="#"><i class="icon-bell"></i>  Sample Link 3</a></li>

							</ul>

						</li>

						<li>

							<a href="javascript:;">

							<i class="icon-globe"></i> 

							Item 2

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li><a href="#"><i class="icon-user"></i>  Sample Link 1</a></li>

								<li><a href="#"><i class="icon-external-link"></i>  Sample Link 1</a></li>

								<li><a href="#"><i class="icon-bell"></i>  Sample Link 1</a></li>

							</ul>

						</li>

						<li>

							<a href="#">

							<i class="icon-folder-open"></i>

							Item 3

							</a>

						</li>

					</ul>

				</li>-->

				<li <?php if ($this->_tpl_vars['js_def'] == 6): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-user"></i> 

					<span class="title">系统设置</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li <?php if ($_GET['c'] == 'comtpl'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=comtpl" title="模板设置">模板设置</a></li>
    <li <?php if ($_GET['c'] == 'vs'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=vs" title="修改密码">修改密码</a> </li>
    <li <?php if ($_GET['c'] == 'log'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=log">操作日志</a> </li>
        <li <?php if ($_GET['c'] == 'finder'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=finder" title="搜索器管理">搜索器管理</a> </li>
					</ul>

				</li>

				<!--<li class="">

					<a href="javascript:;">

					<i class="icon-th"></i> 

					<span class="title">Data Tables</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="table_basic.html">

							Basic Tables</a>

						</li>

						<li >

							<a href="table_responsive.html">

							Responsive Tables</a>

						</li>

						<li >

							<a href="table_managed.html">

							Managed Tables</a>

						</li>

						<li >

							<a href="table_editable.html">

							Editable Tables</a>

						</li>

						<li >

							<a href="table_advanced.html">

							Advanced Tables</a>

						</li>

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-file-text"></i> 

					<span class="title">Portlets</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="portlet_general.html">

							General Portlets</a>

						</li>

						<li >

							<a href="portlet_draggable.html">

							Draggable Portlets</a>

						</li>

					</ul>

				</li>

				<li class="">

					<a href="javascript:;">

					<i class="icon-map-marker"></i> 

					<span class="title">Maps</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="maps_google.html">

							Google Maps</a>

						</li>

						<li >

							<a href="maps_vector.html">

							Vector Maps</a>

						</li>

					</ul>

				</li>

				<li class="last ">

					<a href="charts.html">

					<i class="icon-bar-chart"></i> 

					<span class="title">Visual Charts</span>

					</a>

				</li>
-->
			</ul>

			<!-- END SIDEBAR MENU -->

		</div>