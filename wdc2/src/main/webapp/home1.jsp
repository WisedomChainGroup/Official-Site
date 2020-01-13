<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WDC</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud
 -->
<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH }/static/css/index.css" />
		<script src="${APP_PATH }/static/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
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
				<div class="logo_wrapper" style="width:220px;">
				<a href="${pageContext.servletContext.contextPath}/english/home">
					<img src="${APP_PATH }/static/img/logo-phone.png" alt="" class="logo">
					 <h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>	
				</div>
				<div class="menu_wraper">
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/english/home"><span>Home</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/project"><span>Project</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/use"><span>Use</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/developer"><span>Developer</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/information"><span>Information</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/question"><span>About</span></a></div>
					<div class="menu_language"><a href="${pageContext.servletContext.contextPath}/user/home"><span>CN</span></a></div>
				</div>


			</div>
		</div>


		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="${APP_PATH }/static/img/logo-phone.png">
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
		<!-- 轮播图 -->
			<div class="slides-box">
			<ul class="slides">
				<input type="radio" name="radio-btn" id="img-1" checked>
				<li class="slide-container">
					<div class="slide">
						<img id="ces" src="${APP_PATH }/static/img/banner-1.jpg">
					</div>
					<div class="nav">
						<label for="img-5" class="prev">&#x2039;</label>
						<label for="img-2" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-2">
				<li class="slide-container">
					<div class="slide">
						<img  id="ces1" src="${APP_PATH }/static/img/2.jpg">
					</div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label>
						<label for="img-3" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-3">
				<li class="slide-container">
					<div class="slide">
						<img id="ces2" src="${APP_PATH }/static/img/3.jpg">
					</div>
					<div class="nav">
						<label for="img-2" class="prev">&#x2039;</label>
						<label for="img-4" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-4">
				<li class="slide-container">
					<div class="slide">
						<img id="ces3" src="${APP_PATH }/static/img/4.jpg">
					</div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label>
						<label for="img-5" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-5">
				<li class="slide-container">
					<div class="slide">
						<img id="ces4" src="${APP_PATH }/static/img/5.jpg">
					</div>
					<div class="nav">
						<label for="img-4" class="prev">&#x2039;</label>
						<label for="img-1" class="next">&#x203a;</label>
					</div>
				</li>

				
				<li class="nav-dots">
					<label for="img-1" class="nav-dot" id="img-dot-1"></label>
					<label for="img-2" class="nav-dot" id="img-dot-2"></label>
					<label for="img-3" class="nav-dot" id="img-dot-3"></label>
					<label for="img-4" class="nav-dot" id="img-dot-4"></label>
					<label for="img-5" class="nav-dot" id="img-dot-5"></label>
					
				</li>
			</ul>
		</div>
<!-- 项目概述 -->
		<div class="mobile_content">
			<div class="mobile_jianjie">
				<div class="wdc_jianjie wid-1200" id="p1">
					<h5>Project</h5>
					<p class="p-1">WDC is devoted to the intelligent data interconnection of the basic block chain ecosystem. It is a new type of intelligent contract communication platform to realize the Internet of Things and life information interconnection of living equipment.</p>
					
					

					
				</div>
			</div>
			<div class="clear"></div>
			<div class="mobile_jishu">
				<div class="wid-1200">
					<h5>Technology</h5>
					<ul class=" " id="tech1">
						
						
					</ul>
					<span><a href="#">more details</a></span>
				</div>
			</div>
			<div class="mobile_project">
				<div class="wid-1200">
					<h5>Development</h5>
					<ul id="pro1">
						
					</ul>
					<div class="clear"></div>
					<span><a href="#" style="margin-top: 35px;">more details</a></span>
				</div>
			</div>
			<div class="mobile_team">
				<div class="wid-1200">
					<h5>Core team</h5>
					<p>WDC International Core Development Team, with at least 30 basic software system experts, has been working in Linux Open Source Community, Postgresql Open Source Community, BTC Forum, PGP Community and so on for many years. It has an average of more than five years'experience in the development of the bottom technology of block chain. Its members are distributed all over the world, and core developers are interested in block chain. Not only from the bottom of the technology and the level of real economy have many years of cognitive, development, practical experience, with the top comprehensive design and development capabilities.</p>
					<p> &nbsp;</p>
					<p>The WDC Foundation in Singapore has an operation center in Bangkok and operates in a community autonomous manner. The global community has formed a broad consensus on the value ecosystem of wdc. At this stage, we have established cooperation partners with major entities, such as e-commerce, medical, agricultural products traceability, advertising and so on.</p>
					<p> &nbsp;</p>
					<p>WDC public chain is based on the idea of serving the real economy and meeting the needs of the public business. It will contribute to the cause of block chain in the future.</p>
					
				</div>
			</div>
			<div class="clear"></div>

			<div class="product_box">

				<div class="product">
					<h5>Product</h5>

					<div class="pc_product wid-1200">
					
					
						<ul id="product1">
							
						</ul>



					</div>

					<div class="poster"  id="posterimg">
						<ul id="pro_2">
							
							
							
						</ul>
					</div>
					
				</div>
			</div>



			<div class="clear"></div>
			<div class="contact_box">
				<div class="contact wid-1200">
				
					<h5>Contact us</h5>
					<p>Welcome new partners to join us, please contact us.</p>
				<form id="contactF1"   >
					<ul>
						<li><span>name</span>
						
							<input type="text" name="name"/>
						</li>
						<li><span>theme</span>
							<input type="text" name="theme"/>
						</li>
						<li><span>email</span>
							<input type="text" name="email"/>
						</li>
						<li><span>telephone</span>
							<input type="text" name="telephone"/>
						</li>
						<li><span>plan</span>
							<input type="text" name="mission"/>
							<input type="hidden" name="edition" value="en"/>
						</li>
					</ul>
			
					<div class="submit_box">
						<button class="submit" id="contact_update_btn">submit</button>
					</div>
					</form>
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
					<img src="${APP_PATH }/static/img/logo.png" />

				</div>
				<p>wisdom chain</p>

				<p>2017-2019© WDC foundation, all rights  reserved.</p>
			</div>
		</footer>

