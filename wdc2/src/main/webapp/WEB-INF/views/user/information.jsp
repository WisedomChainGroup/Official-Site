<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>最新资讯</title>
		<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>	<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/slides.css" />
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/information.css" />
		<link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	
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
					<a href="${pageContext.servletContext.contextPath}/user/home">
					<img src="${APP_PATH}/static/img/logo-phone.png" alt="" class="logo">
					<h5 style="font-size:20px;">Wisdom Chain</h5>
				</a>

				</div>
				<div class="menu_wraper"  >
					<div class="menu_item "><a href="${pageContext.servletContext.contextPath}/user/home" style="color:#232323 "><span>首页</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/project" style="color:#232323 "><span>项目介绍</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/use" style="color:#232323 "> <span>应用</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/developer" style="color:#232323 "><span>开发者</span></a></div>
					<div class="menu_item active" ><a href="${pageContext.servletContext.contextPath}/user/information" style="color:#232323 "><span>最新资讯</span></a></div>
					<div class="menu_item"><a href="${pageContext.servletContext.contextPath}/user/question" style="color:#232323 "><span>关于我们</span></a></div>
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

		<div class="wdc_menu" id="wdc_menu" >
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/home" ><span style="color: #232323;">首页</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/project" style="color: #232323;"><span>项目介绍</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/use"><span style="color: #232323;">应用</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/developer" ><span style="color: #232323;">开发者</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/information" ><span style="color: #232323;">最新资讯</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/question"><span style="color: #232323;">关于我们</span></a>
			</div>
		</div>

		<div class="mobile_content">

			<div class="blog_banner"><img src="${APP_PATH}/static/image/blog/banner.png" class="blog_bg">
				<div class="banner_search">
					<h3> <span>资讯</span> </h3>
					<div class="inline"></div>
					<div class="search_wraper"><input  id="search_1" class="search_input" type="text" placeholder="输入关键词搜索文章" value=""><img src="${APP_PATH}/static/img/search.webp"
						 class="search_icon" onclick="go4()"></div>
				</div>
			</div>

			<div class="box">
			<div class="container">
			<ul class="nav nav-pills" style="margin-top:25px;">
				<li class="nav-item">
  					<a style="color:#333333;font-size:17px;" class="nav-link active" onclick="go5('')" href="#">资讯</a>
				</li>
				
				
				<li class="nav-item">
  					<a  style="color:#333333;font-size:17px;" class="nav-link "  onclick="go6('')" href="#">区块链知识库</a>
				</li>
				
			</ul>
			<hr />
			</div>
				

					
				<div class="wdc_container blog_list wid-1200" id="information1">
				
					

					</div>
					
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






		<div class="wdc_menu" id="wdc_menu">
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/home"><span>首页</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/project"><span>项目介绍</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/application"><span>应用</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/developer"><span>开发者</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/information"><span>最新动态</span></a>
			</div>
			<div class="wdc_menu_item">
				<a href="${pageContext.servletContext.contextPath}/user/question"><span>关于我们</span></a>
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
//默认 cn
			to_page(1);
			
		});
//cn 分页 查询
		function to_page(pn){
			var v1="cn";
			$("#information1").empty();
			$.ajax({
				url:"${APP_PATH}/informations/"+v1,
				data:"pn="+pn,
				type:"GET",
				success:function(result) {
					
					$.each(result.extend.pageInfo.list,function(index,item){
						
						//定义各个元素标签
						var div1=$("<div></div>").addClass("blog_item");
						var div2=$("<div></div>").addClass("blog_img_container");
						var div3=$("<div></div>").addClass("blog_item_img");
						var img11="url("+item.img+ ")";
						//"url("+img11+   ")" ;
						//$(".blog_item_img").attr("img_id",item.id);
						div3.attr("style",'background-image:'+img11);
						//$(".blog_item_img").attr("style",'background-image:'+img11);
						
						//$('.blog_item_img').attr('id','newid');
						//div3.style.backgroundImage="url(' "+img11+   "')" ;
						//$(".blog_item_img").style.backgroundImage=img11+'';
						var div4=$("<div></div>").addClass("blog_item_text");	
						var div5=$("<div  ></div>").addClass("blog_item_title");
						//div5.attr("onclick","go1()");
						var aa=$("<span id='tt1'></span>").append(item.title).append("<span id='test'>");
						aa.attr("onclick","go1("+  item.id+")");
						aa.attr("title_id",item.id)
						div5.append(aa);
						//div5.append("<a>"+item.title+"</a>");
						//div5.attr("title_id",item.id);
						var div6=$("<div></div>").addClass("blog_item_bread");
						var span1=$("<span></span>").append(item.author+"  /发表于  ");
						var span2=$("<span></span>").append(item.time);
						var a=$("<a></a>");
						//从下到上拼接
						var div2_1=div2.append(div3);
						var div6_1=div6.append(span1).append(span2);
						var a_1=a.append(div5).append(div6_1);
						var div4_1=div4.append(a_1);
						
						
						div1.append(div2_1).append(div4_1).appendTo("#information1");
						
						
						})
						//var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
						//document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 
						//构建分页条信息
						build_page_nav(result);
						
				}
					
			})
			
		};
