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
						<input type="text" id="keyword" name="keyword" value="������ؼ���" onclick="if(this.value=='������ؼ���'){this.value=''}" onblur="if(this.value==''){this.value='������ؼ���'}" class="he_input placeholder" placeholder="������ؼ���">
						<input type="submit" value=" " class="submit">

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 1): ?> class="start active " <?php endif; ?>>

					<a href="index.php?c=index">

					<i class="icon-home"></i> 

					<span class="title">������ҳ</span>

					<span class="selected"></span>

					</a>

				</li>
				
				

				<li>

					<a href="index.php?c=info">

					<i class="icon-cogs"></i> 

					<span class="title">���ò���</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

							<li <?php if ($_GET['c'] == 'info'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=info" title="��ҵ��Ϣ">��ҵ��Ϣ</a> </li>
							<li <?php if ($_GET['c'] == 'jobadd'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=jobadd" title="����ְλ">����ְλ</a> </li>
							<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="�˲Ź���">�˲Ź���</a> </li>
							<li <?php if ($_GET['w'] == '1'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=job&w=1" title="����ְλ">����ְλ</a> </li>
							<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="����ְλ�˲�">����ְλ�˲�</a> </li>
							<li <?php if ($_GET['c'] == 'finder'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=finder" title="����������">����������</a> </li>
							<li class=style05><a href="<?php echo $this->_tpl_vars['config']['sy_weburl']; ?>
/friend/" title="�ҵ�����Ȧ">�ҵ�����Ȧ</a></li>
							
							<li <?php if ($_GET['c'] == 'vs'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=vs" title="�޸�����">�޸�����</a> </li>
							<li class=style06><a href="<?php echo smarty_function_url(array('m' => 'invitereg'), $this);?>
" target='_blank'>�������ע��</a></li>
							
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 2): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-bookmark-empty"></i> 

					<span class="title">��ҵ��Ϣ����</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

    <li <?php if ($_GET['c'] == 'info'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=info" title="��ҵ��Ϣ">��ҵ��Ϣ</a></li>
    <li <?php if ($_GET['c'] == 'map'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=map" title="��ҵ��ͼ">��ҵ��ͼ</a></li>
    <li <?php if ($_GET['c'] == 'news'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=news" title="��ҵ����">��ҵ����</a></li>
    <li <?php if ($_GET['c'] == 'product'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=product" title="��ҵ��Ʒ">��ҵ��Ʒ</a></li>
    <li <?php if ($_GET['c'] == 'show'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=show" title="��ҵ����չʾ">��ҵ����</a></li>
    <li <?php if ($_GET['c'] == 'banner'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=banner" title="���ںŰ�">���ںŰ�</a></li>
    <li <?php if ($_GET['c'] == 'comwx'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=comwx" title="΢��Ƹƽ̨">΢��Ƹƽ̨</a></li>

					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 5): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-table"></i> 

					<span class="title">�˲�&����</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

			<li <?php if ($_GET['c'] == 'expect'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=expect" title="��Ҫ�������">��Ҫ������</a> </li>
			<li <?php if ($_GET['c'] == 'expect_pool'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=expect_pool" title="��Ҫ�Լ���">��Ҫ�Լ���</a> </li>
			<li <?php if ($_GET['c'] == 'hr'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=hr" title="����ְλ�˲�">����ְλ�˲�</a> </li>
			<li <?php if ($_GET['c'] == 'down'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=down" title="�����ؼ����˲�">�����ؼ����˲�</a> </li>
			<li <?php if ($_GET['c'] == 'invite'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=invite" title="���������Ե��˲�">���������Ե��˲�</a> </li>
			<li <?php if ($_GET['c'] == 'blacklist'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=blacklist" title="����������">����������</a> </li>
			<li <?php if ($_GET['c'] == 'talent_pool'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=talent_pool">�˲ſ�</a> </li>
			<li <?php if ($_GET['c'] == 'look_resume'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=look_resume">������ļ���</a> </li>
			<li <?php if ($_GET['c'] == 'look_job'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=look_job">�������ְλ</a> </li>
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 3): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-briefcase"></i> 

					<span class="title">��Ƹ&ְλ</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

	<li <?php if ($_GET['c'] == 'jobadd'): ?> class="active"<?php else: ?>class="style01"<?php endif; ?>><a href="index.php?c=jobadd" title="����ְλ" style="color:red; font-weight:bold">����ְλ</a> </li>
    <li <?php if ($_GET['c'] == 'search'): ?> class="active"<?php else: ?>class="style07"<?php endif; ?>><a href="index.php?c=search"  title="ȫ��ְλ">ȫ��ְλ</a></li>
    <li <?php if ($_GET['w'] == '0'): ?> class="active"<?php else: ?>class="style02"<?php endif; ?>><a href="index.php?c=job&w=0" title="����˵�ְλ">����˵�ְλ</a> </li>
    <li <?php if ($_GET['w'] == '3'): ?> class="active"<?php else: ?>class="style02"<?php endif; ?>><a href="index.php?c=job&w=3" title="δͨ����ְλ">δͨ����ְλ</a></li>
    <li <?php if ($_GET['w'] == '1'): ?> class="active"<?php else: ?>class="style03"<?php endif; ?>><a href="index.php?c=job&w=1" title="�����е�ְλ">�����е�ְλ</a></li>
    <li <?php if ($_GET['w'] == '2'): ?> class="active"<?php else: ?>class="style04"<?php endif; ?>><a href="index.php?c=job&w=2" title="���ڵ�ְλ">���ڵ�ְλ</a></li>
					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 4): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-gift"></i> 

					<span class="title">�������</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

<li <?php if ($_GET['c'] == 'pay'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=pay" title="���̳�ֵ"><font color="#FF0000">���̳�ֵ</font></a></li>
<?php if ($this->_tpl_vars['config']['bank'] == 1): ?>
<li <?php if ($_GET['c'] == 'bank'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=bank" title="����ת��">����ת��</a></li>
<?php endif; ?>
<li <?php if ($_GET['c'] == 'paylog' && $_GET['consume'] != 'ok'): ?> class=""<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=paylog" title="��ֵ��¼">��ֵ��¼</a></li>
<li <?php if ($_GET['consume'] == 'ok'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=paylog&consume=ok" title="���Ѽ�¼">���Ѽ�¼</a></li>
<li <?php if ($_GET['c'] == 'reward_list'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=reward_list">�һ���¼</a></li>

					</ul>

				</li>

				<li <?php if ($this->_tpl_vars['js_def'] == 7): ?> class="active " <?php endif; ?>>

					<a href="javascript:;">

					<i class="icon-sitemap"></i> 

					<span class="title">��������</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li>

							<a href="javascript:;">

							վ���Ź���

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

	<li <?php if ($_GET['c'] == 'message'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=message" title="���Է���">���Է���</a> </li>
    <li <?php if ($_GET['c'] == 'seemessage'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=seemessage" title="�����б�">�����б�</a> </li>
    <li <?php if ($_GET['c'] == 'sysnews'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=sysnews" title="ϵͳ��Ϣ">ϵͳ��Ϣ</a> </li>
    <li <?php if ($_GET['c'] == 'msg'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=msg" title="��ְ��ѯ">��ְ��ѯ</a> </li>
    <li <?php if ($_GET['c'] == 'xin'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=xin">վ����</a> </li>
    <li <?php if ($_GET['c'] == 'pl'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=pl" title="��ҵ����">��ҵ����</a> </li>

							</ul>

						</li>

						<li>

							<a href="javascript:;">

							�ʴ����

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

							<li <?php if ($_GET['type'] == '0'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=my_question&type=0" title="�ҵ��ʴ�">�ҵ��ʴ�</a> </li>

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

					<span class="title">ϵͳ����</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li <?php if ($_GET['c'] == 'comtpl'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=comtpl" title="ģ������">ģ������</a></li>
    <li <?php if ($_GET['c'] == 'vs'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=vs" title="�޸�����">�޸�����</a> </li>
    <li <?php if ($_GET['c'] == 'log'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=log">������־</a> </li>
        <li <?php if ($_GET['c'] == 'finder'): ?> class="active"<?php else: ?>class=""<?php endif; ?>><a href="index.php?c=finder" title="����������">����������</a> </li>
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