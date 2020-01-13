<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>



</head>
<body>



<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid"> 
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">后台管理</a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
            
            <li><a href="${pageContext.servletContext.contextPath}/admins/adminView">管理员模块</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admins/developerView">开发者模块</a></li>
            <!--<li><a href="${pageContext.servletContext.contextPath}/admins/informationView">最新资讯模块</a></li>-->
            <!--  <li><a href="${pageContext.servletContext.contextPath}/admins/questionView">关于我们模块</a></li>-->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    主页模块 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                  <!--   <li><a href="${pageContext.servletContext.contextPath}/admins/slideView">轮播图</a></li>-->
                  <!--  <li><a href="${pageContext.servletContext.contextPath}/admins/projectView">项目概述</a></li>-->
                   <!-- <li><a href="${pageContext.servletContext.contextPath}/admins/technologyView">技术概述</a></li>-->
                    <!-- <li><a href="${pageContext.servletContext.contextPath}/admins/developmentView">发展规划</a></li>-->
                    <li> <a href="${pageContext.servletContext.contextPath}/admins/productView">核心产品</a></li>
                    <li><a href="${pageContext.servletContext.contextPath}/admins/contactView">留言信息</a></li>
                </ul>
            </li>
             <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    应用模块 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                   <!-- <li><a href="${pageContext.servletContext.contextPath}/admins/qrView">二维码</a></li>-->
                    <!--<li><a href="${pageContext.servletContext.contextPath}/admins/toolView">工具</a></li>-->
                    <li><a href="${pageContext.servletContext.contextPath}/admins/applicationView">应用</a></li>
                   <!-- <li><a href="${pageContext.servletContext.contextPath}/admins/tradeView">交易所</a></li>-->
                  
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                   最新资讯模块 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="${pageContext.servletContext.contextPath}/admins/informationView">资讯详情</a></li>
                    <li><a href="${pageContext.servletContext.contextPath}/admins/chainView">区块链知识库</a></li>
                 
                  
                </ul>
            </li>
            
            
        </ul>
         <p class="navbar-text navbar-right"><a href="${pageContext.servletContext.contextPath}/logout">注销</a></p>
    </div>
   
    
     
    </div>
</nav>



</body>
</html>