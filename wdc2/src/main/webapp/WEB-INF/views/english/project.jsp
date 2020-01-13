<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>Project</title>
		<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/project.css" />
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<script src="${APP_PATH }/static/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<style>
			a.weixin {
				position: relative;
			}
	
			.weixin img.qrcode {
				position: absolute;
				z-index: 99;
				top: -135px;
				right: -28px;
				width: 7.5rem;
				max-width: none;
				height: 7.5rem;
				transform: scale(0);
				transform-origin: top right;
				opacity: 0;
				border: .3125rem solid #0085ba;
				border-radius: .25rem;
				-webkit-transition: all .4s ease-in-out;
				-o-transition: all .4s ease-in-out;
				transition: all .4s ease-in-out;
	
			}
			
			.weixin:hover img.qrcode {
				transform: scale(1);
				opacity: 1;
		}
		
	</style>
	</head>
	<body>
		<div class="pc_nav_box">
			<div class="pc_nav">

				<div class="logo_wrapper" style="width:220px">
					<a href="${pageContext.servletContext.contextPath}/english/home">
					<img src="${APP_PATH }/static/img/logo-phone.png" alt="" class="logo">
					 <h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>

				</div>
				<div class="menu_wraper">
					<div class="menu_item "><a href="${pageContext.servletContext.contextPath}/english/home"><span>Home</span></a></div>
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/english/project"><span>Project</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/use"><span>Use</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/developer"><span>Developer</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/information"><span>Information</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/question"><span>About</span></a></div>
					<div class="menu_language"><a href="${pageContext.servletContext.contextPath}/user/home"><span>CN</span></a></div>
				</div>


			</div>
		</div>


		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="img/logo-phone.png">
				<h5>Wisdom Chain</h5>
			</div>
			<div class="mobile_language">
				<i></i>
				<span><a href="${pageContext.servletContext.contextPath}/user/home">CN</a></span>
				<i class="mobile_action" id="mobile_action" onclick="onClickTest()"></i>
				<input hidden="hidden" value="noshow" id="myhide" />
			</div>
		</header>

		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/home"><span>Home</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/project"><span>Project</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/use"><span>Use</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/developer"><span>Developer</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/information"><span>Information</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/english/question"><span>About</span></a>
			</div>
		</div>

		<div class="slides-box">
			<ul class="slides">
				<input type="radio" name="radio-btn" id="img-1" checked>
				<li class="slide-container">
					<div class="slide">
						<img src="img/1.jpg">
					</div>
					<div class="nav">
						<label for="img-6" class="prev">&#x2039;</label>
						<label for="img-2" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-2">
				<li class="slide-container">
					<div class="slide">
						<img src="img/2.jpg">
					</div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label>
						<label for="img-3" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-3">
				<li class="slide-container">
					<div class="slide">
						<img src="img/3.jpg">
					</div>
					<div class="nav">
						<label for="img-2" class="prev">&#x2039;</label>
						<label for="img-4" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-4">
				<li class="slide-container">
					<div class="slide">
						<img src="img/4.jpg">
					</div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label>
						<label for="img-5" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-5">
				<li class="slide-container">
					<div class="slide">
						<img src="img/5.jpg">
					</div>
					<div class="nav">
						<label for="img-4" class="prev">&#x2039;</label>
						<label for="img-6" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-6">
				<li class="slide-container">
					<div class="slide">
						<img src="img/6.jpg">
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

		<div class="mobile_content">
			<div class="mobile_jianjie">
				<div class="wdc_jianjie wid-1200" id="p1">
					<h5>Project</h5>
					<p class="p-1">WDC is devoted to the intelligent data interconnection of the basic block chain ecosystem. It is a new type of intelligent contract communication platform to realize the Internet of Things and life information interconnection of living equipment.</p>
					


				</div>
			</div>
		</div>


		<footer class="footer">
			<div class="footer_icon">
					<a href="https://weibo.com/WisdomChain"><img src="${APP_PATH }/static/img/weibo.png" /></a>
					<a class="social weixin" href="javascript:"> <img class="qrcode" src="${APP_PATH }/static/img/wechat1.png" /> 
					<img  src="${APP_PATH }/static/img/weixin.png" />
					</a>	
					<a href="https://twitter.com/Wisdom_Chain"><img src="${APP_PATH }/static/img/tuite.png" /></a>
					<a href="https://t.me//WisdomPublibcChain"><img src="${APP_PATH }/static/img/telegram.png" /></a>
					<a href="https://github.com/WisedomChainGroup"><img src="${APP_PATH }/static/img/gt.png" /></a>
					<a href="https://www.facebook.com/WisdomPublicChain/?modal=admin_todo_tour"><img src="${APP_PATH }/static/img/face.png" /></a>
				</div>
			<div class="footer_logo">
				<img src="${APP_PATH}/static/img/logo.png" />

			</div>
			<p>wisdom chain</p>

			<p>2017-2019© WDC foundation, all rights  reserved.</p>
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
			var en="en";
			project(en);
			  
			
			
			
		});
//项目概述
		function project(en){
					
					$.ajax({
						url:"${APP_PATH}/projects/"+en,
						type:"GET",
						success:function(result) {
							
								$.each(result.extend.projects,function(index,item){
									
									
									
									
									var div_1=$("<div></div>").addClass("container_box");
									var div_2=$("<div></div>").addClass("container");
									var a_1=$("<a></a>").attr("href",item.address);
									a_1.css("border","0");
									var img_1=$("<img>").attr("src",item.img);
									var h4=$("<h4></h4>").append(item.title);
									var i_1=$("<i></i>").addClass("line");
									var p_1=$("<p></p>").append(item.descr).css("height","200px");
									div_1.append(div_2.append(a_1.append(img_1)).append(h4).append(i_1).append(p_1)).appendTo("#p1");
									
									})
								//var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
								//document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 
							
								
						}
							
					})
					
				};
		
		
		</script>


	</body>
</html>
