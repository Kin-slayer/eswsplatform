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

<title>My JSP 'TimeChange.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
	<div class="subtitle">辽宁省科学技术协会-平台开放、关闭时间管理</div>
	<div class="secondtable">
		<table width="98%" border="1">
			<tr>
				<td width="11%">用户</td>
				<td width="40%">开放时间</td>
				<td width="40%">关闭时间</td>
				<td width="9%">&nbsp;</td>
			</tr>
			<tr>
				<td>申报者</td>
				<form action="../TimeChange1" method="get" name="apply">
					<td><input name="startYear" type="text" id="startYear"
						size="6" maxlength="4" /> 年 <input name="startMonth" type="text"
						id="startMonth" size="3" maxlength="2" /> 月 <input
						name="startDay" type="text" id="startDay" size="3" maxlength="2" />
						日 <input name="startHour" type="text" id="startHour" size="3"
						maxlength="2" /> 时 <input name="startMinute" type="text"
						id="startMinute" size="3" maxlength="2" /> 分 <input
						name="startSecond" type="text" id="startSecond" size="3"
						maxlength="2" /> 秒</td>
					<td>&nbsp; <input name="endYear" type="text" id="endYear"
						size="6" maxlength="4" /> 年 <input name="endMonth" type="text"
						id="endMonth" size="3" maxlength="2" /> 月 <input name="endDay"
						type="text" id="endDay" size="3" maxlength="2" /> 日 <input
						name="endHour" type="text" id="endHour" size="3" maxlength="2" />
						时 <input name="endMinute" type="text" id="endMinute" size="3"
						maxlength="2" /> 分 <input name="endSecond" type="text"
						id="endSecond" size="3" maxlength="2" /> 秒
					</td>
					<td><p>
							<input type="submit" name="enter" id="enter" value="确定" />
						</p>
						<p>
							<input type="submit" name="cancel" id="cancel" value="取消" />
						</p></td>
				</form>
			</tr>
			<tr>
				<td>推荐单位</td>
				<form action="../TimeChange2" method="get" name="unit">
					<td><input name="startYear" type="text" id="startYear"
						size="6" maxlength="4" /> 年 <input name="startMonth" type="text"
						id="startMonth" size="3" maxlength="2" /> 月 <input
						name="startDay" type="text" id="startDay" size="3" maxlength="2" />
						日 <input name="startHour" type="text" id="startHour" size="3"
						maxlength="2" /> 时 <input name="startMinute" type="text"
						id="startMinute" size="3" maxlength="2" /> 分 <input
						name="startSecond" type="text" id="startSecond" size="3"
						maxlength="2" /> 秒</td>
					<td>&nbsp; <input name="endYear" type="text" id="endYear"
						size="6" maxlength="4" /> 年 <input name="endMonth" type="text"
						id="endMonth" size="3" maxlength="2" /> 月 <input name="endDay"
						type="text" id="endDay" size="3" maxlength="2" /> 日 <input
						name="endHour" type="text" id="endHour" size="3" maxlength="2" />
						时 <input name="endMinute" type="text" id="endMinute" size="3"
						maxlength="2" /> 分 <input name="endSecond" type="text"
						id="endSecond" size="3" maxlength="2" /> 秒
					</td>
					<td><p>
							<input type="submit" name="enter" id="enter" value="确定" />
						</p>
						<p>
							<input type="submit" name="cancel" id="cancel" value="取消" />
						</p></td>
				</form>
			</tr>
			<tr>
				<td>评审专家</td>
				<form action="../TimeChange3" method="get" name="professor">
					<td><input name="startYear" type="text" id="startYear"
						size="6" maxlength="4" /> 年 <input name="startMonth" type="text"
						id="startMonth" size="3" maxlength="2" /> 月 <input
						name="startDay" type="text" id="startDay" size="3" maxlength="2" />
						日 <input name="startHour" type="text" id="startHour" size="3"
						maxlength="2" /> 时 <input name="startMinute" type="text"
						id="startMinute" size="3" maxlength="2" /> 分 <input
						name="startSecond" type="text" id="startSecond" size="3"
						maxlength="2" /> 秒</td>
					<td>&nbsp; <input name="endYear" type="text" id="endYear"
						size="6" maxlength="4" /> 年 <input name="endMonth" type="text"
						id="endMonth" size="3" maxlength="2" /> 月 <input name="endDay"
						type="text" id="endDay" size="3" maxlength="2" /> 日 <input
						name="endHour" type="text" id="endHour" size="3" maxlength="2" />
						时 <input name="endMinute" type="text" id="endMinute" size="3"
						maxlength="2" /> 分 <input name="endSecond" type="text"
						id="endSecond" size="3" maxlength="2" /> 秒
					</td>
					<td><p>
							<input type="submit" name="enter" id="enter" value="确定" />
						</p>
						<p>
							<input type="submit" name="cancel" id="cancel" value="取消" />
						</p></td>
				</form>
			</tr>
		</table>
	</div>
</body>
</html>
