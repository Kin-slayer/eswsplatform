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

<title>My JSP 'AccountAssignment.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/Style.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js">
	
</script>
<title>辽宁省科学技术协会-后台管理首页</title>

<style type="text/css">
<!--
.STYLE10 {
	font-size: 24px
}
-->
</style>
</head>

<body>
	<div class="subtitle">辽宁省科学技术协会-账号申请</div>
	<div class="secondtable">
		<table width="98%" border="1">
			<form action="AccountAssignment" method="post" name="AccountAssignment">
				<tr>
					<td width="25%">账号类型</td>
					<td width="25%"><select name="select" id="select"
						class="select">
							<option value="1">评审专家</option>
							<option value="2">推荐单位</option>
					</select></td>
					<td width="25%">真实姓名</td>
					<td width="25%" align="center" valign="middle"><input
						name="name" type="text" class="textArea" id="name" maxlength="25" /></td>
				</tr>
				<tr>
					<td>账户名</td>
					<td><input name="account" type="text" class="textArea"
						id="account" /></td>
					<td>密码</td>
					<td><input name="password" type="text" class="textArea"
						id="password" /></td>
				</tr>
				<tr>
					<input type="submit" name="enter" id="enter" value="确定" />
				</tr>
			</form>
		</table>
	</div>
</body>
</html>
