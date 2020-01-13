<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联系详情列表</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出联系。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud
 -->

	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="NewFile.jsp" %>
<!-- 修改模态框 -->
	<div class="modal fade" id="contactUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document" style="width:1000px">
	    <div class="modal-content">
	      <div class="modal-header" enctype="multipart/form-data">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">联系详情修改</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal"  id="myForm2" >
	      
			  <div class="form-group">
			    <label class="col-sm-2 control-label">ID</label>
			    <div class="col-sm-10">
			      	<p class="form-control-static" id="contactName_update_static"></p>
			    </div>
			  </div>
			  <div class="form-group">
		   		 <label class="col-sm-2 control-label">类型</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="type" class="form-control" id="type_contact" >
		    	</div>
		  	</div>
			  <div class="form-group">
		   		 <label class="col-sm-2 control-label">标题</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="title" class="form-control" id="title_contact" >
		    	</div>
		  	</div>
		  	<div class="form-group">
		   		 <label class="col-sm-2 control-label">描述</label>
		   			 <div class="col-sm-10">
		   		   <textarea class="form-control" rows="3" name="descr" id="descr_contact"></textarea>  
		    	</div>
		  	</div>
			<div class="form-group">
		   		 <label class="col-sm-2 control-label">作者</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="author" class="form-control" id="atuhor_contact" >
		    	</div>
		    	</div>
		    	
			  <div class="form-group">
			    <label class="col-sm-2 control-label">版本号</label>
			    <div class="col-sm-10">
			      <label class="radio-inline">
					  <input type="radio" name="edition" id="edition1_add_input" value="en" checked="checked"> 英文
					</label>
					<label class="radio-inline">
					  <input type="radio" name="edition" id="edition2_add_input" value="cn"> 中文
					</label>
			    </div>
			  </div>
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary" id="contact_update_btn">更新</button>
	      </div>
	    </div>
	  </div>
	</div>



<!-- 新增模态框 -->
	<div class="modal fade" id="contactAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document" style="width:1000px">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">联系详情添加</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal"  id="myForm">
			  <div class="form-group">
		   		 <label class="col-sm-2 control-label">类型</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="type" class="form-control" id="type_contact" >
		    	</div>
		  	</div>
			  <div class="form-group">
		   		 <label class="col-sm-2 control-label">标题</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="title" class="form-control" id="title_add_input" >
		    	</div>
		  	</div>
		  	<div class="form-group">
		   		 <label class="col-sm-2 control-label">描述</label>
		   			 <div class="col-sm-10">
		   		   <textarea class="form-control" rows="3" name="descr"></textarea>  
		    	</div>
		  	</div>
			
			<div class="form-group">
		   		 <label class="col-sm-2 control-label">作者</label>
		    		<div class="col-sm-10">
		      		<input type="text" name="author" class="form-control" id="author_add_input" >
		    	</div>
			</div>
			
			  <div class="form-group">
			    <label class="col-sm-2 control-label">版本号</label>
			    <div class="col-sm-10">
			      <label class="radio-inline">
					  <input type="radio" name="edition" id="edition1_add_input" value="en" checked="checked"> 英文
					</label>
					<label class="radio-inline">
					  <input type="radio" name="edition" id="edition2_add_input" value="cn"> 中文
					</label>
			    </div>
			  </div>
			  
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary" id="contact_save_btn">提交</button>
	      </div>
	    </div>
	  </div>
	</div>


<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>联系详情-CRUD</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				
				<button class="btn btn-danger" id="contact_delete_all_btn">删除</button>
			</div>
		</div>
<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="contacts_table">
					<thead>
						<tr>
							<th>
								<input type="checkbox" id="check_all"/>
							</th>
							<th>#</th>
							<th>昵称</th>
							<th>主题</th>
							<th>邮箱</th>
							<th>电话</th>
							<th>计划</th>
							<th>版本号</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					
					</tbody>
				</table>
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
		
	</div>
	<script type="text/javascript">
	
		var totalRecord,currentPage;
