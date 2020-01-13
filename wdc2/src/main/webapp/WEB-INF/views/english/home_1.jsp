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
<title>WDC</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet" href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="https://cdn.bootcss.com/animate.css/3.4.0/animate.css">
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
<style>
#q_w_1 {
    position: fixed;
    bottom: 75px;
    right: 20px;
    background: #151846;
    width: 50px;
    height: 100px;
    display: block;
    text-decoration: none;
    -webkit-border-radius: 0px;
    -moz-border-radius: 35px;
    display: inline;
    -webkit-transition: all 0.3s linear;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
    z-index: 1000;
}
#q_w_2 {
    position: fixed;
    bottom: 75px;
    right: 20px;
    background: #151846;
    width: 50px;
    height: 100px;
    display: block;
    text-decoration: none;
    -webkit-border-radius: 0px;
    -moz-border-radius: 35px;
    display: inline;
    -webkit-transition: all 0.3s linear;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
    z-index: 1000;
}
#w_1 {
    color: #fff;
    margin: 0;
    position: relative;
    left: 16px;
    top: 8px;
    font-size: 30px;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
@media screen and (min-width: 720px){
#weibo1::after{
	content:'weibo';
	position:absolute;
	top:100px;
	left:15px;
	color:white;
	font-size:18px;
}
#twitter1::after{
	content:'twitter';
	position:absolute;
	top:100px;
	left:20px;
	color:white;
	font-size:18px;
}
#telegram1::after{
	content:'telegram';
	position:absolute;
	top:100px;
	left:15px;
	color:white;
	font-size:18px;
}
#weixin1::after{
	content:'wechat';
	position:absolute;
	top:100px;
	left:25px;
	color:white;
	font-size:18px;
}
#facebook1::after{
	content:'facebook';
	position:absolute;
	top:100px;
	left:15px;
	color:white;
	font-size:18px;
}
#github1::after{
	content:'github';
	position:absolute;
	top:100px;
	left:25px;
	color:white;
	font-size:18px;
}
}

</style>
</head>

<body>
<!-- 侧边悬浮栏 -->
<a href="javascript:" id="return-to-top" style="right:30px;">
<i class="fa fa-angle-up"></i> 

</a>

<a  id="q_w_1"  style="width:75px">
<!-- <i style="top: -115px;left:6px; " class="fa fa-qq"></i> -->
<center><span style="color:#ADADAD">Business <br>Contacts</span></center>
<i onmouseover="mOver()"  onmouseout="mOut()" id="w_1" style="top: 11px;left:24px; " class="fa fa-weixin"></i>

</a>

<a   id="q_w_2" style="bottom:200px;background:transparent;right:88px;display:none">
<img alt="" src="${APP_PATH}/static/weixin2.jpg" width="120px" height="120px" >

</a>


<!-- 加载动画 -->
<div id="preloader">
	<div id="status"><img src="${APP_PATH}/static/mod/images/banner/loader.gif" id="preloader_image" alt="loader">
	</div>