//cn_1  分页 查询
		function to_page1(pn){
			var v1="cn_1";
			$("#information1").empty();
			$.ajax({
				url:"${APP_PATH}/informations/"+v1,
				data:"pn="+pn,
				type:"GET",
				success:function(result) {
					
					$.each(result.extend.pageInfo.list,function(index,item){
						
						//定义各个元素标签
						var div1=$("<div></div>").addClass("blog_item");
						var div2=$("<div></div>").addClass("blog_img_container");
						var div3=$("<div></div>").addClass("blog_item_img");
						var img11="url("+item.img+ ")";
						//"url("+img11+   ")" ;
						//$(".blog_item_img").attr("img_id",item.id);
						div3.attr("style",'background-image:'+img11);
						//$(".blog_item_img").attr("style",'background-image:'+img11);
						
						//$('.blog_item_img').attr('id','newid');
						//div3.style.backgroundImage="url(' "+img11+   "')" ;
						//$(".blog_item_img").style.backgroundImage=img11+'';
						var div4=$("<div></div>").addClass("blog_item_text");	
						var div5=$("<div  ></div>").addClass("blog_item_title");
						//div5.attr("onclick","go1()");
						var aa=$("<span id='tt1'></span>").append(item.title).append("<span id='test'>");
						aa.attr("onclick","go1("+  item.id+")");
						aa.attr("title_id",item.id)
						div5.append(aa);
						//div5.append("<a>"+item.title+"</a>");
						//div5.attr("title_id",item.id);
						var div6=$("<div></div>").addClass("blog_item_bread");
						var span1=$("<span></span>").append(item.author+"  /发表于  ");
						var span2=$("<span></span>").append(item.time);
						var a=$("<a></a>");
						//从下到上拼接
						var div2_1=div2.append(div3);
						var div6_1=div6.append(span1).append(span2);
						var a_1=a.append(div5).append(div6_1);
						var div4_1=div4.append(a_1);
						
						
						div1.append(div2_1).append(div4_1).appendTo("#information1");
						
						
						})
						//var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
						//document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 
						//构建分页条信息
						build_page_nav1(result);
						
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
		
		function go1(ttt){
			//alert($(this).attr("title_id"));
			
			//var a1=$(this).attr("title_id");
			
			
			window.location.href="${pageContext.servletContext.contextPath}/user/informationDetail/?id="+ttt ;
		}
//cn cn_1问题模糊查询
		function go4(){
			var pn=1;
			var v1="cn";
			var v2="/"+$("#search_1").val();
			$("#information1").empty();
			$.ajax({
				url:"${APP_PATH}/informations5/"+v1+v2,
				data:"pn="+pn,
				type:"GET",
				success:function(result) {
					
					$.each(result.extend.pageInfo.list,function(index,item){
			
						//定义各个元素标签
						var div1=$("<div></div>").addClass("blog_item");
						var div2=$("<div></div>").addClass("blog_img_container");
						var div3=$("<div></div>").addClass("blog_item_img");
						var img11="url(${pageContext.servletContext.contextPath}/images/information/"+item.img+ ")";
						//"url("+img11+   ")" ;
						//$(".blog_item_img").attr("img_id",item.id);
						div3.attr("style",'background-image:'+img11);
						//$(".blog_item_img").attr("style",'background-image:'+img11);
						
						//$('.blog_item_img').attr('id','newid');
						//div3.style.backgroundImage="url(' "+img11+   "')" ;
						//$(".blog_item_img").style.backgroundImage=img11+'';
						var div4=$("<div></div>").addClass("blog_item_text");	
						var div5=$("<div  ></div>").addClass("blog_item_title");
						//div5.attr("onclick","go1()");
						var aa=$("<span id='tt1'></span>").append(item.title).append("<span id='test'>");
						aa.attr("onclick","go1("+  item.id+")");
						aa.attr("title_id",item.id)
						div5.append(aa);
						//div5.append("<a>"+item.title+"</a>");
						//div5.attr("title_id",item.id);
						var div6=$("<div></div>").addClass("blog_item_bread");
						var span1=$("<span></span>").append(item.author+"  /发表于  ");
						var span2=$("<span></span>").append(item.time);
						var a=$("<a></a>");
						//从下到上拼接
						var div2_1=div2.append(div3);
						var div6_1=div6.append(span1).append(span2);
						var a_1=a.append(div5).append(div6_1);
						var div4_1=div4.append(a_1);
						
						
						div1.append(div2_1).append(div4_1).appendTo("#information1");
					
						
						})
						//var insertText2='<div class="clear"></div>'+'<span><a href="#">更多详情</a></span'
						//document.getElementById("p1").innerHTML = document.getElementById("p1").innerHTML+insertText2; 
						//构建分页条信息
						build_page_nav(result);
						
				}
					
			})
			
		};
		function go5(){
			to_page(1);			
		};
		function go6(){
			to_page1(1);			
		};
		
		
		</script>


	</body>
</html>
