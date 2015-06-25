<%@page import="com.novae.eswsplatform.service.LoginServiceImp"%>
<%@page import="com.novae.eswsplatform.service.LoginService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录界面</title>
<link rel="stylesheet" type="text/css"
	href="html_woshibala/css/button.css">
<link rel="stylesheet" type="text/css"
	href="html_woshibala/css/bootstrap.css">
<script language="JavaScript" src="test.js">
	
</script>
<style type="text/css">
footer {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #999;
	font-size: 14px;
	margin-bottom: 0;
}

#title1 {
	position: relative;
	font-size: 50px;
	font-style: normal;
	font-family: "Arial Unicode MS", "Microsoft JhengHei Light",
		"Microsoft JhengHei UI Light", "Microsoft YaHei UI Light";
	text-align: center;
	color: #FFF;
	margin-top: 30px;
}

#title2 {
	font-size: 36px;
	color: #FFF;
	padding-left: 10px;
	text-align: center;
}

table {
	margin: auto;
}

#login {
	text-align: center;
	font-size: 24px;
	color: #000;
	font-family: "Arial Unicode MS", "Microsoft JhengHei Light",
		"Microsoft JhengHei UI Light", "Microsoft YaHei UI Light";
}

#sub {
	text-align: center;
}

#form1 {
	text-align: center;
	padding-top: 3px;
}

#loginwindow {
	padding-top: 10px;
}

#password {
	top: 10px;
	clip: rect(10px, auto, auto, auto);
}

#all {
	margin: auto;
	text-align: center;
}

#bg {
	background-color: #FFF;
}

#div1 {
	display: none;
	color: #C03;
}

#div2 {
	display: none;
	color: #C03;
}

#div3 {
	display: none;
	color: #C03;
}
</style>
<script language="JavaScript" type="text/JavaScript">
<!--
	var flag0 = false;
	var flag0 = false;
	var flag2 = false;

	function checkusername() {
		if (document.getElementById) {
			target = document.getElementById('div1');
			var aaa = document.form1.username.value;
			//alert(aaa);
			if (/[\u4e00-\u9fa5]/.test(aaa) || aaa.length > 16 || aaa == null)//判断如果输入用户名是否汉字
			{
				target.style.display = "block"; //block 显示
				flag0 = false;
			} else {
				target.style.display = "none";//若不是汉字显示提示内容
				flag0 = true;//none 不显示
			}
		}
	}
	function checkpassword() {
		if (document.getElementById) {
			target = document.getElementById('div2');
			var aaa = document.form1.password.value;
			//alert(aaa);
			if (/[\u4e00-\u9fa5]/.test(aaa) || aaa.length > 16 || aaa == null) {
				target.style.display = "block";
				flag1 = false;
			} else {
				target.style.display = "none";//若不是汉字显示提示内容
				flag1 = true;
			}

		}
	}
	function checksubmit() {
		if (document.getElementById) {
			target = document.getElementById('div3');
			var radio0 = document.getElementById('Radio0');
			var radio1 = document.getElementById('Radio1');
			var radio2 = document.getElementById('Radio2');
			if (radio0.checked || radio1.checked || radio2.checked) {
				flag2 = true;
				target.style.display = "none";
				return true;
			} else {
				flag = false;
				target.style.display = "block";
				return false;
			}
		}
	}
	-->
</script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<%
	String account = "";
	String psw = "";
	int role = 0;
	Cookie cookies[] = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
		Cookie cookie = cookies[i];
		if (cookie.getName().equals("account")) {
			account = cookie.getValue();
		} else if (cookie.getName().equals("psw")) {
			psw = cookie.getValue();
		} else if (cookie.getName().equals("role")) {
			role = Integer.parseInt(cookie.getValue());
		}
	}
	if (role == 0) {
	} else {
		LoginService loginService = new LoginServiceImp();
		if (loginService.isOpen(role)) {
			if (loginService.login(account, psw, role)) {
				switch (role) {
				case 1:
					response.sendRedirect("index.jsp");
					break;
				case 2:
					response.sendRedirect("referindex.jsp");
					break;
				case 3:
					response.sendRedirect("expertindex.jsp");
					break;
				default:
					response.sendRedirect("login.jsp");
					break;
				}
			}
		}
	}
%>

<body background="picture/5-120601092G2-51.png">
	<div id="all">

		<input type="image" name="imageField" id="imageField"
			src="picture/科协logo.jpg" />


		<table width="1250" height="403" border="0">

			<tr>
				<td width="63%" rowspan="2" bgcolor="#3399FF" background="bbb.jpg">\
					<div id="title2">2014年度</div>
					<div id="title1">辽宁省优秀科技工作者评选</div>
				</td>
				<td height="98" bgcolor="#FFFFFF">
					<div id="login">登陆系统</div>
				</td>

			</tr>
			<tr>
				<td width="37%" valign="top" bgcolor="#FFFFFF"><div>
						<form id="form1" name="form1" method="post" action="Login"
							onsubmit="return checksubmit();">
							<p>
								<label for="username"></label> <label for="password"></label> <input
									type="radio" name="RadioGroup1" value="1" id="Radio0" />申报人</label> <input
									type="radio" name="RadioGroup1" value="2" id="Radio1" />推荐单位</label> <input
									type="radio" name="RadioGroup1" value="3" id="Radio2" />评审专家</label>
							<div id="div3">请选择登录者身份</div>
					</div> <input type="text" name="username" id="username"
					placeholder="请输入用户名" class=" button-rounded"
					onblur="checkusername()" />
					</p>
					<p>
					<div id="div1">请输入16个以内数字、字母或符号</div>
					</p>
					<p>
						<input type="password" name="password" id="password"
							placeholder="请输入密码" class=" button-rounded"
							onblur="checkpassword()" />
					<p>
					<div id="div2">请输入16个以内数字、字母或符号</div>
					</p>
					<p>
						<input type="submit" name="submit" id="submit" value="登 录"
							class="button button-glow button-border button-rounded button-primary" />
					</p>
					</form>
					</div>
			</tr>
			<tr>
				<td height="120" colspan="2" align="left"><p></p>
					<p>&nbsp; </p> <a href=""> <input name="signup" id="signup"
						value="还未注册？ 点击进入申报者注册页面"
						class="button button-glow button-border button-rounded button-primary" />
				</a></td>
			</tr>

		</table>
</body>
</html>
