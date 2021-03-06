﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>应用</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/animate.css">
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/jquery-ui.min.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/meanmenu.min.css">
<!-- owl.carousel css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/owl.carousel.min.css">
<!-- bxslider css -->
<!--flaticon css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/flaticon.css">
<!-- font-awesome css -->
<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/mod/font-awesome.min.css">
<link href="${APP_PATH}/static/mod/css/video-js.css" rel="stylesheet">
<!-- style css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/style.css">
<!-- responsive css -->
<link rel="stylesheet" href="${APP_PATH}/static/mod/css/responsive.css">
<!-- modernizr css -->

</head>

<body>
<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

<!-- 加载动画-->
<div id="preloader">
	<div id="status"><img src="${APP_PATH}/static/mod/images/banner/loader.gif" id="preloader_image" alt="loader">
	</div>
</div>
<!-- 导航栏-->
<div section-scroll='' class="wd_scroll_wrap">
	<header class="gc_main_menu_wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-6">
					<div class="logo-area" style="width: 334px;">
						<a href="${APP_PATH}/user/home_1" style="font-size: 28px;color:white;"><img src="${APP_PATH}/static/mod/images/mod/27.png" alt="logo"  />&nbsp;&nbsp;&nbsp;&nbsp;Wisdom Chain</a>
					</div>
				</div>
				<!-- Mobile Menu  Start -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-6">
					<div class="menu-area  hidden-xs">
						<nav class="wd_single_index_menu btc_main_menu">
							<ul>
								<li><a href="${APP_PATH}/user/home_1" style="font-size: 18px;"><strong>首页</strong></a></li>
								<li><a href="${APP_PATH}/user/application_1" style="font-size: 18px;"><strong>应用</strong></a></li>
								<li><a href="${APP_PATH}/user/developer_1" style="font-size: 18px;"><strong>开发者工具</strong></a></li>
								<li><a href="${APP_PATH}/user/information_1" style="font-size: 18px;"><strong>最新资讯</strong></a></li>
								<li><a id="forum_1" href="#" style="font-size: 18px;"><strong>论坛</strong></a></li>
								<li><a  href="https://scan.wisdchain.com/cn/index.html" style="font-size: 18px;"><strong>区块链浏览器</strong></a></li>
								<li><a  href="http://wiki.wisdchain.com/wiki/" style="font-size: 18px;"><strong>WIKI</strong></a></li>
							</ul>
						</nav>
						<div class="language">
							<span style="text-align: center" class="lng-in"><img style="width:25px;height:25px;"src="${APP_PATH}/static/mod/images/mod/35.png" alt=""></span>
							<ul class="lng-out" style="background-color: #2882b8">
								<li><a href="${APP_PATH}/english/home_1"><img src="${APP_PATH}/static/mod/images/icons/12.png" alt="" /></a></li>
								<li><a href="${APP_PATH}/user/home_1"><img style="width:25px;height:25px;" src="${APP_PATH}/static/mod/images/mod/35.png" alt="" /></a></li>
							</ul>
						</div>
						<div class="login-btn" style="display:none">
							<a href="#" class="btn1"><i class="fa fa-user"></i><span>Login</span></a>
						</div>
					</div>
					<!-- mobile menu area start -->
					<div class="rp_mobail_menu_main_wrapper visible-xs">
						<div class="row">
							<div class="col-xs-12">
								<div id="toggle">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 31.177 31.177" style="enable-background:new 0 0 31.177 31.177;" xml:space="preserve" width="25px" height="25px">
										<g>
											<g>
												<path class="menubar" d="M30.23,1.775H0.946c-0.489,0-0.887-0.398-0.887-0.888S0.457,0,0.946,0H30.23    c0.49,0,0.888,0.398,0.888,0.888S30.72,1.775,30.23,1.775z" fill="#fff" />
											</g>
											<g>
												<path class="menubar" d="M30.23,9.126H12.069c-0.49,0-0.888-0.398-0.888-0.888c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,8.729,30.72,9.126,30.23,9.126z" fill="#fff" />
											</g>
											<g>
												<path class="menubar" d="M30.23,16.477H0.946c-0.489,0-0.887-0.398-0.887-0.888c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,16.079,30.72,16.477,30.23,16.477z" fill="#fff" />
											</g>
											<g>
												<path class="menubar" d="M30.23,23.826H12.069c-0.49,0-0.888-0.396-0.888-0.887c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,23.43,30.72,23.826,30.23,23.826z" fill="#fff" />
											</g>
											<g>
												<path class="menubar" d="M30.23,31.177H0.946c-0.489,0-0.887-0.396-0.887-0.887c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.398,0.888,0.888C31.118,30.78,30.72,31.177,30.23,31.177z" fill="#fff" />
											</g>
										</g>
									</svg>
								</div>
							</div>
						</div>
						<div id="sidebar">
							<h1><a href="#">WDC</a></h1>
							<div id="toggle_close">&times;</div>
							<div id='cssmenu' class="wd_single_index_menu">
								<ul>
									<li><a href="${APP_PATH}/user/home_1">首页</a></li>
									<li><a href="${APP_PATH}/user/application_1">应用</a></li>
									<li><a href="${APP_PATH}/user/developer_1">开发者</a></li>
									<li><a href="${APP_PATH}/user/information_1">最新资讯</a></li>
									<li><a id="forum_2" href="#">论坛</a></li>
									<li><a href="https://scan.wisdchain.com/cn/index.html">区块链浏览器</a></li>
									<li><a href="http://wiki.wisdchain.com/wiki/">WIKI</a></li>
									<li><a href="${APP_PATH}/user/home_1">CN</a></li>
									<li><a href="${APP_PATH}/english/home_1">EN</a></li>
								
								</ul>
							</div>
						</div>
					</div>
					<!-- Mobile Menu  End -->
				</div>
			</div>
		</div>
	</header>
