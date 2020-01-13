<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>应用</title>
		<%
			pageContext.setAttribute("APP_PATH", request.getContextPath());
		%>	
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/use.css" />
		
		
		
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
<!-- PC导航栏 -->
		<div class="pc_nav_box">
			<div class="pc_nav">
				<div class="logo_wrapper" style="width:220px">
					<a href="${pageContext.servletContext.contextPath}/user/home">
					<img src="${APP_PATH}/static/img/logo-phone.png" alt="" class="logo">
					<h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>

				</div>
				<div class="menu_wraper">
					<div class="menu_item "><a href="${pageContext.servletContext.contextPath}/user/home"><span>首页</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/project"><span>项目介绍</span></a></div>
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/user/use"><span>应用</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/developer"><span>开发者</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/information"><span>最新资讯</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/question"><span>关于我们</span></a></div>
					<div class="menu_language"><a href="${pageContext.servletContext.contextPath}/english/home"><span>EN</span></a></div>
				</div>
			</div>
		</div>
<!-- 移动端导航栏 -->
		<header class="mobile_banner">
			<div class="mobile_logo_wraper"><img alt="" src="${APP_PATH}/static/img/logo-phone.png">
				<h5>Wisdom Chain</h5>
			</div>
			<div class="mobile_language">
				<i></i>
				<span><a href="${pageContext.servletContext.contextPath}/english/home">EN</a></span>
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
<!-- 网页内容 -->
		<div class="wallet_box">
	<!-- 二维码 -->
			<div class="wallet_banner wid-1200">
				<div class="wallet_banner_con"><img class="wallet_banner_img" src="${APP_PATH}/static/img/wdc_phone.ada23678.png" />
					<div class="content">
						<div class=""><img src="${APP_PATH}/static/img/logo-phone.png" alt="wallet logo">
							<h1><span>WDC Wallet</span></h1>
							<p><span>WDC Wallet是一款基于WDC主链的高性能钱包DApp</span></p>
							<div class="code">
								<ul>
									<li>
										<a href="#" class="code_ios">
											<img src="${APP_PATH}/static/img/20190719131818_30875.png"  id="ios1">
											<a target="_blank" href="" class="">IOS</a>
										</a>
									</li>
									<li>
										<a href="#" class="code_Android">
											<img src="${APP_PATH}/static/img/20190719145744_29592.png" id="and1">
											<a target="_blank" href="" class="">安卓</a>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
	<!-- 工具 -->
			<div class="mobile_tool_box">
				<div class="tool_box wid-1200" id="tool1">
					<h5>工具</h5>	
				</div>
			</div>
			<div class="clear"></div>
	<!-- 移动应用展示 -->
			<div class="nav_items">
				<h2>DAPP</h2>
				<div class="slides-box" id="ul_3">
					<ul class="slides" id="ul_1">

					</ul>
				</div>
			</div>
	<!-- 应用展示 -->
			<div class="product_box">
				<div class="product">
					<h5>链上应用</h5>
					<div class="inline"></div>
					<div class="pc_product wid-1200">
						<ul id="app1">
							
						</ul>						
					</div>
				</div>
			</div>
	<!-- 交易所 -->
			<div class="mobile_scan_box">
				<h5>上线交易所</h5>
				<div class="box wid-1200" id="trade1">
					
				</div>
			</div>
		</div>
<!-- 页脚 -->
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
//文档加载
	$(function() {
				var cn="cn";
				qr();
				tool(cn);
				application(cn);
				trade(cn);
	});
//二维码
	function qr(){	
				$.ajax({
					url:"${APP_PATH}/user/qrs",
					type:"GET",
					success:function(result) {
						$.each(result.extend.qrs,function(index,item){
							if(item.edition=='androidChinese'){
								$("#and1").attr("src",item.img);
							}
							if(item.edition=='iosChinese'){
								$("#ios1").attr("src",item.img);
							}									
						})
					}		
				})		
	};
//工具
	function tool(cn){
				$.ajax({
					url:"${APP_PATH}/tools/"+cn,
					type:"GET",
					success:function(result) {	
						$.each(result.extend.tools,function(index,item){
							var div_1=$("<div></div>").addClass("mobile_scan");
							var a_1=$("<a></a>").attr("href",item.address);
							a_1.css("border","0");
							a_1.css("margin-bottom","60px");
							var img_1=$("<img>").attr("src",item.img);
							var h3=$("<h3></h3>").append(item.title);
							var p_1=$("<p></p>").append(item.descr);
							var span_1=$("<span></span>");
							var a_2=$("<a>详情</a>").attr("href",item.address);
							
							div_1.append(a_1.append(img_1)).append(h3).append(p_1).append(span_1.append(a_2)).appendTo(tool1);
						})	
					}		
				})
	};	
