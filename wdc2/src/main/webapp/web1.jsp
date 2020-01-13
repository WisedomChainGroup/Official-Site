<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>首页</title>
		<%
			pageContext.setAttribute("APP_PATH", request.getContextPath());
		%>
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/index.css" />
		<script src="${APP_PATH }/static/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	</head>
	<body>

		<!--PC 导航栏 -->
		<div class="pc_nav_box">
			<div class="pc_nav">

				<div class="logo_wrapper">
					<img src="${APP_PATH }/static/img/logo-phone.png" alt="" class="logo">
					<h5>WDC</h5>

				</div>
				<div class="menu_wraper">
					<div class="menu_item active"><a href="index.html"><span>首页</span></a></div>
					<div class="menu_item"><a href="project.html"><span>项目介绍</span></a></div>
					<div class="menu_item"><a href="use.html"><span>应用</span></a></div>
					<div class="menu_item"><a href="developer.html"><span>开发者</span></a></div>
					<div class="menu_item"><a href="information.html"><span>最新动态</span></a></div>
					<div class="menu_item"><a href="query.html"><span>关于我们</span></a></div>
					<div class="menu_language"><span>EN</span></div>
				</div>


			</div>
		</div>

		<!--移动端 导航栏 -->
		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="${APP_PATH }/static/img/logo-phone.png">
				<h5>WDC</h5>
			</div>
			<div class="mobile_language">
				<i></i>
				<span>EN</span>
				<i class="mobile_action" id="mobile_action" onclick="onClickTest()"></i>
				<input hidden="hidden" value="noshow" id="myhide" />
			</div>
		</header>

		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href="index.html"><span>首页</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="project.html"><span>项目介绍</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="use.html"><span>应用</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="developer.html"><span>开发者</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="information.html"><span>最新动态</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="query.html"><span>关于我们</span></a>
			</div>
		</div>
		<!--轮播图 -->
		<div class="slides-box">
			<ul class="slides">
				<input type="radio" name="radio-btn" id="img-1" checked>
				<li class="slide-container">
					<div class="slide">
						<img id="ces" src="${APP_PATH }/static/img/banner-1.jpg">
					</div>
					<div class="nav">
						<label for="img-6" class="prev">&#x2039;</label>
						<label for="img-2" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-2">
				<li class="slide-container">
					<div class="slide">
						<img src="${APP_PATH }/static/img/2.jpg">
					</div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label>
						<label for="img-3" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-3">
				<li class="slide-container">
					<div class="slide">
						<img src="${APP_PATH }/static/img/3.jpg">
					</div>
					<div class="nav">
						<label for="img-2" class="prev">&#x2039;</label>
						<label for="img-4" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-4">
				<li class="slide-container">
					<div class="slide">
						<img src="${APP_PATH }/static/img/4.jpg">
					</div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label>
						<label for="img-5" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-5">
				<li class="slide-container">
					<div class="slide">
						<img src="${APP_PATH }/static/img/5.jpg">
					</div>
					<div class="nav">
						<label for="img-4" class="prev">&#x2039;</label>
						<label for="img-6" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-6">
				<li class="slide-container">
					<div class="slide">
						<img src="${APP_PATH }/static/img/6.jpg">
					</div>
					<div class="nav">
						<label for="img-5" class="prev">&#x2039;</label>
						<label for="img-1" class="next">&#x203a;</label>
					</div>
				</li>
				<li class="nav-dots">
					<label for="img-1" class="nav-dot" id="img-dot-1"></label>
					<label for="img-2" class="nav-dot" id="img-dot-2"></label>
					<label for="img-3" class="nav-dot" id="img-dot-3"></label>
					<label for="img-4" class="nav-dot" id="img-dot-4"></label>
					<label for="img-5" class="nav-dot" id="img-dot-5"></label>
					<label for="img-6" class="nav-dot" id="img-dot-6"></label>
				</li>
			</ul>
		</div>
		<!--响应式 内容-->
		<div class="mobile_content">

			<div class="mobile_jianjie">
				<div class="wdc_jianjie wid-1200">
					<h5>项目概述</h5>
					<p class="p-1">智慧链致力于实现基础区块链生态系统的智能化数据互联，是一种新型的智能合约通信平台，实现生活设备的物联网和生活信息互联。</p>
					<div class="container">
						<img src="${APP_PATH }/static/img/uu-3.png" />
						<h4>智慧城市</h4>
						<i class="line"></i>
						<p>通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。</p>
					</div>
					<div class="container">
						<img src="${APP_PATH }/static/img/uu-1.png" />
						<h4>数据资产</h4>
						<i class="line"></i>
						<p>通过用户物联设备所产生的数据是用户数字资产，智慧链为用户数字资产提供全网公证，并通过资产转移合约实现数字资产的转移。这是用户数据资产化的重要应用。
						</p>
					</div>
					<div class="container">
						<img src="${APP_PATH }/static/img/uu-3.png" />
						<h4>智能家居</h4>
						<i class="line"></i>
						<p>物联网时代，每个家庭都会拥有越来越多的智能家居，网络电视、无线音箱、智能遥控器、智能健身设备等。通过智慧链可以构建智能数据的一体化管理终端，方便管理众多的物联设备。</p>
					</div>
					<div class="container">
						<img src="${APP_PATH }/static/img/uu-3.png" />
						<h4>智能家居</h4>
						<i class="line"></i>
						<p>物联网时代，每个家庭都会拥有越来越多的智能家居，网络电视、无线音箱、智能遥控器、智能健身设备等。通过智慧链可以构建智能数据的一体化管理终端，方便管理众多的物联设备。</p>
					</div>
					<div class="container">
						<img src="${APP_PATH }/static/img/uu-3.png" />
						<h4>智能家居</h4>
						<i class="line"></i>
						<p>物联网时代，每个家庭都会拥有越来越多的智能家居，网络电视、无线音箱、智能遥控器、智能健身设备等。通过智慧链可以构建智能数据的一体化管理终端，方便管理众多的物联设备。</p>
					</div>

					<div class="clear"></div>

					<span><a href="#">更多详情</a></span>
				</div>
			</div>

			<div class="clear"></div>

			<div class="mobile_jishu">
				<div class="wid-1200">
					<h5>技术概述</h5>
					<ul class=" ">
						<li>
							<div class="mobile_jishu_left">
								<i class="i-1"></i>
							</div>
							<div class="mobile_jishu_right">
								<h3>安全脚本系统</h3>
								<p>对于底层调用以及数据资产相关的操作，智慧链提供一组调用库以供外部程序实现，在整个脚本指令的设计中，保持受限的编程能力， 对于智慧链来说，功能场景是特定的，因此脚本指令的功能也是特定的。</p>

							</div>
						</li>
						<li>
							<div class="mobile_jishu_left">
								<i class="i-2"></i>
							</div>
							<div class="mobile_jishu_right">
								<h3>安全脚本系统</h3>
								<p>智慧链支持通过脚本程序开发业务应用，并部署在链上，基于链的开发与传统面向服务器的开发有很大的不同，同时开发过程会调用到开放的API，为了方便技术人员开发应用，降低部署门槛，同时也为了能够让更多社区成员参与智慧链的应用开发，在主链的应用支持模块中，将提供标准的应用模板支持。</p>

							</div>
						</li>
						<li>
							<div class="mobile_jishu_left">
								<i class="i-3"></i>
							</div>
							<div class="mobile_jishu_right">
								<h3>安全脚本系统</h3>
								<p>对于底层调用以及数据资产相关的操作，智慧链提供一组调用库以供外部程序实现，在整个脚本指令的设计中，保持受限的编程能力， 对于智慧链来说，功能场景是特定的，因此脚本指令的功能也是特定的。</p>

							</div>
						</li>
						<li>
							<div class="mobile_jishu_left">
								<i class="i-4"></i>
							</div>
							<div class="mobile_jishu_right">
								<h3>安全脚本系统</h3>
								<p>对于底层调用以及数据资产相关的操作，智慧链提供一组调用库以供外部程序实现，在整个脚本指令的设计中，保持受限的编程能力， 对于智慧链来说，功能场景是特定的，因此脚本指令的功能也是特定的。</p>

							</div>
						</li>
					</ul>
					<span><a href="#">更多详情</a></span>
				</div>
			</div>

			<div class="mobile_project">
				<div class="wid-1200">
					<h5>发展规划</h5>
					<ul>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/001.png">
							</div>
							<h2 class=""><span>主链钱包</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/002.png">
							</div>
							<h2 class=""><span>内容物确权</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/003.png">
							</div>
							<h2 class=""><span>溯源</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/004.png">
							</div>
							<h2 class=""><span>链广告</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/005.png">
							</div>
							<h2 class=""><span>资产定义</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/006.png">
							</div>
							<h2 class=""><span>结算兑换</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/007.png">
							</div>
							<h2 class=""><span>闪电网络</span></h2>
						</li>
						<li>
							<div class="img_box">
								<img alt="" src="${APP_PATH }/static/img/008.png">
							</div>
							<h2 class=""><span>资产交换机</span></h2>
						</li>
					</ul>
					<div class="clear"></div>
					<span><a href="#" style="margin-top: 35px;">更多详情</a></span>
				</div>
			</div>

			<div class="mobile_team">
				<div class="wid-1200">
					<h5>核心团队</h5>
					<p>WDC国际核心开发团队，拥有至少三十名以上的基础软件系统专家，常年耕耘于Linux开源社区、Postgresql开源社区、BTC论坛、PGP社区等，
						拥有平均五年以上的区块链底层技术开发经验，成员分布于全球各地，核心开发者对于区块链不仅从底层技术以及对实体经济层面都享有多年的认知、
						开发、实践经验，拥有顶级的综合设计开发能力。</p>
					<div class="mobile_team_img">
						<img src="${APP_PATH }/static/img/001.png" class="=" />
					</div>
					<span><a href="#" style="margin-top: 35px;">更多详情</a></span>
				</div>
			</div>

			<div class="clear"></div>

			<div class="product_box">

				<div class="product">
					<h5>核心产品</h5>

					<div class="pc_product wid-1200">
						<ul>
							<li>
								<div class="">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<i></i>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>
							</li>

							<li>
								<div class="">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<i></i>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>
							</li>
							<li>
								<div class="">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<i></i>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>
							</li>
						</ul>



					</div>

					<div class="poster" id="posterimg">
						<ul>
							<li>
								<div class="active">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>


							</li>



							<li>
								<div class="active">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>
							</li>
							<li>
								<div class="active">
									<img src="${APP_PATH }/static/img/2.jpg">
									<h1><span>WDC Scan</span></h1>
									<p>WDC Scan是基于WDC的第一款区块链浏览器，提供了节点、区块、交易、智能合约查询</p>
									<span><a href="#">详情</a></span>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>



			<div class="clear"></div>
			<div class="contact_box">
				<div class="contact wid-1200">
					<h5>联系我们</h5>
					<p>欢迎新的伙伴加入，请与我们联系</p>

					<ul>
						<li><span>昵称</span>
							<input type="text" />
						</li>
						<li><span>主题</span>
							<input type="text" />
						</li>
						<li><span>邮箱</span>
							<input type="text" />
						</li>
						<li><span>电话</span>
							<input type="text" />
						</li>
						<li><span>计划</span>
							<input type="text" />
						</li>
					</ul>

					<div class="submit_box">
						<button class="submit">提交</button>
					</div>
				</div>
			</div>
		</div>

		<footer class="footer">
			<div class="footer_content wid-1200">
				<div class="footer_icon">
					<a href=""><img src="${APP_PATH }/static/img/weibo.png" /></a>
					<a href=""><img src="${APP_PATH }/static/img/weixin.png" /></a>
					<a href=""><img src="${APP_PATH }/static/img/tuite.png" /></a>
					<a href=""><img src="${APP_PATH }/static/img/telegram.png" /></a>
					<a href=""><img src="${APP_PATH }/static/img/youxiang.png" /></a>
				</div>
				<div class="footer_logo">
					<img src="${APP_PATH }/static/img/logo.png" />

				</div>
				<p>wisdom chain</p>

				<p>2017-2019© WDC基金会 版权所有</p>
			</div>
		</footer>



		<script>
			function onClickTest() {
				var getvalue = document.getElementById('myhide').value;
				if (getvalue == 'noshow') {
					document.getElementById('wdc_menu').setAttribute('class', 'wdc_menu show');
					document.getElementById('mobile_action').setAttribute('class', 'mobile_action guanbi');

					document.getElementById('myhide').value = 'show';
				} else if (getvalue == 'show') {
					document.getElementById('wdc_menu').setAttribute('class', 'wdc_menu');
					document.getElementById('mobile_action').setAttribute('class', 'mobile_action');
					document.getElementById('myhide').value = 'noshow';
				}
			}
		</script>
		<script type="text/javascript">
			$(function() {
				var sW = $('.poster').width();
				var sH = $('.poster').height();

				$('.poster ul li').width(sW).height(sH);


				jQuery.focus = function(slid) {
					var sWidth = $(slid).width(); //获取焦点图的宽度（显示面积）
					var len = $(slid).find("ul li").length; //获取焦点图个数
					var index = 0;
					var picTimer;

					//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
					var btn = "<div class='btnBg'></div><div class='btn'>";
					for (var i = 0; i < len; i++) {
						var ii = i + 1;
						btn += "<span>" + ii + "</span>";
					}
					btn += "</div><div class='prenext1 pre'></div><div class='prenext1 next1'></div>";
					$(slid).append(btn);
					$(slid).find("div.btnBg").css("opacity", 0.5);

					//为小按钮添加鼠标滑入事件，以显示相应的内容
					$(slid + " div.btn span").css("opacity", 0.4).mouseenter(function() {
						index = $(slid + " .btn span").index(this);
						showPics(index);
					}).eq(0).trigger("mouseenter");

					//上一页、下一页按钮透明度处理
					$(slid + " .prenext1").css("opacity", 0.2).hover(function() {
						$(this).stop(true, false).animate({
							"opacity": "0.5"
						}, 300);
					}, function() {
						$(this).stop(true, false).animate({
							"opacity": "0.2"
						}, 300);
					});

					//上一页按钮
					$(slid + " .pre").click(function() {
						index -= 1;
						if (index == -1) {
							index = len - 1;
						}
						showPics(index);
					});

					//下一页按钮
					$(slid + " .next1").click(function() {
						index += 1;
						if (index == len) {
							index = 0;
						}
						showPics(index);
					});

					//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
					$(slid + " ul").css("width", sWidth * (len));

					//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
					$(slid).hover(function() {
						clearInterval(picTimer);
					}, function() {
						picTimer = setInterval(function() {
							showPics(index);
							index++;
							if (index == len) {
								index = 0;
							}
						}, 6000); //此4000代表自动播放的间隔，单位：毫秒
					}).trigger("mouseleave");

					//显示图片函数，根据接收的index值显示相应的内容
					function showPics(index) { //普通切换
						var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
						$(slid + " ul").stop(true, false).animate({
							"left": nowLeft
						}, 300); //通过animate()调整ul元素滚动到计算出的position
						$(slid + " .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
						$(slid + " .btn span").stop(true, false).animate({
							"opacity": "0.4"
						}, 300).eq(index).stop(true, false).animate({
							"opacity": "1"
						}, 300); //为当前的按钮切换到选中的效果
					}

				};

				$.focus("#posterimg");

			});
			
			
			$(function() {
				var h = $('#ces').height();
				$('.slides').css("height", parseInt(h));           
			});
		</script>
		<script>
			
		</script>


	</body>
</html>
