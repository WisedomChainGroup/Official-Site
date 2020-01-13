<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>About</title>
		<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/query.css" />
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
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/english/information" style="color:#232323 "><span>Information</span></a></div>
					<div class="menu_item active"><a href="${pageContext.servletContext.contextPath}/english/question" style="color:#232323 "><span>About</span></a></div>
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

		<div class="mobile_content">

			<div class="blog_banner"><img src="../static/images/blog/banner.png" class="blog_bg">
				<div class="banner_search">
					<h3> <span>Question</span> </h3>
					<div class="inline"></div>
					<div class="search_wraper"><input id="search_1" class="search_input" type="text" placeholder="" value=""><img src="${APP_PATH}/static/img/search.webp"
						 class="search_icon" onclick="go4()"></div>
				</div>
			</div>

			<div class="wdc_container">
				<div class="wid-1200">
					<div class="fag_dapp">
						<div class="dapp_items">
							<div class="dapp_item active" id="que1"><span onclick="to_page(1)">All</span></div>
							<div class="dapp_item" id="que2"><span onclick="go2('')">Technique</span></div>
							<div class="dapp_item" id="que3"><span onclick="go3('')">FAQ</span></div>
							<div class="dapp_item" id="que5"><span onclick="go5('')">About</span></div>
						</div>
					</div>
					<div class="wdc-item-container" id="question1">
						

						

					</div>
				</div>
			</div>

		</div>








		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/home"><span>Home</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/project"><span>Project</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/application"><span>Use</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/developer"><span>Developer</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/information"><span>Information</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/question"><span>About</span></a>
			</div>
		</div>


<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area">
				
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
		<script>
//默认 en
		$(function() {
			to_page(1);
		});
//en 分页查询信息
		function to_page(pn){
			var v1="en";
			$("#question1").empty();
			$.ajax({
				url:"${APP_PATH}/questions4/"+v1,
				data:"pn="+pn,
				type:"GET",
				success:function(result) {
					
					$.each(result.extend.pageInfo.list,function(index,item){
						
							
						
						var aa=$("<span id='tt1' style='font-size:14px'>"+item.title+"</span>");
						var div1=$("<div></div>").addClass("wdc_item_title").append(aa);
						var div2=$("<div></div>").addClass("wdc_item_bread").append("<span>"+item.author+"  / published in </span>    ").append("<span>"+item.time+"</span>");
						var div0=$("<div></div>").addClass("wdc_item_text").append(div1).append(div2);
						aa.attr("onclick","go1("+  item.id+")");
						
						div0.appendTo("#question1");
						
						
					
						
						})
						//var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
						//document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 
						//构建分页条信息
						$("#que1").attr("class","dapp_item active");
						$("#que2").attr("class","dapp_item");
						$("#que3").attr("class","dapp_item");
						$("#que5").attr("class","dapp_item ");
						build_page_nav(result);
						
				}
					
			})
			
		};
//分页查询 cn jishu 
		function to_page1(pn){
			var v1="en";
			var v2="/jishu";
			$.ajax({
				url:"${APP_PATH}/questions5/"+v1+v2,
				type:"GET",
				data:"pn="+pn,
				success:function(result){
					//console.log(result);
					$("#question1").empty();
					$.each(result.extend.pageInfo.list,function(index,item){
						var aa=$("<span id='tt1' style='font-size:14px'>"+item.title+"</span>");
						var div1=$("<div></div>").addClass("wdc_item_title").append(aa);
						var div2=$("<div></div>").addClass("wdc_item_bread").append("<span>"+item.author+" / published in</span>    ").append("<span>"+item.time+"</span>");
						var div0=$("<div></div>").addClass("wdc_item_text").append(div1).append(div2);
						aa.attr("onclick","go1("+  item.id+")");
						
						div0.appendTo("#question1");
	
						})
						$("#que1").attr("class","dapp_item");
						$("#que2").attr("class","dapp_item active");
						$("#que3").attr("class","dapp_item");
						$("#que5").attr("class","dapp_item ");
						build_page_nav1(result);
						
				}
			});
			
			
		};