</div>
<!--头部-->
<div section-scroll='' class="wd_scroll_wrap">
	<!--导航栏-->
	<header class="gc_main_menu_wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-6">
					<div class="logo-area" style="width: 334px;">
						<a href="${APP_PATH}/english/home_1" style="font-size: 28px;color:white;"><img src="${APP_PATH}/static/mod/images/mod/27.png" alt="logo"  />&nbsp;&nbsp;&nbsp;&nbsp;<strong>Wisdom Chain</strong></a>
					</div>
				</div>
				<!-- Mobile Menu  Start -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-6">
					<div class="menu-area  hidden-xs">
						<nav class="wd_single_index_menu btc_main_menu">
							<ul >
								<li><a href="${APP_PATH}/english/home_1" style="font-size: 18px;"><strong>HOME</strong></a></li>
								<li><a href="${APP_PATH}/english/application_1" style="font-size: 18px;"><strong>APP</strong></a></li>
								<li><a href="${APP_PATH}/english/developer_1" style="font-size: 18px;"><strong>DEVELOPER</strong></a></li>
								<li><a href="${APP_PATH}/english/information_1" style="font-size: 18px;"><strong>News Update</strong></a></li>
								<li><a id="forum_1" href="#" style="font-size: 18px;"><strong>FORUM</strong></a></li>
								<li><a  href="https://scan.wisdchain.com/index.html" style="font-size: 18px;"><strong>Block Chain Browser</strong></a></li>
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
							<h1><a href="#">WDC   </a></h1>
							<div id="toggle_close">&times;</div>
							<div id='cssmenu' class="wd_single_index_menu">
								<ul>
									<li><a href="${APP_PATH}/english/home_1">HOME</a></li>
									<li><a href="${APP_PATH}/english/application_1">APP</a></li>
									<li><a href="${APP_PATH}/english/developer_1">DEVELOPER</a></li>
									<li><a href="${APP_PATH}/english/information_1">News  Update</a></li>
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
	<!--Header area end here-->
	<!--轮播图-->
	<section class="slider-area">
		<canvas id="canvas">
			
		</canvas>
		<div id="particles-js">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="carousel-captions caption-1">
							<div class="container">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="slider-content">
											<ul>
												<li data-animation="animated bounceInDown" class="slider_social_icon1"><a target="_blank" href="https://weibo.com/WisdomChain"><i class="fa fa-weibo"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon2"><a target="_blank" href="https://twitter.com/Wisdom_Chain"><i class="fa fa-twitter"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon3"><a target="_blank" href="https://t.me//WisdomPublibcChain"><i class="fa fa-send-o"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon4"><a id="top_wx1" onmouseover="mOver1()"  onmouseout="mOut1()"  href="javascript:;" ><i class="fa fa-weixin"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon5"><a target="_blank" href="https://www.facebook.com/WisdomPublicChain/?modal=admin_todo_tour"><i class="fa fa-facebook"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon5"><a target="_blank" href="https://github.com/WisedomChainGroup"><i class="fa fa-github"></i></a></li>
											</ul>
											<div><h2 data-animation="animated bounceInLeft" style="font-size:29px;line-height:1.5;">Let the credit flow unprecedented, let the infinite imagination play, let the infinite value can be embodied, until every corner of the planet.
											</h2><h2 data-animation="animated bounceInLeft" style="margin-bottom:10px;font-size:29px;float:right">——Genesis block message&nbsp;&nbsp;&nbsp;&nbsp;</h2> 
											</div>
											<div class="buttons" style="margin-top: 100px;">
												<a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1" data-animation="animated bounceInUp" style="padding: 0px 25px;">&nbsp;&nbsp;White Paper&nbsp;&nbsp;</a>
												
												<a target="_blank" href="${APP_PATH}/english/information_1" class="btn1" data-animation="animated bounceInUp" style="padding: 0px 25px;">&nbsp;&nbsp;News Update&nbsp;&nbsp;</a>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 hidden-xs hidden-sm">
										<div class="btc_slider_about_img" data-animation="animated bounceInDown">
											<img  src="${APP_PATH}/static/mod/images/about/1.png" alt="about_img">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="container">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="slider-content">
										<ul>
											<li data-animation="animated bounceInDown" class="slider_social_icon1"><a href="https://weibo.com/WisdomChain"><i class="fa fa-weibo"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon2"><a href="https://twitter.com/Wisdom_Chain"><i class="fa fa-twitter"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon3"><a href="https://t.me//WisdomPublibcChain"><i class="fa fa-send-o"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon4"><a id="top_wx2" onmouseover="mOver2()"  onmouseout="mOut2()"  href="javascript:;"><i class="fa fa-weixin"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon5"><a href="https://www.facebook.com/WisdomPublicChain/?modal=admin_todo_tour"><i class="fa fa-facebook"></i></a></li>
												<li data-animation="animated bounceInDown" class="slider_social_icon5"><a href="https://github.com/WisedomChainGroup"><i class="fa fa-github"></i></a></li>
										</ul>
										<h2 data-animation="animated bounceInLeft">Block chain & <br>the latest technology development</h2>
										<div class="buttons">
											<a href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1" data-animation="animated bounceInUp">White Paper</a>
											<a href="${APP_PATH}/english/information_1" class="btn2" data-animation="animated bounceInUp">see information</a>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12  hidden-xs hidden-sm">
									<div class="btc_slider_about_img" data-animation="animated bounceInDown">
											<img src="${APP_PATH}/static/mod/images/about/1.png" alt="about_img">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-nevigation">
						<a class="prev" href="#carousel-example-generic" role="button" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a class="next" href="#carousel-example-generic" role="button" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--轮播图备注-->
	<section class="currency-area">
		<div class="container-fliud">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/12.png" alt=""><span>Data Storage</span></h2>
								<a href="${APP_PATH}/english/information_1"><button class="btn3">&nbsp;&nbsp;News Update &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/18.png" alt=""><span>Point To Point</span></h2>
								<a href="${APP_PATH}/english/information_1"><button class="btn3">&nbsp;&nbsp;News Update&nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/14.png" alt=""><span>Consensus </span></h2>
								<a href="${APP_PATH}/english/information_1"><button class="btn3">&nbsp;&nbsp;News Update &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/15.png" alt=""><span>Encryption</span></h2>
								<a href="${APP_PATH}/english/information_1"><button class="btn3">&nbsp;&nbsp;News Update &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list hidden-md   wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/16.png" alt=""><span>Certification </span></h2>
								<a href="${APP_PATH}/english/information_1"><button class="btn3">&nbsp;&nbsp;News Update &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!--关于WDC-->
