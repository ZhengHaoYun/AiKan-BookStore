<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		<title>爱看图书 -后台管理</title>

		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="img/favicon.ico"/>
		<link rel="bookmark" href="img/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="framework/html5shiv.min.js"></script>
	      	<script src="framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
		<script src="framework/jquery-ui-1.10.4.min.js"></script>
		<script src="framework/jquery.mousewheel.min.js"></script>
		<script src="framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->

		<link rel="stylesheet" type="text/css" href="css/login.css">
		<script type="text/javascript" src="js/login.js"></script>
	</head>

	<body>
		
		<!--主体 开始-->
		<div class="login_main">
			<!--轮播图 开始-->
			<div class="layui-carousel lbt" id="loginLbt">
				<div carousel-item>
					<div class="item" style="background: url(img/login_bg1.jpg) no-repeat; background-size: cover;"></div>
					<div class="item" style="background: url(img/login_bg2.jpg) no-repeat; background-size: cover;"></div>
				</div>
			</div>
			<!--轮播图 结束-->
			<div class="logo">
				<img src="img/logo.jpg" />
				<div>
					<h1>爱看图书</h1>
					<p>版本号:19.7.01</p>
				</div>
			</div>
			<div class="form_tzgg">
				<div class="form">
					<form   action="${pageContext.request.contextPath}/AdminServlet?method=login" method="post"  class="layui-form">
						<p style="color: red" id="txtLoginErr">${message }</p>
						<div class="title">用户登录</div>
						<div class="con" onclick="getFocus(this)">
							<input type="text" name="username" lay-verify="userName" placeholder="请输入您的用户名" autocomplete="off" class="layui-input">
						</div>
						<div class="con" onclick="getFocus(this)">
							<input type="password" name="password" required  lay-verify="passWord" placeholder="请输入您的账户密码" autocomplete="off" class="layui-input">
						</div>
						<div class="but">
							<button class="layui-btn" lay-submit lay-filter="submitBut">登录</button>
						</div>
					</form>
				</div>
				<script>
					layui.use('form', function() {
						var form = layui.form;
						form.verify({
				            userName: function(value, item){ //value：表单的值、item：表单的DOM对象
				                if(value == null || value == ""){
				                    return '请输入您的用户名！';
				                }
				            },
				            passWord: function(value, item){ 
				                if(value == null || value == ""){
				                    return '请输入您的账户密码！';
				                }
				            }
				        });
						//监听提交
						form.on('submit(formDemo)', function(data) {
							
							return false;
						});
					});
				</script>
				<div class="tzgg">
					<div class="title">通知公告</div>
					<div class="con">
						<ul>
							<li><span>06-16</span><a   target="_blank">穷在闹市无人问，富在深山有远亲。</a></li>
							<li><span>06-23</span><a   target="_blank">没有最好的代码，只有最好的思路。</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--主体 结束-->
	</body>

</html>