<i style="background-image: "></i>

		<script>
			function onClickTest() {
				
				var getvalue = document.getElementById('myhide').value;
				if (getvalue == 'noshow') {
					//alert("noshow");
					document.getElementById('wdc_menu').setAttribute('class', 'wdc_menu show');
					document.getElementById('mobile_action').setAttribute('class', 'mobile_action guanbi');

					document.getElementById('myhide').value = 'show';
				} else if (getvalue == 'show') {
					//alert("show");
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
				var en="en";
				slide(en);
				project(en);
				technology(en);
				development(en);
				product(en);
				var h = $('#ces').height();
				$('.slides').css("height", parseInt(h));    
				
				
				
			});
			function slide(en){
				
				$.ajax({
					url:"${APP_PATH}/slides/"+en,
					type:"GET",
					success:function(result) {
						
							$.each(result.extend.slides,function(index,item){
							
								if(item.sort==1){
									$("#ces").attr("src",item.img);
								
								}
								if(item.sort==2){
								
									$("#ces1").attr("src",item.img);
								}
								if(item.sort==3){
								
									$("#ces2").attr("src",item.img);
								}if(item.sort==4){
									
									$("#ces3").attr("src",item.img);
								}if(item.sort==5){
									
									
									$("#ces4").attr("src",item.img);
									
								}
							}	
						)
					}
				});	
			};
			//项目概述
	function project(en){
				
				$.ajax({
					url:"${APP_PATH}/projects/"+en,
					type:"GET",
					success:function(result) {
						
							$.each(result.extend.projects,function(index,item){
								
									
							
								
								var div_1=$("<div></div>").addClass("container_box");
								var div_2=$("<div></div>").addClass("container").css("height","350px");
								var a_1=$("<a></a>").attr("href",item.address);
								a_1.css("border","0");
								
								var img_1=$("<img>").attr("src",item.img);
								var h4=$("<h4></h4>").append(item.title);
								h4.css("margin-bottom","0");
								var i_1=$("<i></i>").addClass("line");
								var p_1=$("<p></p>").append(item.descr).css("line-height","13px");;
								div_1.append(div_2.append(a_1.append(img_1)).append(h4).append(i_1).append(p_1)).appendTo("#p1");
								})
							var insertText2='<div class="clear"></div>'+'<span><a  href="https://github.com/WisedomChainGroup/WhitePaper">white paper</a></span'
							document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 	
						
							
					}
						
				})
				
			};
		//技术概述
		function technology(en){
				
				$.ajax({
					url:"${APP_PATH}/technologys/"+en,
					type:"GET",
					success:function(result) {
						
					
					
							$.each(result.extend.technologys,function(index,item){
								
								var img1=item.img ;
								var i1=$("<i style= 'background-image:url( "+img1+"   ')>   </i>");
								var a1=$("<a></a>").attr("href",item.address);
								a1.append(i1);
								a1.css("border","0");
							    var li1=$("<li></li>");	
								var des1=$("<p></p>").append(item.descr);
								var t1=	$("<h3></h3>").append(item.title);
								var div1=$("<div></div>").addClass("moblie_jishu_left").append(a1);
								var div2=$("<div></div>").addClass("moblie_jishu_right").append(t1).append(des1);
								
								li1.append(div1).append(div2).appendTo("#tech1");
								})
								
						//	var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
						//	document.getElementById("tech1").innerHTML = document.getElementById("tech1").innerHTML+insertText3; 
						
							
					}
						
				})
				
			};