<div section-scroll='' class="wd_scroll_wrap">
	<section class="about-area pd-t70 pd-b100 jarallax bg-img">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="about-content">
						<h2 class="f-40 fw-400 wow  fadeIn animated" data-wow-duration="1.0s" style="font-size:35px;visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">About WDC</h2>
						<p class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">Wisdom Chain is committed to the realization of the basic blockchain ecosystem of intelligent data asset interconnection. It is a new intelligent contract communication platform based on blockchain technology to realize the interconnection of life equipment and life information. </p>
						<p class="wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">It aims to provide distributed data connection, authentication, data asset exchange and other services for a large number of intelligent goods.</p>
						<p class="wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">As the underlying support system, Wisdom Chain is deployed in the form of community autonomous public chain, and finally supports multi chain parallel operation structure and multi-layer communication protocol, including device interconnection protocol, terminal data sharing protocol, authentication protocol and instant communication protocol.</p>
						<div class="buttons">
							<a href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1">White Paper</a>
							<a href="${APP_PATH}/english/information_1" class="btn1">&nbsp;&nbsp;News Update&nbsp;&nbsp;</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="btc_timer_section_wrapper" style="padding-top: 0px;">
						<img src="${APP_PATH}/static/mod/images/mod/24.png" alt="about_img" style="width: 100%;height: 500px;">
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

