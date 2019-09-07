<%@page import="com.zhy.factory.DaoFactory"%>
<%@page import="com.zhy.beans.Category"%>
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
	<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
	<!-- 公共样式 结束 -->

</head>
<%
	List<Category> categories = DaoFactory.getCategoryDao().getAllCategory();
	request.setAttribute("cs", categories);
%>
<body>
	<div class="cBody">
		<div class="console">
			<!-- <form class="layui-form" action="">
				<div class="layui-form-item">
					<div class="layui-input-inline">
						<input type="text" name="name" required lay-verify="required" placeholder="输入分管名称"
							autocomplete="off" class="layui-input">
					</div>
					<button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
				</div>
			</form>

			<script>
				layui.use('form', function () {
					var form = layui.form;

					//监听提交
					form.on('submit(formDemo)', function (data) {
						layer.msg(JSON.stringify(data.field));
						return false;
					});
				});
			</script> -->
		</div>

		<table class="layui-table">
			<thead>
				<tr>
					<th>分类ID</th>
					<th>名称</th>
					<th>分类等级</th>
					<th>上级分类ID&nbsp[上级分类为0表示无上级分类]</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cs}" var="c">
				
				<tr>
					<td>${c.id }</td>
					<td>${c.name }</td>
					<td>${c.grade }</td>
					<td>${c.parent }</td>
					<td>
						<a class="layui-btn layui-btn-xs"  id="${c.id }" href="goodsType_update.jsp?id=${c.id }">修改</a>
					</td>
				</tr>
				</c:forEach>

			</tbody>
		</table>

		<!-- layUI 分页模块 -->
		<!-- <div id="pages"></div> -->
		<script>
			/* layui.use(['laypage', 'layer'], function () {
				var laypage = layui.laypage,
					layer = layui.layer;

				//总页数大于页码总数
				laypage.render({
					elem: 'pages',
					count: 100,
					layout: ['count', 'prev', 'page', 'next', 'limit', 'skip'],
					jump: function (obj) {
						console.log(obj)
					}
				});
			}); */

			//修改按钮
			var updateFrame = null;

		/* 	function updateBut(obj) {
				layui.use('layer', function () {
					var layer = layui.layer;
					var id = obj.id;
					var url = "goodsType_update.jsp?id="+id;
					//iframe层-父子操作
					updateFrame = layer.open({
						title: "商品信息修改",
						type: 2,
						area: ['70%', '60%'],
						scrollbar: false, //默认：true,默认允许浏览器滚动，如果设定scrollbar: false，则屏蔽
						maxmin: true,
						content: url
					});
				}); */

			}
		</script>
	</div>
</body>

</html>