</div>
<!--关于WDC hidden-->
<div section-scroll='' class="wd_scroll_wrap" style="display:none;">
	<section class="about-area pd-t70 pd-b100 jarallax bg-img">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="about-content">
						<h2 class="f-40 fw-400 wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">关于WDC</h2>
						<p class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">Wisdom chain（简称“智慧链” 或 “WDC”）致力于实现智能数 据资产互联基础区块链生态系统，是一个实现生活设备物联，生活信 息互联的一种全新的基于区块链技术的智能合约通信平台。 </p>
						<p class="wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">旨在为人 们众多的智能物品提供分布式的数据连接以及身份验证、数据资产交 换等服务。</p>
						<p class="wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">智慧链作为底层的支撑系统，以社区自治的公链形式部署， 最终支持多链并行的运行结构，支持多层通信协议，包含设备互联协 议、终端数据共享协议以及身份验证协议和即时通信协议等。</p>
						<div class="buttons">
							<a href="#" class="btn1">白皮书地址</a>
							<a href="#" class="btn1">&nbsp;&nbsp;更多信息&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="btc_timer_section_wrapper" style="padding-top: 0px;">
						<img src="${APP_PATH}/static/mod/images/mod/24.png" alt="about_img" style="width: 600px;height: 600px;">
						<div id="clockdiv" style="display:none">
							<div>
								<span class="days"></span>
								<div class="smalltext">Days</div>
							</div>
							<div>
								<span class="hours"></span>
								<div class="smalltext">Hours</div>
							</div>
							<div>
								<span class="minutes"></span>
								<div class="smalltext">Minutes</div>
							</div>
							<div>
								<span class="seconds"></span>
								<div class="smalltext">Seconds</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--About area end here-->
	<div class="sud">
		<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 181.1" style="enable-background:new 0 0 1920 181.1;" xml:space="preserve">
			<style type="text/css">
				.st0 {
					fill-rule: evenodd;
					clip-rule: evenodd;
					fill: #10122d;
				}
			</style>
			<g>
				<path class="st0" d="M0,80c0,0,28.9-4.2,43-13c14.3-9,71-35.7,137,5c17.3,7.7,33.3,13,48,11c17.3,0.3,50.3,4.7,66,23
				 c20.3,9.7,68,40.3,134-12c24-11,59-16.3,104,2c21,7.3,85,27.7,117-14c24-30.7,62.7-55,141-12c26,10.3,72,14.7,110-14
				 c37.7-19,89.7-29,122,53c23,32.7,47.7,66.3,97,26c24-22.7,51-78.3,137-38c0,0,28.3,15.7,52,15c23.7-0.7,50.7,4.3,76,41
				 c19.7,19.7,71,36.7,121-2c0,0,22.3-16,55-12c0,0,32.7,6.7,56-71c23.3-76,79-92,122-29c9.3,13.7,25,42,62,43c37,1,51.7,25.3,67,48
				 c15.3,22.7,51,22.7,53,23v28.1H0V80z" />
			</g>
		</svg>
	</div>