<div section-scroll='' class="wd_scroll_wrap">
	<!--项目概述 -->
	<section class="team-area pd-t100 pd-b50">
		<div id="particles-team">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2">
							<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Project Scenario</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte" style="height: 419px;margin-top: 100px;">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">Smart City</p>

										<p style="text-align:center">Through the construction of value network on blockchain, it connects urban intelligent devices, such as intelligent charging, intelligent bills, intelligent transportation, identity verification, etc. On the basis of data sharing, the measurement of data ownership and data identification are realized. </p>
									
									
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte" style="height: 419px;margin-top: 100px;">
								<div class="dbox">
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/2.png" style="width: 120px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">Data Assets</p>

										<p style="text-align:center">The data generated by the user's IOT equipment is the user's digital assets. The Wisdom Chain provides the whole network notarization for the user's digital assets, and realizes the transfer of digital assets through the asset transfer contract. This is an important application of user data capitalization. </p>
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte" style="height: 419px;margin-top: 100px;">
								<div class="dbox" >
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/3.png" style="width: 120px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">Smart Home</p>

										<p style="text-align:center">In the era of Internet of things, every family will have more and more smart homes, such as network TV, wireless speakers, smart remote control, smart fitness equipment, etc. Through Wisdom Chain, the integrated management terminal of intelligent data can be built, which is convenient to manage many IOT devices. </p>
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte" style="height: 419px;margin-top: 100px;">
								<div class="dbox">
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/4.png" style="width: 135px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">Medical Data Sharing</p>

										<p style="text-align:center">Through the deployment of medical data sharing applications on the chain, on the premise of ensuring personal identity privacy, connect the data of various medical institutions, reduce the expensive cost of system integration between medical institutions, and enable the data to have a rapid spread ability in the global scope. </p>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--技术概述-->
	<section class="features-area section" style="background: #0d469f">
		<div id="features-js">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2 wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
							<h2>Technology</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="featured-lists">
							<ul>
								<li>
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>Security Script System</h2>
											<p>For the underlying call and data asset related operations, Wisdom Chain provides a set of call libraries for external programs to implement. In the design of the entire script instruction, the limited programming ability is maintained. For Wisdom Chain, the function scenario is specific, so the function of the script instruction is specific.
												<br></p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:360px; height:270px;"src="${APP_PATH}/static/mod/images/mod/20.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs  wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>Security Script System</h2>
											<p>For the underlying call and data asset related operations, Wisdom Chain provides a set of call libraries for external programs to implement. In the design of the entire script instruction, the limited programming ability is maintained. For Wisdom Chain, the function scenario is specific, so the function of the script instruction is specific.
												</p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE </a>
										</div>
									</div>
								</li>
								<li class="rl">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>Application Development Template</h2>
											<p>The Wisdom Chain supports the development of business applications through script programs and is deployed on the chain. The development based on the chain is quite different from the traditional server-oriented development. At the same time, the development process will call open APIs. In order to facilitate the development of applications by technicians and reduce the deployment threshold, more community members can participate in the application development on Wisdom Chain and the application support in the main chain. In the holding module, standard application template support will be provided. 
												<br></p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><img style="width:360px; height:270px;" src="${APP_PATH}/static/mod/images/mod/23.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>Application Development Template</h2>
											<p>The Wisdom Chain supports the development of business applications through script programs and is deployed on the chain. The development based on the chain is quite different from the traditional server-oriented development. At the same time, the development process will call open APIs. In order to facilitate the development of applications by technicians and reduce the deployment threshold, more community members can participate in the application development on Wisdom Chain and the application support in the main chain. In the holding module, standard application template support will be provided.
												</p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
								</li>
								<li>
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>Dynamic Consensus</h2>
											<p>Building dynamic consensus is an important mechanism for Wisdom Chain to maintain community equity. For the public oriented data asset service system, the establishment of the core mechanism of the system will be fully delivered to the community. 
												<br></p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:360px; height:270px;" src="${APP_PATH}/static/mod/images/mod/22.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>Dynamic Consensus</h2>
											<p>Building dynamic consensus is an important mechanism for Wisdom Chain to maintain community equity. For the public oriented data asset service system, the establishment of the core mechanism of the system will be fully delivered to the community. 
												</p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
								</li>
								<li class="rl">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>Multi Chain</h2>
											<p>In the ecological design, Wisdom Chain will support the multi-level business function system from the definition of asset certificate to the application of asset data. The whole network system will support in the form of multi chain according to the division of business functions, providing state channels to separate different business chains. Each business chain will run specific applications, and the business chain and the main chain will remain anchored, and will be connected with the main chain. The chain runs on the same node. 
												<br></p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><img style="width:360px; height:270px;" src="${APP_PATH}/static/mod/images/mod/21.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>Multi Chain</h2>
											<p>In the ecological design, Wisdom Chain will support the multi-level business function system from the definition of asset certificate to the application of asset data. The whole network system will support in the form of multi chain according to the division of business functions, providing state channels to separate different business chains. Each business chain will run specific applications, and the business chain and the main chain will remain anchored, and will be connected with the main chain. The chain runs on the same node. 
												</p>
											<a href="${APP_PATH}/english/information_1" class="btn1">READ MORE</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<div section-scroll='' class="wd_scroll_wrap">
	<!--发展规划 -->
	<section class="projects bg-img pd-t100 pd-b70 jarallax">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
					<div class="section-heading">
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Development</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:90px;height:90px;" src="${APP_PATH}/static/mod/images/mod/6.png" alt=""></span>
							<h3>Certificate </h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/7.png" alt=""></span>
							<h3>Content confirmation right</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:95px;height:95px;" src="${APP_PATH}/static/mod/images/mod/7.png" alt=""></span>
							<h3>Tracing to the source</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:100px;height:100px;" src="${APP_PATH}/static/mod/images/mod/8.png" alt=""></span>
							<h3>Chain advertisement</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/10.png" alt=""></span>
							<h3>Asset definition</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/9.png" alt=""></span>
							<h3>Settlement and exchange</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/6.png" alt=""></span>
							<h3>Lightning network</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width: 120px;height:80px;"src="${APP_PATH}/static/mod/images/mod/9.png" alt=""></span>
							<h3>Asset switch</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width: 100px;height: 100px;"src="${APP_PATH}/static/mod/images/mod/11.png" alt=""></span>
							<h3>Chain mall</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>


