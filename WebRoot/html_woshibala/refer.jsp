<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="com.novae.eswsplatform.bean.DeclarerBean"%>
<%@page import="com.novae.eswsplatform.service.ReferServiceImp"%>
<%@page import="com.novae.eswsplatform.service.ReferService"%>
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

<title>My JSP 'refer.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script language="JavaScript" src="test.js">
	
</script>
<style type="text/css">
footer {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #999;
	font-size: 14px;
	margin-bottom: 0;
}

body {
	position: relative;
	color: #000;
	background: #FFF;
	text-align: center;
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

#font1 {
	font-family: "Arial Unicode MS", "Microsoft JhengHei Light",
		"Microsoft JhengHei UI Light", "Microsoft YaHei UI Light";
	font-size: 20px;
}

#subtitle {
	text-align: center;
	font-family: "Arial Unicode MS", "Microsoft JhengHei Light",
		"Microsoft JhengHei UI Light", "Microsoft YaHei UI Light";
	font-size: 24px;
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
	text-align: center;
}

.input-group {
	text-align: center;
}

#all {
	margin: auto;
	text-align: center;
}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<%
	Cookie[] cookies = request.getCookies();
	int referId = 0;
	String referName = "";
	boolean isSubmit = false;
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookieTemp = cookies[i];
			if ("referId".equals(cookieTemp.getName())) {
				referId = Integer.parseInt(cookieTemp.getValue());
			}
			if ("referName".equals(cookieTemp.getName())) {
				referName = cookieTemp.getValue();
			}
		}
	}

	ReferService referService = new ReferServiceImp();

	try {
		isSubmit = referService.isSubmit(referId);
	} catch (Exception e) {
		response.sendRedirect("login.jsp");
		// TODO: handle exception
	}

	List<DeclarerBean> allDeclarers = referService
			.getDeclarers(referId);
%>

<body>
	<div id="all">

		<input type="image" name="imageField" id="imageField"
			src="picture/科协logo.jpg" />

	</div>
	<table width="1250" height="942" border="1">
		<tr>
			<td height="57" colspan="7"><p>
				<div id="subtitle">辽宁省优秀科技工作者评选服务平台</div>
				</p></td>
		</tr>
		<tr>
			<td height="37" colspan="7"><%=referName%></td>
		</tr>
		<tr>
			<td width="134" height="60"><p>
					全选 <input name="input2" type="checkbox" value="" />
				</p></td>
			<div id="font1">
				<td width="153"><p>序号</p></td>
				<td width="166"><p>姓名</p></td>
				<td width="185"><p>性别</p></td>
				<td width="185"><p>工作单位</p></td>
				<td width="178"><p>学科类别</p></td>
				<td width="203"><p>操作</p></td>
			</div>
		</tr>
		<tr>
			<td height="42"><input name="input" type="checkbox" value="" /></td>
			<td>001</td>
			<td>张三</td>
			<td>男</td>
			<td>东北大学</td>
			<td>计算机科学</td>
			<td><a class="button button-primary button-pill button-small">查看详情</a>
			</td>
		</tr>
		<%
			for (int i = 1; i < allDeclarers.size(); i++) {
		%>
		<tr>
			<td height="42"><input name="input<%=i%>" type="checkbox"
				value="" /></td>
			<td><%=allDeclarers.get(i).getId()%></td>
			<td><%=allDeclarers.get(i).getName()%></td>
			<td><%=allDeclarers.get(i).getSex()%></td>
			<td><%=allDeclarers.get(i).getWorkUnit()%></td>
			<td><%=allDeclarers.get(i).getSubject()%></td>
			<td><a class="button button-primary button-pill button-small">查看详情</a>
			</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td height="662" colspan="7">这里由jsp生成所有该单位候选人的信息</td>
		</tr>
		<tr>
			<td height="39" colspan="7"><a
				class="button button-block button-rounded button-action button-large button-pill">生
					成 汇 总 表</td>
		</tr>
	</table>
</body>
</ html>