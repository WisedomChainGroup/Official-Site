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
<title>资讯信息</title>
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
								<li><a href="https://scan.wisdchain.com/cn/index.html" style="font-size: 18px;"><strong>区块链浏览器</strong></a></li>
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
									<li><a  href="https://scan.wisdchain.com/cn/index.html">区块链浏览器</a></li>
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


		<div class="row" >
		<span style="visibility:hidden;">&nbsp;获取中</span>
			<nav aria-label="breadcrumb">
  			<ol class="breadcrumb" style="background:#0d469f ">
		 		<li  class="breadcrumb-item active"><a id="information_title" href="#" onclick="go5('')" style="color: rgba(255, 255, 255, 0.52)">最新资讯</a></li>
				<li   class="breadcrumb-item " aria-current="page "> <a id="qkl_title" onclick="go6('')" href="#" >区块链知识</a></li>
  			</ol>
			</nav>
		
		</div>
		<div class="row" id="information_1">
			
		 <!--  
		 <div class="media" style="margin-left: 10px;">
			<div class="media-left">
			  <img style="width: 300px;height: 180px;" src="https://card-wisechain.oss-cn-hongkong.aliyuncs.com/wisechainbg/1569808588DQXG" class="media-object" style="width:60px">
			</div>
			<div class="media-body">
			  <a href="#"><h4 class="media-heading">Wisdom Public Chain 开发周报（2019.9.21）</h4></a>
			  <p style="color:rgba(255, 255, 255, 0.52) ">/发表于 2019-09-30</p>
			</div>
	  	</div>
  		<hr style="border-top: 1px solid rgba(57,100,208,1);">
  		
	  	<div class="media" style="margin-left: 10px;">
			<div class="media-left">
			  <img style="width: 300px;height: 180px;" src="https://static.runoob.com/images/mix/img_avatar.png" class="media-object" style="width:60px">
			</div>
			<div class="media-body"> 
			  <a href="#"><h4 class="media-heading">左对齐</h4></a>
			  <p style="color:rgba(255, 255, 255, 0.52) ">这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
			</div>
	  	</div>
	  	<hr style="border-top: 1px solid rgba(57,100,208,1);">
	  	-->
	  	<!-- 显示分页信息 -->
		
	  	<!-- <center>
	  	<nav aria-label="Page navigation">
			<ul class="pagination">
		 		<li>
		      		<a href="#" aria-label="Previous">
		        		<span aria-hidden="true">&laquo;</span>
		      		</a>
				</li>
			    <li><a href="#">1</a></li>
				    <li class="disabled"><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
			      	<a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
			      	</a>
		    	</li>
			</ul>
		</nav>
		</center> -->
			
		</div>
	<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area">
				
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