//分页查询 en changjian
		function to_page2(pn){
			var v1="en";
			var v2="/changjian";
			$.ajax({
				url:"${APP_PATH}/questions5/"+v1+v2,
				type:"GET",
				data:"pn="+pn,
				success:function(result){
					//console.log(result);
					$("#question1").empty();
					$.each(result.extend.pageInfo.list,function(index,item){
						
					
						
						var aa=$("<span id='tt1' style='font-size:14px'>"+item.title+"</span>");
						var div1=$("<div></div>").addClass("wdc_item_title").append(aa);
						var div2=$("<div></div>").addClass("wdc_item_bread").append("<span>"+item.author+" / published in</span>    ").append("<span>"+item.time+"</span>");
						var div0=$("<div></div>").addClass("wdc_item_text").append(div1).append(div2);
						aa.attr("onclick","go1("+  item.id+")");
						
						div0.appendTo("#question1");
						
						
					
						
						})
						$("#que1").attr("class","dapp_item");
						$("#que2").attr("class","dapp_item");
						$("#que3").attr("class","dapp_item active");
						$("#que5").attr("class","dapp_item ");
						build_page_nav2(result);
						
				}
			});
			
			
		};
		function go1(tt){
			//alert($(this).attr("title_id"));
			
			//var a1=$(this).attr("title_id");
			var ttt=parseInt(tt);
			
			
			window.location.href="${pageContext.servletContext.contextPath}/english/questionDetail/?id="+ttt ;
		}
//en 分页条信息
		function build_page_nav(result){
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
			//构建元素
			var firstPageLi = $("<li></li>").append($("<a></a>").append("home page").attr("href","#"));
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
			var lastPageLi = $("<li></li>").append($("<a></a>").append("last page").attr("href","#"));
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
//en jishu 分页条信息
		function build_page_nav1(result){
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
			//构建元素
			var firstPageLi = $("<li></li>").append($("<a></a>").append("home page").attr("href","#"));
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
			var lastPageLi = $("<li></li>").append($("<a></a>").append("last page").attr("href","#"));
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
//en jishu 分页条信息
		function build_page_nav2(result){
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
			//构建元素
			var firstPageLi = $("<li></li>").append($("<a></a>").append("home page").attr("href","#"));
			var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
			if(result.extend.pageInfo.hasPreviousPage == false){
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			}else{
				//为元素添加点击翻页的事件
				firstPageLi.click(function(){
					to_page2(1);
				});
				prePageLi.click(function(){
					to_page2(result.extend.pageInfo.pageNum -1);
				});
			}
			var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
			var lastPageLi = $("<li></li>").append($("<a></a>").append("last page").attr("href","#"));
			if(result.extend.pageInfo.hasNextPage == false){
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			}else{
				nextPageLi.click(function(){
					to_page2(result.extend.pageInfo.pageNum +1);
				});
				lastPageLi.click(function(){
					to_page2(result.extend.pageInfo.pages);
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
					to_page2(item);
				});
				ul.append(numLi);
			});
			//添加下一页和末页 的提示
			ul.append(nextPageLi).append(lastPageLi);
			//把ul加入到nav
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		};	
		//技术问题查询
		function go2(){
			to_page1(1);		
		};
		
		//常见问题查询
		function go3(){
			to_page2(1);
		};
		
		//问题模糊查询
		function go4(){
			var pn=1;
			var v1="en";
			var v2="/"+$("#search_1").val();
			
			$.ajax({
				url:"${APP_PATH}/questions6/"+v1+v2,
				type:"GET",
				data:"pn="+pn,
				success:function(result){
					//console.log(result);
					$("#question1").empty();
					$.each(result.extend.pageInfo.list,function(index,item){
						

						var aa=$("<span id='tt1' style='font-size:14px'>"+item.title+"</span>");
						var div1=$("<div></div>").addClass("wdc_item_title").append(aa);
						var div2=$("<div></div>").addClass("wdc_item_bread").append("<span>"+item.author+"  / published in</span>   ").append("<span>"+item.time+"</span>");
						var div0=$("<div></div>").addClass("wdc_item_text").append(div1).append(div2);
						aa.attr("onclick","go1("+  item.id+")");
						
						div0.appendTo("#question1");
						
						
					
						
						})
						$("#que1").attr("class","dapp_item active");
						$("#que2").attr("class","dapp_item");
						$("#que3").attr("class","dapp_item ");
						$("#que5").attr("class","dapp_item ");
						build_page_nav(result);
						
				}
			});
			
			
		};
		//关于我们
		function go5(){					
			$("#question1").empty();			
							var div0=$("<div> <p>address：152 BEACH ROAD #14-02 GATEWAY EAST SINGAPORE (189721)</p>  <p>email：wise_cc@outlook.com</p> <p>enterprise email：market@wdc852.com</p></div>")
							div0.appendTo("#question1");
		
							$("#que1").attr("class","dapp_item");
							$("#que2").attr("class","dapp_item");
							$("#que3").attr("class","dapp_item");
							$("#que5").attr("class","dapp_item active");
		
			};
		</script>
		
	</body>
</html>