</div>
<!-- 链上应用-->
<div section-scroll='' class="wd_scroll_wrap">
	<section class="team-area pd-t100 pd-b50">
		<div id="particles-team">
			<div class="container">

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2" style="text-align: left">
							<div style="width: 50%;float:left">
								<img class="wallet_banner_img" src="https://www.wisdchain.com/static/img/wdc_phone.ada23678.png" style="width: 70%">
							</div>
							<div style="width: 50%;float: left ">
								<img class="wallet_banner_img" src="https://www.wisdchain.com/static/img/logo-phone.png" style="width: 59px;height: 58px;">
								<h3 style="padding-top: 10px;color: #337ab7">WDC Space</h3>
								<p>WDC Space是基于Wisdom Chain所开发的一款集资产管理、资产存储、链上应用、行业资讯的移动端App。</p>
								<div style="width: auto;float:left;text-align:center">

									<img id="ios2" src="https://card-wisechain.oss-cn-hongkong.aliyuncs.com/wisechainbg/1578280254YYHZ" style="width: 150px;height: 150px;">
									<p style="padding-right: 0px;">IOS<br><span style="font-size:13px">(在AppStore搜索WDC Space下载)<span></p>
								</div>
								<div style="width: 40%;float: left">
									<center><img  id="and1" src="https://card-wisechain.oss-cn-hongkong.aliyuncs.com/wisechainbg/1569742860EQVJ" style="width: 150px;height: 150px;margin-left: 10px;"></center>
									<p style="padding-left: 40%;">Android</p>
								</div>	
							</div>
							
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2" style="margin-top: 40px;">
							<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">链上应用</h2>
						</div>
					</div>
				</div>
				
				<div class="row">
				
					<div id="app_1" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_1" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_1"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_1"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
					<div id="app_2" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_2" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_2"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_2"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
					<div id="app_3" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_3" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_3"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_3"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
					<div id="app_4" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_4" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_4"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_4"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
					<div id="app_5" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_5" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_5"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_5"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
					<div id="app_6" style="display:none" class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img id="app_img_6" src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p id="app_title_6"style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>
										<p id="app_descr_6"style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>	
								</div>	
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>
</div>

<!-- 页脚-->
<div section-scroll='' class="wd_scroll_wrap">
	<footer class="foo-bot">
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<div class="copyright wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
							<p>2018-2019 Wisdom Public Chain Foundation. All rights reserved</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<div class="foo-link wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
							<ul>
								<li><a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper">白皮书</a></li>
								<li><a href="#">服务条款</a></li>
								<li><a href="#">隐私政策</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>



<!-- all js here -->
<!-- jquery latest version -->
<script src="${APP_PATH}/static/mod/js/vendor/jquery-3.2.1.min.js"></script>
<!-- tether js -->
<script src="${APP_PATH}/static/mod/js/tether.min.js"></script>
<!-- bootstrap js -->
<script src="${APP_PATH}/static/mod/js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script src="${APP_PATH}/static/mod/js/owl.carousel.min.js"></script>
<!-- meanmenu js -->
<script src="${APP_PATH}/static/mod/js/jquery.meanmenu.js"></script>
<!-- jquery-ui js -->
<script src="${APP_PATH}/static/mod/jquery-ui.min.js"></script>
<!-- easypiechart js -->
<script src="${APP_PATH}/static/mod/js/jquery.easypiechart.min.js"></script>
<!-- particles js -->
<!-- wow js -->
<script src="${APP_PATH}/static/mod/js/wow.min.js"></script>
<!-- smooth-scroll js -->
<script src="${APP_PATH}/static/mod/js/smooth-scroll.min.js"></script>
<!-- plugins js -->
<script src="${APP_PATH}/static/mod/js/plugins.js"></script>
<!-- EChartJS JavaScript -->
<script src="${APP_PATH}/static/mod/echarts-en.min.js"></script>

<script src="${APP_PATH}/static/mod/js/vc_round_chart.min.js"></script>

<!---<script src="js/Youtube.min.js"></script>--->
<!-- main js -->
<script src="${APP_PATH}/static/mod/js/main.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	var cn="cn";
	qr();
	application(cn);

	if(window.location.hostname=="www.wisdchain.io"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
		
	}
	if(window.location.hostname=="www.wisdchain.com"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
	}


	});
//二维码
function qr(){	
			$.ajax({
				url:"${APP_PATH}/user/qrs",
				type:"GET",
				success:function(result) {
					$.each(result.extend.qrs,function(index,item){
						if(item.edition=='androidChinese'){
							//安卓中文
							$("#and1").attr("src",item.img);
						}
						if(item.edition=='iosChinese'){
							//IOS中文
							$("#ios1").attr("src",item.img);
						}									
					})
				}		
			})		
};
function application(cn){
	$.ajax({
		url:"${APP_PATH}/applications/"+cn,
		type:"GET",
		success:function(result) {	
				$.each(result.extend.applications,function(index,item){	
					var i=index+1;
					$("#app_"+i).css("display","");
					$("#app_img_"+i).attr("src",item.img);
					$("#app_title_"+i).text(item.title);
					$("#app_descr_"+i).text(item.descr)
					
					
				})
				
		}		
	})
};

	


</script>


</body>
</html>