<div section-scroll='' class="wd_scroll_wrap">
	
	
	
	
	<div class="sud">
		<svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 181.1" style="enable-background:new 0 0 1920 181.1;" xml:space="preserve">
			<style type="text/css">
				.st0 {
					fill-rule: evenodd;
					clip-rule: evenodd;
					fill: #1f58b1;
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

<div section-scroll='' class="wd_scroll_wrap">
	<!--核心产品-->
	<section class="blog-area section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-heading2">
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Product</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog-slider" id="product_cn">
				
					
					
					<div id="product_1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_1" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_1"></a></h4></center>
								<p id="pro_descr_1">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div>
					
					<div id="product_2" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_2" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_2"></a></h4></center>
								<p id="pro_descr_2">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div> 
					
					<div id="product_3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_3" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_3"></a></h4></center>
								<p id="pro_descr_3">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div>
					
					<div id="product_4" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_4" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_4"></a></h4></center>
								<p id="pro_descr_4">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div>
					<!--
					<div id="product_5" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_5" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_5"></a></h4></center>
								<p id="pro_descr_5">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div>
					
					<div id="product_6" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display:none">
						<div class="blog wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
							<figure><img id="pro_img_6" src="${APP_PATH}/static/mod/images/blog/2.jpg" alt="" /></figure>
							<div class="content" style="height: 288px;">
								
								<center><h4><a href="#" id="pro_title_6"></a></h4></center>
								<p id="pro_descr_6">WDC区块链浏览器是由Wisdom Chain技术团队打造的基于WDC主网区块链浏览器，旨在运用全球最新区块链技术为用户提供一站式WDC信息检索服务。</p>
								
							</div>
						</div>
					</div>
				 -->
			</div>
		</div>
	</section>
	<!--常见问题-->
	<section class="blog-area section contt_area faq_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-heading2">
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">FAQ</h2>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 wow  fadeIn animated" data-wow-duration="1.5s">
					<div class="team2-area btc_right_contt">
						 <div class="team-list">
							<div class="btc_faq_main_wrapper">
								<div class="accordionFifteen">
						<div class="panel-group" id="accordionFifteenLeft" role="tablist">
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading desktop">
									<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftone" aria-expanded="false">- What kind of consensus mechanism does the Wisdom Chain adopt?</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftone" class="panel-collapse collapse in" aria-expanded="true" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>The consensus mechanism of the Wisdom Chain has an iterative development process. In the first stage, the BFT + VRF + POS mechanism will be adopted, that is, the hybrid mechanism of workload proof + equity proof; in the second stage, the built-in Multi Chain method will be adopted, the main chain will continue to maintain the BFT + VRF + POS method, and the side chain will be expanded according to the design principle of one chain one application, and the side chain will adopt the POS method; in the third stage, the BFT + VRF + POS mechanism will be adopted. Support community voting decision-making model, support dynamic adjustment of consensus mechanism.</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading horn">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftTwo" aria-expanded="false">- What is the core algorithm of Wisdom Chain?</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>In the design and implementation of the main chain, there are core algorithms for the implementation of each technology stack, among which the consensus mechanism adopts BFT + VRF + POS algorithm mechanism; the open algorithm adopts ed25519 in the elliptic curve algorithm; the blockchain and transaction hash adopt Sha3.</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading bell">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftThree" aria-expanded="false">- How will the incubator consensus mechanism of the current stage of the Wisdom Chain continue to expand after the main chain goes online?</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>In fact, the incubator at this stage includes the POS consensus design strategy adopted by some Wisdom Chains, which is also the issuance and distribution strategy of WDC. In the consensus design stage of the main chain, the incubator will be smoothly designed on the basis of the strategy of the incubator. For the Wisdom Chain, the interests of the community are the first. Maintaining a community consensus economic model is conducive to the future of the Wisdom Chain. Long term sustainable development of ecology.</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading bell">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftFour" aria-expanded="false">- What applications will be deployed in the Wisdom Chain in the future?</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>The application scenario of Wisdom Chain is very clear, that is to realize the interconnection of living equipment and life information, so there can be the following application deployment:</p>
 											<p>1），Personal identity verification</p>
 											<p>2），Storage of personal equipment information</p>
 											<p>3），IOT e-commerce platform</p>
 											<P>4），Chain based token social networking</P>
 											<p>Of course, the application deployment will not change with it, so that the development of the main chain, we will more let the community participate in the application construction, improve the convenience and quality of people's lives.</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->

						</div>
						<!--end of /.panel-group-->
					</div>
							</div>
						 </div>
					</div>
				</div>	
			</div>
		</div>
	</section>	
	<div class="sud">
		<svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 181.1" style="enable-background:new 0 0 1920 181.1;" xml:space="preserve">
			<style type="text/css">
				.st0 {
					fill-rule: evenodd;
					clip-rule: evenodd;
					fill: #1f58b1;
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
	<!--联系我们-->
	<section class="blog-area section contt_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-heading2">
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Contact Us</h2>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow  fadeIn animated"  data-wow-duration="1.0s">
					<div class="btc_cont_form_wrapper">
						<div class="row">
							<form id="send_form">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper">
									<input type="text" placeholder="Name" name="name">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper btc_cont_form_wrapper2">
									<input type="text" placeholder="Email" name="email">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper3">
									<textarea rows="6" placeholder="Information" name="mission"></textarea>
									<input type="hidden" name="edition" value="English">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="view-btn btc_contt_btn">
								
									<a href="#" onclick="send()">Send</a>
									
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow  fadeIn animated" data-wow-duration="1.5s">
					<div class="team2-area btc_right_contt">
						 <div class="team-list">
							<div class="btc_contt_list_main_wrapper">
								<div class="btc_contt_list_inner_wrapper">
									<div class="btc_contt_icon_wrapper">
										<i class="fa fa-map-marker"></i>
									</div>
									<div class="btc_contt_icon_cont_wrapper">
										<p>152 BEACH ROAD #14-02 GATEWAY EAST </p>
										<p>SINGAPORE (189721)</p>
									</div>
								</div>	
								<div class="btc_contt_list_inner_wrapper btc_contt_list_inner_wrapper2">
									<div class="btc_contt_icon_wrapper">
										<i class="fa fa-map-marker"></i>
									</div>
									<div class="btc_contt_icon_cont_wrapper">
										<p>wise_cc@outlook.com</p>
										<p>market@wdc852.com</p>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</section>
	<!--交易所-->
	<section class="media-area section bg-img jarallax">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-heading">
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Cooperative Partner</h2>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">
					<div class="mediabrand">
						<ul>
							<center>
							<li class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
								<a href="#"><img style="height:55px;" src="${APP_PATH}/static/mod/images/mod/25.png" alt="" /></a>
							</li>
							<li class="wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
								<a href="#"><img style="height:46px;"src="${APP_PATH}/static/mod/images/mod/26.png" alt="" style="height: 42px;" /></a>
							</li>
							<li class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
								<a href="#"><img style="height:44px;"src="https://resource.jinse.com/www/v3/img/logo.svg?v=1956" alt="" /></a>
							</li>
							<li class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
								<a href="#"><img style="width:170px;height:38px;"src="${APP_PATH}/static/mod/images/mod/36.png" alt="" /></a>
							</li>
							<li class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
								<a href="#"><img style="width:300px;height:44px;" src="${APP_PATH}/static/mod/images/FF.png" alt="" /></a>
							</li>
							<li class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
								<a href="#"><img style="width:300px;height:64px;" src="${APP_PATH}/static/mod/images/mod/ABIT_2.png" alt="" /></a>
							</li>

							</center>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="sud">
		<svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1920 181.1" style="enable-background:new 0 0 1920 181.1;" xml:space="preserve">
			<style type="text/css">
				.st0 {
					fill-rule: evenodd;
					clip-rule: evenodd;
					fill: #1f58b1;
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
	<!--关于我们-->
	<footer class="top-foo">
		<div id="footer-js">
			<div class="footer-top section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="con">
								<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">Contact Us</h2>
								<ul>
									<li id="weibo1" class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;"><a target="_blank" href="https://weibo.com/WisdomChain"><i class="fa fa-weibo"></i></a></li>
									<li id="twitter1" class="wow  fadeIn animated" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5; animation-name: fadeIn;"><a target="_blank" href="https://twitter.com/Wisdom_Chain"><i class="fa fa-twitter"></i></a></li>
									<li id="telegram1" class="wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;"><a target="_blank" href="https://t.me//WisdomPublibcChain"><i class="fa fa-send-o"></i></a></li>
									<li id="weixin1" class="wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;"><a id="bottom_wx1"   onmouseover="mOver3()"  onmouseout="mOut3()" href="javascript:;"><i class="fa fa-weixin"></i></a></li>
									<li id="facebook1" class="wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;"><a target="_blank" href="https://www.facebook.com/WisdomPublicChain/?modal=admin_todo_tour"><i class="fa fa-facebook"></i></a></li>
									<li id="github1" class="wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;"><a target="_blank" href="https://github.com/WisedomChainGroup"><i class="fa fa-github"></i></a></li>
								</ul>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="search_btm wow  fadeIn animated" data-wow-duration="2.6s" style="visibility: visible; animation-duration: 2.6s; animation-name: fadeIn;">
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--页脚-->
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
								<li><a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper">white paper</a></li>
								<li><a target="_blank" href="#">TERMS OF SERVICE</a></li>
								<li><a target="_blank" href="#">PRIVACY POLICY</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>



<!--Footer area end here-->
<!-- all js here -->
<!-- jquery latest version -->

<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="${APP_PATH}/static/mod/js/vendor/ernizr-2.8.3.min.js" type="text/javascript"></script>

<!-- tether js -->
<script src="${APP_PATH}/static/mod/js/tether.min.js"></script>
<!-- bootstrap js -->
<script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script src="${APP_PATH}/static/mod/js/owl.carousel.min.js"></script>
<!-- meanmenu js -->
<script src="${APP_PATH}/static/mod/js/jquery.meanmenu.js"></script>
<!-- jquery-ui js -->
<script src=" https://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.js "></script>
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
<script src="https://cdn.bootcss.com/echarts/4.1.0.rc2/echarts-en.min.js "></script>

<script src="${APP_PATH}/static/mod/js/vc_round_chart.min.js"></script>

<!---<script src="js/Youtube.min.js"></script>--->
<!-- main js -->
<script src="${APP_PATH}/static/mod/js/main.js"></script>
<script>
$(document).ready(function () {
	var en="en";
	product(en);
	
	$("#q_w_2").css("display","none");
    		$("#q_w_1").css("display","none");


	if(window.location.hostname=="www.wisdchain.io"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
		
	}
	if(window.location.hostname=="www.wisdchain.com"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
	}
		
	//初始化 浮层图片
	$("#top_wx1").before("<img id='top_wx_1' style='z-index: 99999;top:100px;left: 0.1%;position:absolute;display: none;' src='https://www.wisdchain.com/static/img/wx2.jpg' width='120px' height='120px' >");
	$("#top_wx2").before("<img id='top_wx_2' style='z-index: 99999;top:100px;position:fixed;display: none;' src='https://www.wisdchain.com/static/img/wx2.jpg' width='120px' height='120px' >");
	$("#bottom_wx1").before("<img id='bottom_wx_1' style='z-index: 99999;top:100px;left: 0.1%;position:absolute;display: none;' src='https://www.wisdchain.com/static/img/wx2.jpg' width='120px' height='120px' >");
	});
	
	



$(document).scroll(function() {
  	var scroH = $(document).scrollTop();  //滚动高度
    	var viewH = $(window).height();  //可见高度 
    	var contentH = $(document).height();  //内容高度
    	if(scroH <400){  //距离顶部大于100px时
    		$("#q_w_2").css("display","none");
    		$("#q_w_1").css("display","none");
    	
   	 }
    	if(scroH >400){  //距离顶部大于100px时
    		$("#q_w_1").css("display","inline");
    	
    	}

	});

function mOver(){
	
	$("#q_w_2").css("display","inline");
	
}
function mOut(){
	
	$("#q_w_2").css("display","none");
}
function mOver1(){
	
	$("#top_wx_1").css("display","inline");
	
}
function mOut1(){
	
	//x.style.display="none";
	$("#top_wx_1").css("display","none");
	
}
function mOver2(){
	
	$("#top_wx_2").css("display","inline");
	
}
function mOut2(){
	
	//x.style.display="none";
	$("#top_wx_2").css("display","none");
	
}
function mOver3(){
	
	$("#bottom_wx_1").css("display","inline");
	
}
function mOut3(){
	
	//x.style.display="none";
	$("#bottom_wx_1").css("display","none");
	
}
//核心产品
function product(en){
	
			$.ajax({
				url:"${APP_PATH}/products/"+en,
				type:"GET",
				success:function(result) {
					
				
					$.each(result.extend.products,function(index,item){
						var i=index+1;
						$("#product_"+i).css("display","");
						$("#pro_img_"+i).attr("src",item.img);
						$("#pro_title_"+i).attr("href",item.address);
						$("#pro_title_"+i).text(item.title);
						$("#pro_descr_"+i).text(item.descr);
						
						//document.getElementById("product_cn").innerHTML=dd1+dd1;
								
					})				
				}		
			})	
		};

//联系提交事件					
function send(){
	

	
	
	$.ajax({
		url:"${APP_PATH}/contact",
		type:"POST",
		data:$("#send_form").serialize(),
		success:function(result){
			
			
		
		}
	});
	
};

</script>



</body>
</html>