//应用
	function application(cn){
				$.ajax({
					url:"${APP_PATH}/applications/"+cn,
					type:"GET",
					success:function(result) {	
							$.each(result.extend.applications,function(index,item){	
								var li_1=$("<li></li>");
								var div_1=$("<div></div>");
								var a_1=$("<a></a>").attr("href",item.address);
								a_1.css("border","0");
								var img_1=$("<img>").attr("src",item.img);
								var h1=$("<h1></h1>");
								var span_1=$("<span></span>").append(item.title);
								var i_1=$("<i></i>");
								var p_1=$("<p></p>").append(item.descr);
								var span_2=$("<span></span>");
								var a_2=$("<a>详情</a>").attr("href",item.address);
								
								li_1.append(div_1.append(a_1.append(img_1)).append(h1.append(span_1)).append(i_1).append(p_1).append(span_2.append(a_2))).appendTo("#app1");	
							})
								//DAPP移动端显示
								var i=0; var j=result.extend.applications.length;
								for(i=0;i<j;i++){
									var id_0=i;
									var id_1=i+1;
									var id_2=i+2;
									var item=result.extend.applications[i];
									//设置第一个轮播图的前置ID
									if(i==0){
										id_0=j;
										
									}
									//设置最后一个轮播图的后置ID
									if(i==j-1){
										id_2=1;
									}
		
									var input_1=$("<input>").attr("type","radio").attr("name","radio-btn").attr("id","img-"+id_1);
									var li_1=$("<li></li>").addClass("slide-container");
									var div_1=$("<div></div>").addClass("slide");
									var img_1=$("<img>").attr("src",item.img);
									var h1_1=$("<h1></h1>");
									var span_1=$("<span></span>").append(item.title);
									var p_1=$("<p></p>").append(item.descr);
									var a_2=$("<a>详情</a>").attr("href",item.address);
									var div_2=$("<div></div>").addClass("nav");
									var label_1=$("<label>&#x2039;</label>").attr("for","img-"+id_0).attr("class","prev");
									var label_2=$("<label>&#x203a;</label>").attr("for","img-"+id_2).attr("class","next");
									//设置显示的第一个轮播图
									if(i==0){
										(input_1).attr("checked","");
									}
									
									$("#ul_1").append(input_1).appendTo("#ul_3");
									$("#ul_1").append(li_1.append(div_1.append(img_1).append(h1_1.append(span_1)).append(p_1).append(a_2)).append(div_2.append(label_1).append(label_2))).appendTo("#ul_3");					
								}
								//拼接轮播图html代码的下半部分
								for(i=0;i<j;i++){
									var id_0=i;
									var id_1=i+1;
									var id_2=i+2;
									if(i==0){
										var  li_2=$("<li></li>").addClass("nav-dots").attr("id","ul_2").appendTo("#ul_1");	
									}
									var label_3=$("<label></label>").attr("for","img-"+id_1).addClass("nav-dot").attr("id","img-dot-"+id_1);
									label_3.appendTo("#ul_2");
								}		
					}
						
				})
			
		};	
		function trade(cn){
					
					$.ajax({
						url:"${APP_PATH}/trades/"+cn,
						type:"GET",
						success:function(result) {	
		
								$.each(result.extend.trades,function(index,item){
									
									
								
									
									
									
									var div_1=$("<div></div>").addClass("mobile_scan bourse");
									var a_1=$("<a></a>").attr("href",item.address);
									a_1.css("border","0");
									a_1.css("margin-bottom","60px");
									var img_1=$("<img>").attr("src",item.img);
									var h3=$("<h3></h3>").append(item.title);
									var span_1=$("<span></span>");
									var a_2=$("<a>详情</a>").attr("href",item.address);
									
									div_1.append(a_1.append(img_1)).append(h3).append(span_1.append(a_2)).appendTo("#trade1");
									})
									
							//	var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
							//	document.getElementById("tech1").innerHTML = document.getElementById("tech1").innerHTML+insertText3; 
							
							
								
						}
							
					})
					
				};	
				
				
				</script>
				
	</body>
</html>
