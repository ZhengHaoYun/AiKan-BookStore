//表单验证
$(function() {
	var E=false,N=false,P=false,R=false,V=true;
	//当各项验证不能通过时，按钮点击无效
	$("#btnClientRegister").click(function(){
		if(E && N && P && R){
			return true;
		}else{
			return false;
		}
	});
	
	// email 地址
	var e_color = $("#email\\.info").css("color");
	$("#txtEmail").blur(function() {
		E = false;
		var val = $(this).val();
		var info = $("#email\\.info");
		info.html("");
		info.css("color",e_color);
		if (val == "") {
			info.text("Email不能为空!");
		} else if (!val.match(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/)) {
			info.text("Email格式不正确!");
		} else {
//			info.html("<img src='../images/my/ajax_loader.gif' />");
//			$.post(
//				"registVali!valiEmail",
//				{'user.email':val},
//				function(data){
//					if(data.flag){
//						info.html("<img src='../images/my/ajax_ok.png' />恭喜，该Email可用").css('color','green');
//						E = true;
//					}else{
//						info.text("Email已存在");
//					}
//				}
//			);
			E = true;
			info.html("<span>&nbsp√</span>");
		}
	});

	// 昵称
	$("#txtNickName").blur(function() {
		N = false;
		var val = $(this).val();
		var info = $("#name\\.info"); //获取昵称不符合要求时的提示框
		info.html("");
		//1.判断是否输入为空
		if (val == "") {
			//如果为空，提示以下信息！
			info.text("昵称不能为空");
			//如果不为空，使用正则表达式判断昵称格式
		//2.判断昵称格式
		} else if (!val.match(/^[a-z0-9\u4e00-\u9efa5]{4,20}$/)) {
			info.text("昵称格式不正确");
		} else {
		//3.输入正确
		//标志，每个验证函数都有一个标志，当所有的标志都为true时，提交才有效。
			N = true; 
			info.html("<span>&nbsp√</span>");
		}
	});
	// 密码
	$("#txtPassword").blur(function() {
		P = false;
		var val = $(this).val();
		var info = $("#password\\.info");
		info.html("");
		if (val == "") {
			info.text("密码不能为空");
		} else if (!val.match(/^[a-zA-Z0-9]{6,20}$/)) {
			info.text("密码格式不正确");
		} else {
			P = true;
			info.html("<span>&nbsp√</span>");
		}
	});
	
	// 再次输入密码验证
	$("#txtRepeatPass").blur(function() {
		R = false;
		var val = $(this).val();
		var info = $("#password1\\.info");
		info.html("");
		if (val == "") {
			info.text("验证密码不能为空");
		} else if (val != $("#txtPassword").val()) {
			info.text("2次密码不相同");
		} else {
			R = true;
			info.html("<span>&nbsp√</span>");
		}
	});
	
	// 验证码
//	$("#txtVerifyCode").blur(function() {
//		V = false;
//		var val = $(this).val();
//		var info = $("#number\\.info");
//		info.html("");
//		if (val == "") {
//			info.text("验证码不能为空");
//		}else {
//			info.html("<img src='../images/my/ajax_loader.gif' />");
//			$.post("registVali!valiCheckCode",
//					{'checkCode':val},
//					function(data){
//						if(data.flag){
//							info.html("<img src='../images/my/ajax_ok.png' />");
//							V = true;
//						}else{
//							info.text("验证码错误");
//						}
//					}
//				);
//		}
//	});
	
});

////刷新验证码
//$(function(){
//	$("#checkCode").click(function(){
//		$("#imgVcode").attr("src","checkCode.action?dt="+new Date().getTime());
//	});
//});
