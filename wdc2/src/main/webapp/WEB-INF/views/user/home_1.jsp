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
<title>WDC官网</title>
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
#li_1:before {
  content: '';
  position: absolute;
  left: 50%;
  right: 0;
  width: 6%;
  height: 2px;
  background: rgba(255, 255, 255, 0.36);
  top: 13px;
}
#li_1:after{
	top:4px;

}
#li_2:before {
  top: 55px;
}
#li_2:after {
  top: 45px;
}
#li_3:before {
  top: 55px;
}
#li_3:after {
  top: 45px;
}
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
#js_li_1:before{
	left:auto;
	right:45%;
	width:38.5%;

}
#js_li_2:before{
	left:auto;
	right:44.5%;
	width:13%;

}
#js_li_3:before{
	left:auto;
	right:44.5%;
	width:39%;

}
#js_li_4:before{
	left:auto;
	right:44.5%;
	width:13%;

}
#js_li_5:before{
	left:auto;
	right:44.5%;
	width:44%;

}#js_li_6:before{
	left:auto;
	right:44.5%;
	width:13%;

}
#js_li_7:before{
	left:auto;
	right:44.5%;
	width:44%;

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
<a href="javascript:" id="return-to-top">
<i class="fa fa-angle-up"></i> 

</a>

<a  id="q_w_1" >
<!-- <i style="top: -115px;left:6px; " class="fa fa-qq"></i> -->
<center><span style="color:#ADADAD">商务<br>联系</span></center>
<i onmouseover="mOver()"  onmouseout="mOut()" id="w_1" style="top: 11px;left:9px; " class="fa fa-weixin"></i>

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
						<a href="${APP_PATH}/user/home_1" style="font-size: 28px;color:white;"><img src="${APP_PATH}/static/mod/images/mod/27.png" alt="logo"  />&nbsp;&nbsp;&nbsp;&nbsp;<strong>Wisdom Chain</strong></a>
					</div>
				</div>
				<!-- Mobile Menu  Start -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-6">
				
					<div class="menu-area  hidden-xs">
						<nav class="wd_single_index_menu btc_main_menu">
							<ul >
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
							<h1><a href="#">WDC   </a></h1>
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
											<h2 data-animation="animated bounceInLeft" style="font-size:29px;line-height:1.5;">让信用前所未有的流动，让无限的想象可能发挥，让无穷的价值可以体现，直到星球的每个角落。
											</h2><h2 data-animation="animated bounceInLeft" style="margin-bottom:10px;font-size:29px;float:right">——创世区块留言&nbsp;&nbsp;&nbsp;&nbsp;</h2> 
											<div class="buttons" style="margin-top: 100px;">
												<a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1" data-animation="animated bounceInUp">&nbsp;&nbsp;白皮书&nbsp;&nbsp;</a>
												<a target="_blank" href="${APP_PATH}/static/WDC1.pdf" class="btn1" data-animation="animated bounceInUp" style="padding: 0px 25px;">&nbsp;&nbsp;更多信息&nbsp;&nbsp;</a>
											</div>
										</div>
									</div>
									
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 hidden-xs hidden-sm">
										<div class="btc_slider_about_img" data-animation="animated bounceInDown">
											<img src="${APP_PATH}/static/mod/images/about/1.png" alt="about_img">
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
											<li data-animation="animated bounceInDown" class="slider_social_icon1"><a target="_blank" href="https://weibo.com/WisdomChain"><i class="fa fa-weibo"></i></a></li>
											<li data-animation="animated bounceInDown" class="slider_social_icon2"><a target="_blank" href="https://twitter.com/Wisdom_Chain"><i class="fa fa-twitter"></i></a></li>
											<li data-animation="animated bounceInDown" class="slider_social_icon3"><a target="_blank" href="https://t.me//WisdomPublibcChain"><i class="fa fa-send-o"></i></a></li>
											<li data-animation="animated bounceInDown" class="slider_social_icon4"><a id="top_wx2" onmouseover="mOver2()"  onmouseout="mOut2()"  href="javascript:;"><i class="fa fa-weixin"></i></a></li>
											<li data-animation="animated bounceInDown" class="slider_social_icon5"><a target="_blank" href="https://www.facebook.com/WisdomPublicChain/?modal=admin_todo_tour"><i class="fa fa-facebook"></i></a></li>
											<li data-animation="animated bounceInDown" class="slider_social_icon5"><a target="_blank" href="https://github.com/WisedomChainGroup"><i class="fa fa-github"></i></a></li>
										</ul>
										<h2 data-animation="animated bounceInLeft">Block chain & <br>the latest technology development</h2>
										<div class="buttons">
											<a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1" data-animation="animated bounceInUp">白皮书</a>
											<a  href="${APP_PATH}/user/information_1" class="btn2" data-animation="animated bounceInUp">更多信息</a>
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
								<h2><img src="${APP_PATH}/static/mod/images/mod/12.png" alt=""><span>数据存储</span></h2>
								<a href="${APP_PATH}/user/information_1"> <button  class="btn3">&nbsp;&nbsp;更多信息 &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/18.png" alt=""><span>点点传输</span></h2>
								<a href="${APP_PATH}/user/information_1"><button class="btn3">&nbsp;&nbsp;更多信息 &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/14.png" alt=""><span>共识机制</span></h2>
								<a href="${APP_PATH}/user/information_1"><button class="btn3">&nbsp;&nbsp;更多信息 &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list bt_title wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/15.png" alt=""><span>加密算法</span></h2>
								<a href="${APP_PATH}/user/information_1"><button class="btn3">&nbsp;&nbsp;更多信息 &nbsp;&nbsp;</button></a>
							</div>
						</div>
					</div>
					<div class="rete-list hidden-md   wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<div class="con">
								<h2><img src="${APP_PATH}/static/mod/images/mod/16.png" alt=""><span>通证经济</span></h2>
								<a href="${APP_PATH}/user/information_1"><button class="btn3">&nbsp;&nbsp;更多信息 &nbsp;&nbsp;</button></a>
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
						<h2 class="f-40 fw-400 wow  fadeIn animated" data-wow-duration="1.0s" style="font-size:35px;visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">关于WDC</h2>
						<p class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">Wisdom chain（简称“WDC”）致力于实现智能数 据资产互联基础区块链生态系统，是一个实现生活设备物联，生活信 息互联的一种全新的基于区块链技术的智能合约通信平台。 </p>
						<p class="wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">旨在为人 们众多的智能物品提供分布式的数据连接以及身份验证、数据资产交 换等服务。</p>
						<p class="wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">WDC作为底层的支撑系统，以社区自治的公链形式部署， 最终支持多链并行的运行结构，支持多层通信协议，包含设备互联协 议、终端数据共享协议以及身份验证协议和即时通信协议等。</p>
						<div class="buttons">
							<a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper" class="btn1">白皮书地址</a>
							<a  href="${APP_PATH}/user/information_1" class="btn1">&nbsp;&nbsp;更多信息&nbsp;&nbsp;</a>
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
	<section class="features-area section" style="background: #0d469f">
	<div id="features-js">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2 wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
							<h2 style="font-size:35px">WDC发展经历</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="featured-lists">
							<ul>
								
								
								
								
								<li class="rl">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding: 0 0">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;padding-top:50px">公链团队成立</h3>
											<p style="margin: 0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;新加坡基金会正式发起Wisdom Public Chain项目，公链团队正式建立。
												<br></p>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><h2 style="color:#ffffff">2017年大事记</h2></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h4 style="color:#ffffff;margin:0 0 0 0px;" align="left">公链团队成立</h4>
											<p align="left" style="margin: 0 0 5px 0px">新加坡基金会正式发起Wisdom Public Chain项目，公链团队正式建立。
												</p>
											<h4 align="left" style="color:#ffffff;margin:0 0 0 0px;">登陆香港尚亚交易所</h4>
											<p align="left">WDC通证登陆香港尚亚交易所交易。</p>
											
										</div>
									</div>
								</li>
								
								
								<li class="rl"  id="li_1" style="padding: 0 0 0;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding: 0 0">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">登陆香港尚亚交易所</h3>
											<p style="margin: 0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC通证登陆香港尚亚交易所交易。
												<br></p>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><h1 style="color:#ffffff"></h1></figure>
										</div>
									</div>
									
								</li>
								
								
								
								<!-- 2018大事记 -->
								<li class="rl" id="li_2" style="padding: 0 0 0;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding:40px 0 0 0px">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">泰国曼谷建立全球社区运营中心</h3>
											<p style="margin: 0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC社群节点突破1W
												<br>
												<i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC通证合约系统运行（链上合约）
												</p>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><h2 style="color:#ffffff;">2018年大事记</h2></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h4 style="color:#ffffff;margin:0px 0 0 0px;" align="left">全球社区运营中心</h4>
											<p align="left" style="margin:0 0 5px 0px;">泰国曼谷建立全球社区运营中心
												<br>
											WDC社群节点突破1W
												<br>
												WDC通证合约系统运行（链上合约）
												
												</p>
												
												
												<h4 align="left" style="color:#ffffff;margin:0 0 0 0px;">WDC登录香港CEO交易所</h4>
												<P align="left" style="margin:0 0 5px 0px;">WDC发布开源代码库
												<br>WDC社群节点突破5W
												</P>
												<h4  align="left" style="color:#ffffff;margin:0 0 0 0px;">全球社区举行区块链技术实体经济应用研讨会（重庆）</h4>
												<p align="left" style="margin:0 0 5px 0px;">签约多家实体合作企业</p>
												<h4 align="left" style="color:#ffffff;margin:0 0 0 0px;">区块链技术赋能全球实体经济WDC全球社区年度峰会</h4>
												<p align="left" style="margin:0 0 5px 0px;">海口举行区块链技术赋能全球实体经济高端论坛暨WDC全球社区年度峰会</p>
												
											
										</div>
									</div>
								</li>
								
								<li class="rl"  id="li_1" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;    margin-bottom: 0px;">
										<div class="contents-r" style="padding:0 0 0 0px">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">WDC登录香港CEO交易所</h3>
											<p style="margin:0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC发布开源代码库
												<br>
												<i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC社群节点突破5W
												</p>
											
										</div>
									</div>
									
								</li>
								
								
								<li class="rl"  id="li_1" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding: 0 0 0 0px;">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">全球社区举行区块链技术实体经济应用研讨会（重庆）</h3>
											<p><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;签约多家实体合作企业
												<br>
												
												</p>
											
										</div>
									</div>
									
									
								</li>
								
								<li class="rl"  id="li_1" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding:0 0 0 0px;">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">区块链技术赋能全球实体经济WDC全球社区年度峰会</h3>
											<p><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;海口举行区块链技术赋能全球实体经济高端论坛暨WDC全球社区年度峰会
												<br>
												
												</p>
											
										</div>
									</div>
									
									
								</li>
								
								
								<!-- 2019大事记 -->
								<li class="rl" id="li_3" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding:40px 0px 0px;">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">博鳌论坛梧桐夜话</h3>
											<p style="margin:0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC作为区块链领域的技术领军，在全球范围内，唯一受邀参加博鳌论坛梧桐夜话。
												<br>
												<i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC社区节点突破8万。
												</p>
											
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><h2 style="color:#ffffff">2019年大事记</h2></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h4 align="left" style="color:#ffffff;margin:0 0 0 0px;">博鳌论坛梧桐夜话</h4>
												<p align="left" style="margin:0 0 5px 0px;">WDC作为区块链领域的技术领军，在全球范围内，唯一受邀参加博鳌论坛梧桐夜话。
												<br>WDC社区节点突破8万。
												</p>
												
												<h4 align="left" style="color:#ffffff;margin:0px 0 0 0px;">登录BITZ网交易所</h4>
											<p align="left" style="margin:0 0 5px 0px;">WDC社群节点突破10万。</p>
											<h4 align="left" style="color:#ffffff;margin:0px 0 0 0px;">主链启动运行</h4>
											<p align="left" style="margin:0 0 5px 0px;">7月8日WDC主链成功启动运行。同时全球首创的主链系统自带应用“链上合约”场景正式运行。
											<br>
											7月18日WDC主链钱包开放下载使用。
											</p>
												
												
											
										</div>
									</div>
								</li>
								
								<li class="rl"  id="li_1" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;margin-bottom: 0px;">
										<div class="contents-r" style="padding:0 0 0 0px;">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">登录BITZ网交易所</h3>
											<p style="margin:0 0 10px;"><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;WDC社群节点突破10万。
												<br>
												
												</p>
											
										</div>
									</div>
									
									
								</li>
								
								<li class="rl"  id="li_1" style="padding:0 0 0 0px;">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r" style="padding:0 0 0 0px;">
											<h3 style="color:#FFFFFF;margin: 0 0 5px;">主链启动运行</h3>
											<p><i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;7月8日WDC主链成功启动运行。同时全球首创的主链系统自带应用“链上合约”场景正式运行。
												<br>
												<i style="margin:0 0 0 -12px;width:11px;height:11px;border-radius:50%;background: rgba(255, 255, 255, 0.36);display: inline-block"></i>&nbsp;7月18日WDC主链钱包开放下载使用。
												
												</p>
											
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
	
	
	<section class="team-area pd-t100 pd-b50">
		<div id="particles-team">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="section-heading2">
							<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">项目概述</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
										<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/1.png" style="width: 120px;height: 120px;" align="middle">
										</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智慧城市</p>

										<p style="text-align:center">通过基于区块链的价值网络构建，连接城市智能设备，例如智能充电、智能票据、智能交通以及身份证明，等等。在数据共享的基础上实现数据所有权的计量和数据身份证明。 </p>
									
									
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/2.png" style="width: 120px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">数据资产</p>

										<p style="text-align:center">通过用户物联设备所产生的数据是用户数字资产，WDC为用户数字资产提供全网公证，并通过资产转移合约实现数字资产的转移。这是用户数据资产化的重要应用。 </p>
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/3.png" style="width: 120px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">智能家居</p>

										<p style="text-align:center">物联网时代，每个家庭都会拥有越来越多的智能家居，网络电视、无线音箱、智能遥控器、智能健身设备等。通过WDC可以构建智能数据的一体化管理终端，方便管理众多的物联设备。 </p>
								</div>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="team-list">
							<div class="conte">
								<div class="dbox">
									<center style="margin-bottom: 20px;">
										<img src="${APP_PATH}/static/mod/images/mod/4.png" style="width: 135px;height: 120px;" align="middle">
									</center>
										<p style="text-align:center;font-size:26px;font-weight:400;color: #ffffff;">医疗数据共享</p>

										<p style="text-align:center">通过部署链上的医疗数据共享应 用，在保证个人身份隐私的前提下，连接各个医疗机构的数据，减少 医疗机构间系统集成的昂贵成本，并使数据可以在全球范围内具备快 速的传播能力。 </p>
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
							<h2>技术概述</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="featured-lists">
							<ul>
								<li id="js_li_1">
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>安全脚本系统</h2>
											<p>对于底层调用以及数据资产相关操作，WDC提供一组调用库以供外部程序实现，在整个脚本指令的设计中，保持受限的编程能力， 对于WDC来说，功能场景是特定的，因此脚本指令的功能也是特定的。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:280px; height:210px;"src="${APP_PATH}/static/mod/images/mod/20.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs  wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>安全脚本系统 </h2>
											<p>对于底层调用以及数据资产相关操作，WDC提供一组调用库以供外部程序实现，在整个脚本指令的设计中，保持受限的编程能力， 对于WDC来说，功能场景是特定的，因此脚本指令的功能也是特定的。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情 </a>
										</div>
									</div>
								</li>
								
								<li class="rl" id="js_li_2">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>应用开发模板</h2>
											<p>WDC支持通过脚本程序开发业务应用，并部署在链上，基于链的开发与传统面向服务器的开发有很大的不同，同时开发过程会调用到开放的API，为了方便技术人员开发应用，降低部署门槛，同时也为了能够让更多社区成员参与WDC的应用开发，在主链的应用支持模块中，将提供标准的应用模板支持。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/23.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>应用开发模板</h2>
											<p>WDC支持通过脚本程序开发业务应用，并部署在链上，基于链的开发与传统面向服务器的开发有很大的不同，同时开发过程会调用到开放的API，为了方便技术人员开发应用，降低部署门槛，同时也为了能够让更多社区成员参与WDC的应用开发，在主链的应用支持模块中，将提供标准的应用模板支持。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
								</li>
								
								<li id="js_li_3">
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>支持动态共识</h2>
											<p>构建动态共识是WDC维护社区公平的重要机制。对于面向公众的数据资产服务系统，系统的核心机制的建立将完全交付到社区。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/22.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>支持动态共识</h2>
											<p>构建动态共识是WDC维护社区公平的重要机制。对于面向公众的数据资产服务系统，系统的核心机制的建立将完全交付到社区。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
								</li>
								
								<li class="rl" id="js_li_4">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>内置多链</h2>
											<p>WDC在生态的设计中，将会支持从资产通证定义到资产数据的应用等多层次的业务功能体系，整个网络系统将会按照业务功能的划 分而以多链的形态来支持，提供状态通道隔离不同的业务链，每一条业务链运行特定的应用，业务链与主链之间保持锚定，并且与主链运 行在同一个节点上。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/21.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>内置多链</h2>
											<p>WDC在生态的设计中，将会支持从资产通证定义到资产数据的应用等多层次的业务功能体系，整个网络系统将会按照业务功能的划 分而以多链的形态来支持，提供状态通道隔离不同的业务链，每一条业务链运行特定的应用，业务链与主链之间保持锚定，并且与主链运 行在同一个节点上。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
								</li>
								<!-- 2019-11-22 -->
								<li id="js_li_5">
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>区块算法</h2>
											<p>基于双线性配对的可验证签名聚合算法，可以有效减少区块大小。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/qk.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>区块算法</h2>
											<p>基于双线性配对的可验证签名聚合算法，可以有效减少区块大小。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
								</li>
								
								<li class="rl" id="js_li_6">
									<div class="col-sm-6 pd-0 floatright mr-b30 hidden-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>身份认证</h2>
											<p>兼顾监管需求和用户隐私，多因子去中心化身份认证系统，创建一个在监管条件下的数字身份的生态系统。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="imgs-r">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/sf.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 floatright mr-b30 visible-xs wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
										<div class="contents-r">
											<h2>身份认证</h2>
											<p>兼顾监管需求和用户隐私，多因子去中心化身份认证系统，创建一个在监管条件下的数字身份的生态系统。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
								</li>
								<li id="js_li_7">
									<div class="col-sm-6 pd-0 hidden-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>数据共享</h2>
											<p>结构化数据存储和数据安全性检查，数据的确权和溯源，数据的隐私保护和多种授权方式，安全的数据流转和确权验证机制。
												<br></p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
										</div>
									</div>
									<div class="col-sm-6 pd-0 wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="imgs-l">
											<figure><img style="width:280px; height:210px;" src="${APP_PATH}/static/mod/images/mod/data.png" alt="" /></figure>
										</div>
									</div>
									<div class="col-sm-6 pd-0 visible-xs wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
										<div class="contents-l mr-b30">
											<h2>数据共享</h2>
											<p>结构化数据存储和数据安全性检查，数据的确权和溯源，数据的隐私保护和多种授权方式，安全的数据流转和确权验证机制。
												</p>
											<a href="${APP_PATH }/user/information_1" class="btn1">更多详情</a>
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
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">发展规划</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:90px;height:90px;" src="${APP_PATH}/static/mod/images/mod/6.png" alt=""></span>
							<h3>证书服务 <br>Certificate </h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/7.png" alt=""></span>
							<h3>内容物确认权 <br>Content confirmation right</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.6s" style="visibility: visible; animation-duration: 1.6s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:95px;height:95px;" src="${APP_PATH}/static/mod/images/mod/7.png" alt=""></span>
							<h3>溯源 <br>Tracing to the source</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width:100px;height:100px;" src="${APP_PATH}/static/mod/images/mod/8.png" alt=""></span>
							<h3>链广告 <br>Chain advertisement</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/10.png" alt=""></span>
							<h3>资产定义 <br>Asset definition</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/9.png" alt=""></span>
							<h3>结算兑换 <br>Settlement and exchange</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img src="${APP_PATH}/static/mod/images/icons/6.png" alt=""></span>
							<h3>闪电网络 <br>Lightning network</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width: 120px;height:80px;"src="${APP_PATH}/static/mod/images/mod/9.png" alt=""></span>
							<h3>资产交换机 <br>Asset switch</h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="project-list wow  fadeIn animated" data-wow-duration="2.4s" style="visibility: visible; animation-duration: 2.4s; animation-name: fadeIn;">
						<div class="content">
							<span class="icons"><img style="width: 100px;height: 100px;"src="${APP_PATH}/static/mod/images/mod/11.png" alt=""></span>
							<h3>链商城 <br>Chain mall</h3>
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
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">核心产品</h2>
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
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">常见问题</h2>
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
												<a data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftone" aria-expanded="false">- WDC采取什么样的共识机制？</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftone" class="panel-collapse collapse in" aria-expanded="true" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>WDC的共识机制有一个迭代的发展过程，在第一阶段会采用BFT+VRF + PoS的机制，也就是工作量证明+股权证明的混合机制；在第二阶段会采用内置多链的方式，主链继续保持BFT+VRF+ PoS的方式，并根据一链一应用的设计原则扩展侧链，侧链采用PoS的方式；第三阶段会支持社区投票决策模型，支持动态调整共识机制。</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading horn">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftTwo" aria-expanded="false">- WDC的核心算法是什么？</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>在主链的设计实现过程中，对于各个技术栈的实现，都有其核心算法，其中共识机制采用BFT+VRF+ PoS的算法机制；公开算法采用椭圆曲线算法中的ed25519；区块链以及事务哈希采用SHA3。</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading bell">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftThree" aria-expanded="false">- WDC现阶段的孵化器共识机制，以后主链上线后将会怎么样继续延展？</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>现阶段的孵化器实际上包含了部分WDC所采用的PoS共识设计策略，同时也是wdc的发行与分配策略，在主链的共识设计阶段，会在孵化器的策略基础上进行平滑的引入设计，对于WDC来说，社区的利益是第一的，维护一个社区共识的经济模型，有利于WDC未来生态的长期可持续发展。</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /.panel-default -->
							<div class="panel panel-default sidebar_pannel">
								<div class="panel-heading bell">
									<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftFour" aria-expanded="false">- 未来WDC会有哪些应用部署？</a>
											</h4>
								</div>
								<div id="collapseFifteenLeftFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
									<div class="panel-body">
										<div class="panel_cont">
											<p>WDC的应用场景是很明确的，那就是实现生活设备互联以及生活信息互联，因此可以有如下的应用部署：</p>
 											<p>1），个人身份信息验证</p>
 											<p>2），个人设备信息的存证</p>
 											<p>3），物联电商平台</p>
 											<P>4），基于链的通证社交</P>
 											<p>当然，应用部署并不会随之改变，从而使主链的发展，我们会更多让社区来参与应用建设，提高人们生活的便捷性与质量。</p>
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
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">联系我们</h2>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow  fadeIn animated"  data-wow-duration="1.0s">
					<div class="btc_cont_form_wrapper">
						<div class="row">
							<form id="send_form">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper">
									<input type="text" placeholder="姓名" name="name">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper btc_cont_form_wrapper2">
									<input type="text" placeholder="邮箱" name="email">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="btc_cont_form_wrapper3">
									<textarea rows="6" placeholder="信息" name="mission"></textarea>
									<input type="hidden" name="edition" value="Chinse">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="view-btn btc_contt_btn">
								
									<a href="#" onclick="send()">发送</a>
									
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
						<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">合作伙伴</h2>
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
								<h2 class="wow  fadeIn animated" data-wow-duration="1.0s" style="visibility: visible; animation-duration: 1.0s; animation-name: fadeIn;">关于我们</h2>
								<ul>
									<li id="weibo1" class="wow  fadeIn animated" data-wow-duration="1.3s" style="visibility: visible; animation-duration: 1.3s; animation-name: fadeIn;"><a target="_blank" href="https://weibo.com/WisdomChain"><i class="fa fa-weibo"></i></a></li>
									<li id="twitter1" class="wow  fadeIn animated" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5; animation-name: fadeIn;"><a target="_blank" href="https://twitter.com/Wisdom_Chain"><i class="fa fa-twitter"></i></a></li>
									<li id="telegram1" class="wow  fadeIn animated" data-wow-duration="1.9s" style="visibility: visible; animation-duration: 1.9s; animation-name: fadeIn;"><a target="_blank" href="https://t.me//WisdomPublibcChain"><i class="fa fa-send-o"></i></a></li>
									<li id="weixin1" class="wow  fadeIn animated" data-wow-duration="2.1s" style="visibility: visible; animation-duration: 2.1s; animation-name: fadeIn;"><a  id="bottom_wx1"  onmouseover="mOver3()"  onmouseout="mOut3()" href="javascript:void(0)"><i class="fa fa-weixin"></i></a></li>
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
								<li><a target="_blank" href="https://github.com/WisedomChainGroup/WhitePaper">白皮书</a></li>
								<li><a target="_blank" href="#">服务条款</a></li>
								<li><a target="_blank" href="#">隐私政策</a></li>
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
	var cn="cn";
	product(cn);
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
function product(cn){
	
			$.ajax({
				url:"${APP_PATH}/products/"+cn,
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
