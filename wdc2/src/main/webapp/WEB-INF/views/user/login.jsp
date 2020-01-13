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
		<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/query.css" />
		<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="${APP_PATH }/static/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	</head>
	<body>
	<header class="page-header text-center">
    <h1>后台登录页面</h1>
</header>
　　<div class="container"> 
    <div class="form-horizontal">
    <form  method="post" id="form1">
        <div class="form-group">
            <label class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="account" placeholder="请输入用户名">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="password" placeholder="请输入密码">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">
                权限
            </label>
            <div class="col-sm-10">
                <input type="radio" name="power" value="1">管理员
                <input type="radio" name="power" value="0"> 超级管理员
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2">
                
            </div>
            <div class="col-sm-10">
          
                <button  type="submit"class="btn btn-primary">登录</button>
            </div>
        </div>
       </form> 
    </div>
</div>
</body>
<script type="text/javascript">
$("#form1").submit(function(e){
	
	$.ajax({
		url:"${APP_PATH}/login",
		type:"POST",
		data:$("#form1").serialize(),
		success:function(result){
			window.location.href="${pageContext.servletContext.contextPath}/slideView";
		}
	});
	});

</script>
</html>