//发展规划
	function development(en){
					
					$.ajax({
						url:"${APP_PATH}/developments/"+en,
						type:"GET",
						success:function(result) {
							
								$.each(result.extend.developments,function(index,item){
									
									
									var li_1=$("<li></li>");
									var div_1=$("<div></div>").addClass("img_box");
									var a_1=$("<a></a>").attr("href",item.address);
									a_1.css("border","0");
									a_1.css("margin-top","0");
									var img_1=$("<img>").attr("src",item.img);
									var h2=$("<h2></h2>");
									var span_1=$("<span style='border-radius:0px;height:34px;'></sapn>").append(item.title);
									
									li_1.append(div_1.append(a_1.append(img_1))).append(h2.append(span_1)).appendTo("#pro1"); 
									
									})
									
							//	var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
							//	document.getElementById("tech1").innerHTML = document.getElementById("tech1").innerHTML+insertText3; 
							
								
						}
							
					})
					
				};
//核心产品
				function product(en){
					
								$.ajax({
									url:"${APP_PATH}/products/"+en,
									type:"GET",
									success:function(result) {
										
											$.each(result.extend.products,function(index,item){
												
											
											
												var li_1=$("<li></li>");
												var div_1=$("<div></div>");
												var a_1=$("<a></a>").attr("href",item.address);
												a_1.css("border","0");
												var img_1=$("<img>").attr("src",item.img);
												var h1=$("<h1></h1>");
												var span_1=$("<span></sapn>").append(item.title);
												var i_1=$("<i></i>");
												var p_1=$("<p></p>").append(item.descr);
												var span_2=$("<sapn></sapn>");
												var a_2=$("<a>detail</a>").attr("href",item.address).css("margin-top","80px");
												
												li_1.append(div_1.append(a_1.append(img_1)).append(h1.append(span_1)).append(i_1).append(p_1).append(span_2.append(a_2))).appendTo(product1); 
												
												
												//移动端页面内容
												
												
												
												//var li_1=$("<li></li>").css("width","368px").css("height","340px");
												//var div_1=$("<div></div>").addClass("active");
												//var img_1=$("<img src="+item.img+" \" />");
												//var h1_1=$("<h1></h1>");
											//	var span_1=$("<span></span>").append(item.title);
												//var p_1=$("<p></p>").append(item.descr);
												//var span_2=$("<span></span>");
												//var a_1=$("<a>详情</a>").attr("href","http://"+item.address);
												
												
												//li_1.append(div_1.append(img_1).append(h1_1.append(span_1)).append(p_1).append(span_2.append(a_1))).appendTo("#pro_2");
												
											//$("#pro_2").css("width","");
												var li_1=$("<li></li>").css("width","35%").css("height","340px");
												var div_1=$("<div></div>").addClass("active");
												img_1=$("<img src="+item.img+" \" />");
												var h1_1=$("<h1></h1>");
												var span_1=$("<span></span>").append(item.title);
												var p_1=$("<p></p>").append(item.descr);
												var span_2=$("<span></span>");
												var a_1=$("<a>详情</a>").attr("href",item.address);
												
												li_1.append(div_1.append(img_1).append(h1_1.append(span_1)).append(p_1).append(span_2.append(a_1))).appendTo("#pro_2");
												
												$("#pro_2").css("width","1206px");
												})
												
										//	var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
										//	document.getElementById("tech1").innerHTML = document.getElementById("tech1").innerHTML+insertText3; 
										
											
									}
										
								})
								
							};	
							
							
							
							
							$("#contact_update_btn").click(function(){
							
								
						
								$.ajax({
									url:"${APP_PATH}/contact",
									type:"POST",
									data:$("#contactF1").serialize(),
									success:function(result){
										
										
									
									}
								});
								
							});
		</script>
	


	</body>
</html>