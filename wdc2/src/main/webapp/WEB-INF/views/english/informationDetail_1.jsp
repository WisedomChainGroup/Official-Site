<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<title>Information</title>
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
						<a href="${APP_PATH}/english/home_1" style="font-size: 28px;color:white;"><img src="${APP_PATH}/static/mod/images/mod/27.png" alt="logo"  />&nbsp;&nbsp;&nbsp;&nbsp;Wisdom Chain</a>
					</div>
				</div>
				<!-- Mobile Menu  Start -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-6">
					<div class="menu-area  hidden-xs">
						<nav class="wd_single_index_menu btc_main_menu">
							<ul>
								<li><a href="${APP_PATH}/english/home_1" style="font-size: 18px;"><strong>HOME</strong></a></li>
								<li><a href="${APP_PATH}/english/application_1" style="font-size: 18px;"><strong>APP</strong></a></li>
								<li><a href="${APP_PATH}/english/developer_1" style="font-size: 18px;"><strong>DEVELOPER</strong></a></li>
								<li><a href="${APP_PATH}/english/information_1" style="font-size: 18px;"><strong>News Update</strong></a></li>
								<li><a id="forum_1" href="#" style="font-size: 18px;"><strong>FORUM</strong></a></li>
								<li><a href="https://scan.wisdchain.com/index.html" style="font-size: 18px;"><strong>Block Chain Browser</strong></a></li>
								<li><a  href="http://wiki.wisdchain.com/wiki/" style="font-size: 18px;"><strong>WIKI</strong></a></li>
							</ul>
						</nav>
						<div class="language">
							<span style="text-align: center" class="lng-in"><img style="width:25px;height:25px;"src="${APP_PATH}/static/mod/images/icons/12.png" alt=""></span>
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
									<li><a href="${APP_PATH}/english/home_1">HOME</a></li>
									<li><a href="${APP_PATH}/english/application_1">APP</a></li>
									<li><a href="${APP_PATH}/english/developer_1">DEVELOPER</a></li>
									<li><a href="${APP_PATH}/english/information_1">News Update</a></li>
									<li><a id="forum_2" href="#">FORUM</a></li>
									<li><a href="https://scan.wisdchain.com/index.html">Block Chain Browser</a></li>
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
<!-- 页脚-->
<div section-scroll='' class="wd_scroll_wrap">

	<!--核心产品-->
	<section class="blog-area section">
	
		<div class="container">


		
		<div class="row">
				
				<div style="visibility:hidden;">111</div>
				<center>
			
				<h2 style="color: #337ab7" id="information_title"></h2>
				<p id="information_author_time"></p>
			</center>
			
			<div >
				<div id="information_descr">
				
				 </div>
			</div>
  		
	  	
	  	
			
		</div>
	

	</div>
	</section>
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
								<li><a href="https://github.com/WisedomChainGroup/WhitePaper">white paper</a></li>
								<li><a href="#">TERMS OF SERVICE</a></li>
								<li><a href="#">PRIVACY POLICY</a></li>
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
<script>
$(document).ready(function () {
	
	var url = location.search;
	var id=url.slice(4);
	getInformation(id);
	
	if(window.location.hostname=="www.wisdchain.io"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
		
	}
	if(window.location.hostname=="www.wisdchain.com"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
	}
	
	});
function getInformation(id){
	
	$.ajax({
		url:"${APP_PATH}/information/"+id,
		type:"GET",
		success:function(result){
			
			var data = result.extend.information;
			$("#information_title").append(data.title);
			$("#information_author_time").append(data.author+'/published in'+data.time);
			$("#information_descr").append(data.descr);
			
		}
	});
}
</script>

</body>
</html>