//默认跳转页	
		$(function(){

			to_page(1);
		});
		
		
//跳转到指定页面
		function to_page(pn){
			$.ajax({
				url:"${APP_PATH}/contacts",
				data:"pn="+pn,
				type:"GET",
				success:function(result){
					//console.log(result);
					//1、列表信息
					build_emps_table(result);
					//2、分页信息
					build_page_info(result);
					//3、分页条信息
					build_page_nav(result);
				}
			});
		}
		
//列表信息
		function build_emps_table(result){
			//清空table表格
			$("#contacts_table tbody").empty();
			var contacts = result.extend.pageInfo.list;
			$.each(contacts,function(index,item){
				//遍历生成html元素与赋值id
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var id = $("<td></td>").append(item.id);
				var name=$("<td></td>").append(item.name);
				//图片标签
				var theme=$("<td></td>").append(item.theme);
				var email = $("<td></td>").append(item.email);
				var telephone = $("<td></td>").append(item.telephone);
				var mission = $("<td></td>").append(item.mission);
				var edition = $("<td></td>").append(item.edition);
				
				
				var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
							.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				//为删除按钮添加一个自定义的属性来表示当前删除的id
				delBtn.attr("del-id",item.id);
				var btnTd = $("<td></td>").append(" ").append(delBtn);
				//var delBtn = 
				//append方法执行完成以后还是返回原来的元素
				$("<tr></tr>").append(checkBoxTd)
					.append(id)
					.append(name)
					.append(theme)
					.append(email)
					.append(telephone)
					.append(mission)
					.append(edition)
					.append(btnTd)
					.appendTo("#contacts_table tbody");
			});
		}
//分页信息
		function build_page_info(result){
			$("#page_info_area").empty();
			$("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+
					result.extend.pageInfo.pages+"页,总"+
					result.extend.pageInfo.total+"条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
//分页条信息
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
		}
		
//清空表单样式及内容
		function reset_form(ele){
			$(ele)[0].reset();
			//清空表单样式
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}
		

		
	
		

		
//单个删除
		$(document).on("click",".delete_btn",function(){
			//1、弹出是否确认删除对话框
			var empName = $(this).parents("tr").find("td:eq(2)").text();
			var empId = $(this).attr("del-id");
			//alert($(this).parents("tr").find("td:eq(1)").text());
			if(confirm("确认删除【"+empName+"】吗？")){
				//确认，发送ajax请求删除即可
				$.ajax({
					url:"${APP_PATH}/contact/"+empId,
					type:"DELETE",
					success:function(result){
						alert(result.msg);
						//回到本页
						to_page(currentPage);
					}
				});
			}
		});
		
//完成全选/全不选功能
		$("#check_all").click(function(){
			//attr获取checked是undefined;
			//我们这些dom原生的属性；attr获取自定义属性的值；
			//prop修改和读取dom原生属性的值
			$(".check_item").prop("checked",$(this).prop("checked"));
		});
		
		//判断是否全选
		$(document).on("click",".check_item",function(){
			//判断当前选择中的元素是否5个
			var flag = $(".check_item:checked").length==$(".check_item").length;
			$("#check_all").prop("checked",flag);
		});
		
//批量删除
		$("#contact_delete_all_btn").click(function(){
			//
			var empNames = "";
			var del_idstr = "";
			$.each($(".check_item:checked"),function(){
				//this
				empNames += $(this).parents("tr").find("td:eq(1)").text()+",";
				//组装员工id字符串
				del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
			});
			//去除empNames多余的,
			empNames = empNames.substring(0, empNames.length-1);
			//去除删除的id多余的-
			del_idstr = del_idstr.substring(0, del_idstr.length-1);
			if(confirm("确认删除【"+empNames+"】吗？")){
				//发送ajax请求删除
				$.ajax({
					url:"${APP_PATH}/contact/"+del_idstr,
					type:"DELETE",
					success:function(result){
						alert(result.msg);
						//回到当前页面
						to_page(currentPage);
					}
				});
			}
		});
		
		
	</script>
</body>
</html>