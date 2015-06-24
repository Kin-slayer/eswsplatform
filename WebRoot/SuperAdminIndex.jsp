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

<title>super admin index page</title>

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
	<header> <span class="STYLE10">
		<center>辽宁省科学技术协会-后台管理首页</center>
	</span> </header>

	<aside> </aside>
	<article>
	<table width="98%" border="1" class="maintable">
		<tr>
			<td width="18%" valign="top">
				<div>
					<script type="text/javascript">
						d = new dTree("d");//创建新的d对象

						d.config.useCookies = false; //不使用cookies
						//d.config.useStatusText = true; //状态栏显示文本
						d.config.closeSameLevel = false; //不关闭同一层次其他节点

						//d.add(id,pid,name,url,title,target);
						//id:编号 pid:父节点 name:名称 url:url地址 title:标题 target:跳转框架 mainFrame表示在新的页面打开

						//root结点
						d.add(0, -1, "后台管理中心", "#", "后台管理中心");

						//一级结点
						d.add(1, 0, "系统管理", "#", "系统管理", "iframe");
						d.add(2, 0, "用户信息管理", "#", "用户信息管理", "iframe");
						d.add(3, 0, "学科管理", "#", "学科管理", "iframe");
						d.add(4, 0, "候选人管理", "#", "候选人管理", "iframe");
						d.add(5, 0, "名额分配管理", "#", "名额分配管理", "iframe");
						d.add(6, 0, "投票管理", "#", "投票管理", "iframe");
						d.add(7, 0, "推荐单位管理", "#", "推荐单位管理", "iframe");

						//二级结点

						d.add(11, 1, "时间管理", "TimeChange.jsp", "时间管理", "iframe");

						d.add(21, 2, "账号分配", "AccountAssignment.jsp", "账号分配", "iframe");
						d.add(22, 2, "账号管理", "#", "账号管理", "iframe");

						d.add(31, 3, "增加学科", "#", "增加学科", "iframe");
						d.add(32, 3, "学科管理", "#", "学科管理", "iframe");

						d.add(41, 4, "候选人学科管理", "#", "候选人学科管理", "iframe");
						d.add(42, 4, "候选人初评结果管理", "#", "候选人初评结果管理", "iframe");
						d.add(43, 4, "候选人终评结果管理", "#", "候选人终评结果管理", "iframe");

						d.add(51, 5, "推荐单位提交名额管理", "#", "推荐单位提交名额管理", "iframe");
						d.add(52, 5, " 初评名额管理", "#", "初评名额管理", "iframe");
						d.add(53, 5, " 终评名额管理", "#", "终评名额管理", "iframe");

						d.add(61, 6, "专家组投票管理", "#", "专家组投票管理", "iframe");
						d.add(62, 6, "评审委员会投票管理", "#", "评审委员会投票管理", "iframe");

						d.add(71, 7, "市科协", "#", "市科协", "iframe");
						d.add(72, 7, "理科学会", "#", "理科学会", "iframe");
						d.add(73, 7, "工科学会", "#", "工科学会", "iframe");
						d.add(74, 7, "农林学会", "#", "农林学会", "iframe");
						d.add(75, 7, "医药学会", "#", "医药学会", "iframe");
						d.add(76, 7, "交叉学科学会", "#", "交叉学科学会", "iframe");

						document.write(d);//输出
						//d.openAll();//把所有结点都打开
					</script>
				</div>
			</td>
			<td width="82%" align="center" valign="top"><iframe
					name="iframe" frameborder="0" width="100%" height="500px"
					align="center" valign="top" src="TimeChange.jsp"></iframe></td>
		</tr>
	</table>

	<section> </section> </article>

	<footer>
	<center>&copy; Copyright &copy; 2015. 辽宁省科学技术协会 All rights
		reserved.</center>
	</footer>
</body>
</html>