<!---<script src="${APP_PATH}/static/mod/js/Youtube.min.js"></script>--->
<!-- main js -->
<script src="${APP_PATH}/static/mod/js/main.js"></script>
<script>
$(document).ready(function () {
	to_page(1);
	//m1();
	//m2();


		
if(window.location.hostname=="www.wisdchain.io"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
		
	}
	if(window.location.hostname=="www.wisdchain.com"){
		$("#forum_1").attr("href","http://tech.wisdchain.com/");
		$("#forum_2").attr("href","http://tech.wisdchain.com/");
	}

	});
	
	function m1(){
		var d1='<div class="media" style="margin-left: 10px;">';
		var d2='<div class="media-left">';
		var img1='<img style="width: 300px;height: 180px;" src="https://card-wisechain.oss-cn-hongkong.aliyuncs.com/wisechainbg/1569808588DQXG" class="media-object" style="width:60px">';
		var d3='</div><div class="media-body">';
		var a1='<a href="#"><h4 class="media-heading">Wisdom Public Chain1 开发周报（2019.9.21）</h4></a>';
		var p1='<p style="color:rgba(255, 255, 255, 0.52) ">/发表于 2019-09-30</p>';
		var hr1='</div></div><hr style="border-top: 1px solid rgba(57,100,208,1);">';
		var v1=d1+d2+img1+d3+a1+p1+hr1;
		//document.getElementById("information_1").innerHTML=v1;
		$("#information_1").append(v1);
		//alert("1");
	};
	function m2(){
		var d1='<div class="media" style="margin-left: 10px;">';
		var d2='<div class="media-left">';
		var img1='<img style="width: 300px;height: 180px;" src="https://card-wisechain.oss-cn-hongkong.aliyuncs.com/wisechainbg/1569808588DQXG" class="media-object" style="width:60px">';
		var d3='</div><div class="media-body">';
		var a1='<a href="#"><h4 class="media-heading">Wisdom Public Chain 开发周报2（2019.9.21）</h4></a>';
		var p1='<p style="color:rgba(255, 255, 255, 0.52) ">/发表于 2019-09-30</p>';
		var hr1='</div></div><hr style="border-top: 1px solid rgba(57,100,208,1);">';
		var v1=d1+d2+img1+d3+a1+p1+hr1;
		//document.getElementById("information_1").innerHTML=v1;
		$("#information_1").append(v1);
		//alert("1");
	};
	//cn_1  分页 查询 区块链知识
	function to_page1(pn){
		var v1="cn_1";
		$("#information_1").empty();
		$.ajax({
			url:"${APP_PATH}/informations/"+v1,
			data:"pn="+pn,
			type:"GET",
			success:function(result) {
				
				$.each(result.extend.pageInfo.list,function(index,item){
					
					var d1='<div class="media" style="margin-left: 10px;">';
					var d2='<div class="media-left">';
					var img1=' <img style="width: 300px;height: 180px;" src=" '+item.img+' "class="media-object" style="width:60px"> ';
					var d3='</div><div class="media-body">';
					var a1='<a href="#" onclick="go1('+item.id+' )"> <h4 class="media-heading" >'+item.title+'</h4></a>';
					var p1='<p style="color:rgba(255, 255, 255, 0.52) ">'+item.author+'/'+'发表于'+item.time+'</p>';
					var hr1='</div></div><hr style="border-top: 1px solid rgba(57,100,208,1);">';
					var v1=d1+d2+img1+d3+a1+p1+hr1;
					//document.getElementById("information_1").innerHTML=v1;
					$("#information_1").append(v1);
					})
					
					//构建分页条信息
					build_page_nav1(result);			
			}		
		})	
	};
	//cn 分页 查询 资讯
	function to_page(pn){
		var v1="cn";
		$("#information_1").empty();
		$.ajax({
			url:"${APP_PATH}/informations/"+v1,
			data:"pn="+pn,
			type:"GET",
			success:function(result) {
				
				$.each(result.extend.pageInfo.list,function(index,item){
					
					var d1='<div class="media" style="margin-left: 10px;">';
					var d2='<div class="media-left">';
					var img1=' <img style="width: 280px;height: 180px;" src=" '+item.img+' "class="media-object" style="width:60px"> ';
					var d3='</div><div class="media-body">';
					var a1='<a href="#" onclick="go1('+item.id+' )"> <h4 class="media-heading" >'+item.title+'</h4></a>';
					var p1='<p style="color:rgba(255, 255, 255, 0.52) ">'+item.author+'/'+'发表于'+item.time+'</p>';
					var hr1='</div></div><hr style="border-top: 1px solid rgba(57,100,208,1);">';
					var v1=d1+d2+img1+d3+a1+p1+hr1;
					//document.getElementById("information_1").innerHTML=v1;
					$("#information_1").append(v1);
					
					
					})
					
					//构建分页条信息
					build_page_nav(result);
					
			}
				
		})
		
	};
	//cn 分页条信息
	function build_page_nav(result){
		//page_nav_area
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination");
		//构建元素
		var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
		var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
		if(result.extend.pageInfo.hasPreviousPage == false){
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		}else{
			//为元素添加点击翻页的事件
			firstPageLi.click(function(){
				to_page(1);
			});
			prePageLi.click(function(){
				to_page(result.extend.pageInfo.pageNum -1);
			});
		}
		var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
		var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
		if(result.extend.pageInfo.hasNextPage == false){
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		}else{
			nextPageLi.click(function(){
				to_page(result.extend.pageInfo.pageNum +1);
			});
			lastPageLi.click(function(){
				to_page(result.extend.pageInfo.pages);
			});
		}
		//添加首页和前一页 的提示
		ul.append(firstPageLi).append(prePageLi);
		//1,2，3遍历给ul中添加页码提示
		$.each(result.extend.pageInfo.navigatepageNums,function(index,item){
			
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if(result.extend.pageInfo.pageNum == item){
				numLi.addClass("active");
			}
			numLi.click(function(){
				to_page(item);
			});
			ul.append(numLi);
		});
		//添加下一页和末页 的提示
		ul.append(nextPageLi).append(lastPageLi);
		//把ul加入到nav
		var navEle = $("<nav></nav>").append(ul);
		navEle.appendTo("#page_nav_area");
	};
	//cn_1 分页条信息 1
	function build_page_nav1(result){
		//page_nav_area
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination");
		//构建元素
		var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
		var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
		if(result.extend.pageInfo.hasPreviousPage == false){
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		}else{
			//为元素添加点击翻页的事件
			firstPageLi.click(function(){
				to_page1(1);
			});
			prePageLi.click(function(){
				to_page1(result.extend.pageInfo.pageNum -1);
			});
		}
		var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
		var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
		if(result.extend.pageInfo.hasNextPage == false){
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		}else{
			nextPageLi.click(function(){
				to_page1(result.extend.pageInfo.pageNum +1);
			});
			lastPageLi.click(function(){
				to_page1(result.extend.pageInfo.pages);
			});
		}
		//添加首页和前一页 的提示
		ul.append(firstPageLi).append(prePageLi);
		//1,2，3遍历给ul中添加页码提示
		$.each(result.extend.pageInfo.navigatepageNums,function(index,item){
			
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if(result.extend.pageInfo.pageNum == item){
				numLi.addClass("active");
			}
			numLi.click(function(){
				to_page1(item);
			});
			ul.append(numLi);
		});
		//添加下一页和末页 的提示
		ul.append(nextPageLi).append(lastPageLi);
		//把ul加入到nav
		var navEle = $("<nav></nav>").append(ul);
		navEle.appendTo("#page_nav_area");
	};
	function go5(){
		to_page(1);	
		
			$("#information_title").css("color","rgba(255, 255, 255, 0.52)");
			$("#qkl_title").css("color","");
		
	};
	function go6(){
		to_page1(1);
		$("#information_title").css("color","");
		$("#qkl_title").css("color","rgba(255, 255, 255, 0.52)");
	};
	
	function go1(ttt){
		
		window.location.href="${pageContext.servletContext.contextPath}/user/informationDetail_1/?id="+ttt ;
	}
</script>



</body>
</html>