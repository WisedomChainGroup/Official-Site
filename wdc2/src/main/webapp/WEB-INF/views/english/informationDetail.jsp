<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>Information deatil</title>	<%pageContext.setAttribute("APP_PATH", request.getContextPath());%>
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/article.css" />
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
					<a href="${pageContext.servletContext.contextPath}/english/home">
					<img src="${APP_PATH }/static/img/logo-phone.png" alt="" class="logo">
					 <h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>

				</div>
				<div class="menu_wraper">
					<div class="menu_item "><a href="${pageContext.servletContext.contextPath}/english/home" style="color:#232323 "><span>Home</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/project" style="color:#232323 "><span>Project</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/use" style="color:#232323 "><span>Use</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/developer" style="color:#232323 "><span>Developer</span></a></div>
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/english/information" style="color:#232323 "><span>Information</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/question" style="color:#232323 "><span>About</span></a></div>
					<div class="menu_language"><a href="${pageContext.servletContext.contextPath}/user/home" style="color:#232323 "><span>CN</span></a></div>
				</div>


			</div>
		</div>
		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="${APP_PATH}/static/img/logo-phone.png">
				<h5>Wisdom Chain</h5>
			</div>
			<div class="mobile_language">
				<i></i>
				<span><a href="${pageContext.servletContext.contextPath}/user/home" style="color:#232323 ">CN</a></span>
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
		<div class="post_container">
			<div class="post_bg wid-1200">
				<div class="post_left">
					<div class="information" id="title1"></div>
					<div class="post_author"><span id="author1"> </span><span id="time1"></span></div>
				</div>
				<div class="post_content question_container">
					<div class="content_wrapper" style="height: auto;">
						<section>
						
							<p id="descr1"></p>
							
						</section>
					</div>

				</div>
			</div>
		</div>



		<footer class="footer">
			<div class="footer_content wid-1200">
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
				
				var url = location.search;
				var id=url.slice(4);
				getInformation(id);
				
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
			
			
			function getInformation(id){
				
				$.ajax({
					url:"${APP_PATH}/information/"+id,
					type:"GET",
					success:function(result){
						//console.log(result);
						var data = result.extend.information;
						$("#title1").append(data.title);
						$("#author1").append(data.author+"  / published in   ");
						$("#time1").append(data.time);
						//$("#img1").attr("src","${pageContext.servletContext.contextPath}/images/information/"+data.img);
						$("#descr1").append(data.descr);
					}
				});
			}
		</script>



	</body>
</html>
