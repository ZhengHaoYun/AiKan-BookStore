<%@page import="com.zhy.beans.Category"%>
<%@page import="com.zhy.factory.DaoFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.zhy.beans.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta name="renderer" content="webkit">
<!--国产浏览器高速模式-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="爱看图书" />
<!-- 作者 -->
<meta name="revised" content="爱看图书.v3, 2019/05/01" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<title>爱看图书出品</title>

<!-- 公共样式 开始 -->
<link rel="stylesheet" type="text/css" href="../../css/base.css">
<link rel="stylesheet" type="text/css" href="../../css/iconfont.css">
<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
<script type="text/javascript" src="../../layui/layui.js"></script>
<!-- 滚动条插件 -->
<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css">
<script src="../../framework/jquery-ui-1.10.4.min.js"></script>
<script src="../../framework/jquery.mousewheel.min.js"></script>
<script src="../../framework/jquery.mCustomScrollbar.min.js"></script>
<script src="../../framework/cframe.js"></script>
<!-- 仅供所有子页面使用 -->
<!-- 公共样式 结束 -->

<style>
.layui-table img {
	max-width: none;
}
</style>

</head>
<%
	List<Book> books = new ArrayList<>();
	books = DaoFactory.getBookDao().getAllBooks();
	request.setAttribute("books", books);
%>
<body>
	<div class="cBody">
		<div class="console">
			

			<script>
				layui.use('form', function() {
					var form = layui.form;

					//监听提交
					form.on('submit(formDemo)', function(data) {
						layer.msg(JSON.stringify(data.field));
						return false;
					});
				});
			</script>
		</div>

		<table class="layui-table">
			<thead>
				<tr>
					<th>商品编号</th>
					<th>商品名称</th>
					<th>商品图片</th>
					<th>商品价格</th>
					<th>分类</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${books }" var="book">
					<tr>
						<td>${book.id }</td>
						<td>${book.name }</td>
						<td><img src="http://localhost:8080/images${book.cover}" width="20" height="20"
							onmouseenter="imgBig(this)" onmouseleave="imgSmall(this)" /></td>
						<td>${book.price }</td>
						<td>${book.category }</td>
						<td>
							<a class="layui-btn layui-btn-xs"  id="${book.id }" href="goods_update.jsp?id=${book.id }">修改</a> <a
							
							class="layui-btn layui-btn-xs" onclick="delCustomList(this)" href="${pageContext.request.contextPath }/BookServlet?method=delete&id=${book.id}">删除</a>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

		<!-- <!-- layUI 分页模块 -->
		<div id="pages"></div> -->
		<script>
	/* 		layui.use('laypage', function() {
				var laypage = layui.laypage;

				//总页数大于页码总数
				laypage
						.render({
							elem : 'pages',
							count : 100,
							layout : [ 'count', 'prev', 'page', 'next',
									'limit', 'skip' ],
							jump : function(obj) {
								//					      console.log(obj)
							}
						});
			}); */
			
		

			//删除
			function delCustomList(_this) {
				layui.use([ 'form', 'laydate' ], function() {
					layer.confirm('确定要删除么？', {
						btn : [ '确定', '取消' ]
					//按钮
					}, function() {
						$(_this).parent().parent().remove();
						layer.msg('删除成功', {
							icon : 1
						});
					}, function() {
						layer.msg('取消删除', {
							time : 2000
						//20s后自动关闭
						});
					});
				});
			}
		</script>
	</div>
</body>

</html>