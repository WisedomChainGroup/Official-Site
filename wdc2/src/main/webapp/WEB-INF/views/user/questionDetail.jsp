<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>关于我们</title>
		<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/article.css" />
		
		<link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="${APP_PATH }/static/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
					<a href="${pageContext.servletContext.contextPath}/user/home">
					<img src="${APP_PATH}/static/img/logo-phone.png" alt="" class="logo">
					<h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>

				</div>
				<div class="menu_wraper">
					<div class="menu_item "><a href="${pageContext.servletContext.contextPath}/user/home" style="color:#232323 "><span>首页</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/project" style="color:#232323 "><span>项目介绍</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/use" style="color:#232323 "><span>应用</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/developer" style="color:#232323 "><span>开发者</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/information" style="color:#232323 "><span>最新资讯</span></a></div>
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/user/question" style="color:#232323 "><span>关于我们</span></a></div>
					<div class="menu_language"><a href="${pageContext.servletContext.contextPath}/english/home" style="color:#232323 "><span>EN</span></a></div>
				</div>


			</div>
		</div>


		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="${APP_PATH}/static/img/logo-phone.png">
				<h5>Wisdom Chain</h5>
			</div>
			<div class="mobile_language">
				<i></i>
				<span><a href="${pageContext.servletContext.contextPath}/english/home" style="color:#232323 ">EN</a></span>
				<i class="mobile_action" id="mobile_action" onclick="onClickTest()"></i>
				<input hidden="hidden" value="noshow" id="myhide" />
			</div>
		</header>

		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/home"><span>首页</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/project"><span>项目介绍</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/use"><span>应用</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/developer"><span>开发者</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/information"><span>最新资讯</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/question"><span>关于我们</span></a>
			</div>
		</div>

		<div class="mobile_content">

			

			<div class="box">

				<div class="wdc_container blog_list wid-1200" id="information1">
				
					<p id="descr1"><p>

					</div>
					
				</div>
			</div>

		<div class="post_container">
			<div class="post_bg wid-1200">
				<div class="post_left">
					<div class="information" id="title1"></div>
					<div class="post_author"><span id="author1"> </span><span id="time1">  发表于/  </span></div>
				</div>
				<div class="post_content question_container">
					<div class="content_wrapper" style="height: auto;">
						<section>
							
							<p id="descr_1"></p>
							
						</section>
					</div>

				</div>
			</div>
		</div>






		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href=""><span>首页</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href=""><span>项目介绍</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href=""><span>应用</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href=""><span>开发者</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href=""><span>最新动态</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href=""><span>关于我们</span></a>
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

			<p>2017-2019© WDC基金会 版权所有</p>
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
			var url = location.search;
			var id=url.slice(4);
			getQuestion(id);
			
			
		});
			
		
		
		
		
		function getQuestion(id){
	
			$.ajax({
				url:"${APP_PATH}/question/"+id,
				type:"GET",
				success:function(result){
					//console.log(result);
					var data = result.extend.question;
					
					$("#descr_1").append(data.descr);
					$("#title1").append(data.title);
					$("#author1").append(data.author);
					$("#time1").append(data.time);
					
				}
			});
		}
		
		
		
		</script>


	</body>
</html>
