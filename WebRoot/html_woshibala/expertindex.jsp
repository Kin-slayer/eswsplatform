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

<title>My JSP 'expertindex.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>评审专家组成员</title>
<link rel="stylesheet" type="text/css" href="css/button.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="square/red.css" rel="stylesheet">
<script src="css/icheck.min.js"></script>
<script src="css/.js"></script>


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
#
</style>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div id="all">

		<input type="image" name="imageField" id="imageField"
			src="picture/科协logo.jpg" />

	</div>
	<table width="1269" height="942" border="1">
		<tr>
			<td height="57" colspan="7"><p>
				<div id="subtitle">辽宁省优秀科技工作者评选服务平台</div>
				</p></td>
		</tr>
		<tr>
			<td height="37" colspan="7">&lt;jsp 生成专家名&gt;
				欢迎参加&lt;XX组&gt;评审投票！</td>
		</tr>
		<tr>
			<td width="153"><p>序号</p></td>
			<td width="166"><p>姓名</p></td>
			<td width="185"><p>性别</p></td>
			<td width="185"><p>工作单位</p></td>
			<td width="178"><p>学科类别</p></td>
			<div id="font1">
				<td width="178"><p>已投（）投票</p>
					<p>您可投（）票</p></td>
				<td width="203"><p>操作</p></td>
			</div>
		</tr>
		<tr bgcolor="#999999">
			<td>001</td>
			<td>张三</td>
			<td>男</td>
			<td>东北大学</td>
			<td>计算机科学</td>
			<td>

				<form id="form1" name="form1" method="post" action="">
					<input type="checkbox" name="a" id="a" /> 勾选投票
				</form>
			</td>
			<td><a class="button button-primary button-pill button-small">查看详情</a>
			</td>
		</tr>

		<tr>
			<td>002</td>
			<td>李四</td>
			<td>男</td>
			<td>东北大学</td>
			<td>计算机科学</td>
			<td>

				<form id="form1" name="form1" method="post" action="">
					<input type="checkbox" name="a" id="a" disabled="disabled" /> 勾选投票
				</form>
			</td>
			<td><a class="button button-primary button-pill button-small">查看详情</a>
			</td>
		</tr>
		<tr>
			<td height="662" colspan="7">这里由jsp生成所有该单位候选人的信息</td>
		</tr>
	</table>
	<table width="1269" border="0">
		<tr>
			<td width="338"><a
				class="button button-block button-rounded button-action button-large">生
					成 汇 总 表</a></td>
			<td width="161">&nbsp;</td>
			<td width="311"><a
				class="button button-block button-rounded button-caution button-large">提
					交 到 本 组</a></td>
			<td width="118">&nbsp;</td>
			<td width="319"><a
				class="button button-block button-rounded button-highlight button-large">查
					看 投 票 结 果</a></td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
</body>
</ html>