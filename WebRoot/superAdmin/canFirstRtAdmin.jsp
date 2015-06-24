<%@page import="com.novae.eswsplatform.bean.DeclarerBean"%>
<%@page import="com.novae.eswsplatform.service.AdminServiceImp"%>
<%@page import="com.novae.eswsplatform.service.AdminService"%>
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

<title>My JSP 'canFirstRtAdmin.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<%
	int id;
if (request.getParameter("id")==null) {
id=1;
} else {
id = Integer.parseInt(request.getParameter("id"));
}
String method = request.getParameter("method");
AdminService adminService = new AdminServiceImp();
List<DeclarerBean> allPassed = adminService.getPreCandidatesInGroup(id);
System.out.println("通过了"+allPassed.size());
List<DeclarerBean> allNotPassed = adminService.getNPreCandidatesInGroup(id);
System.out.println("没通过"+allNotPassed.size());
%>

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
						d.add(1, 0, "系统管理", "#", "系统管理", "mainFrame");
						d.add(2, 0, "用户信息管理", "#", "用户信息管理", "mainFrame");
						d.add(3, 0, "学科管理", "#", "学科管理", "mainFrame");
						d.add(4, 0, "候选人管理", "#", "候选人管理", "mainFrame");
						d.add(5, 0, "名额分配管理", "#", "名额分配管理", "mainFrame");
						d.add(6, 0, "投票管理", "#", "投票管理", "mainFrame");
						d.add(7, 0, "推荐单位管理", "#", "推荐单位管理", "mainFrame");

						//二级结点

						d.add(11, 1, "时间管理", "#", "时间管理");

						d.add(21, 2, "账号申请", "#", "账号申请");
						d.add(22, 2, "账号管理", "#", "账号管理");

						d.add(31, 3, "增加学科", "#", "增加学科");
						d.add(32, 3, "学科管理", "#", "学科管理");

						d.add(41, 4, "候选人学科管理", "#", "候选人学科管理");
						d.add(42, 4, "候选人初评结果管理", "#", "候选人初评结果管理");
						d.add(43, 4, "候选人终评结果管理", "#", "候选人终评结果管理");

						d.add(51, 5, "推荐单位提交名额管理", "#", "推荐单位提交名额管理");
						d.add(52, 5, " 初评名额管理", "#", "初评名额管理");
						d.add(53, 5, " 终评名额管理", "#", "终评名额管理");

						d.add(61, 6, "专家组投票管理", "#", "专家组投票管理");
						d.add(62, 6, "评审委员会投票管理", "#", "评审委员会投票管理");

						d.add(71, 7, "市科协", "#", "市科协");
						d.add(72, 7, "理科学会", "#", "理科学会");
						d.add(73, 7, "工科学会", "#", "工科学会");
						d.add(74, 7, "农林学会", "#", "农林学会");
						d.add(75, 7, "医药学会", "#", "医药学会");
						d.add(76, 7, "交叉学科学会", "#", "交叉学科学会");

						document.write(d);//输出
						//d.openAll();//把所有结点都打开
					</script>
				</div>
			</td>
			<td width="82%" align="center" valign="top">
				<div class="subtitle">辽宁省科学技术协会-候选人终评结果管理</div>
				<div class="secondtable">
					<div style="width:40%; float:left">
						选择学科分组： <select name="select" id="select" class="select">
							<option>理工一组</option>
							<option>理工二组</option>
							<option>理工三组</option>
							<option>农林组</option>
							<option>医药组</option>
							<option>交叉组</option>
						</select>
					</div>
					<div style="float:right;width:40%">
						选择排序方式： <select name="sort" id="select" class="select">
							<option>按姓名首字母</option>
							<option>按投票结果（由高到低）</option>
						</select>
					</div>
					<table width="95%" border="1" style="float:left">
						<tr>
							<td colspan="6">已入选名单</td>
						</tr>
						<tr>
							<td width="5%">选择</td>
							<td width="10%">序号</td>
							<td width="20%">姓名</td>
							<td width="30%">推荐单位</td>
							<td width="20%">学科类别</td>
							<td width="15%">&nbsp;</td>
						</tr>
						<%
							for (DeclarerBean declarerBean : allPassed) {
						%>
						<form action="ChangePreResultToFalse"
							method="get" name="ChangePreResult">
							<tr>
								<td><input type="checkbox" name="checkbox" id="checkbox" /></td>
								<td><%=declarerBean.getId()%><input name="id" type="hidden"
									value="<%=declarerBean.getId()%>" /></td>
								<td><%=declarerBean.getName()%></td>
								<td><%=adminService.getRefersByID(declarerBean.getRefer())
						.getName()%></td>
								<td><%=declarerBean.getSubject()%></td>
								<td><input name="change" type="submit" value="从已入选名单移除" /></td>
							</tr>
						</form>
						<%
							}
						%>
					</table>

					<table width="95%" border="1" style="float:left">
						<tr>
							<td colspan="6">未入选名单</td>
						</tr>
						<tr>
							<td width="5%">选择</td>
							<td width="10%">序号</td>
							<td width="20%">姓名</td>
							<td width="30%">推荐单位</td>
							<td width="20%">学科类别</td>
							<td width="15%">&nbsp;</td>
						</tr>
						<%
							for (DeclarerBean declarerBean : allNotPassed) {
						%>
						<form action="ChangePreResultToTrue"
							method="get" name="ChangePreResult">
						<tr>
							<td><input type="checkbox" name="checkbox" id="checkbox" /></td>
							<td><%=declarerBean.getId()%><input name="id" type="hidden"
								value="<%=declarerBean.getId()%>" /></td>
							<td><%=declarerBean.getName()%></td>
							<td><%=adminService.getRefersByID(declarerBean.getRefer())
						.getName()%></td>
							<td><%=declarerBean.getSubject()%></td>
							<td><input name="change" type="submit" value="加入到已入选名单" /></td>
						</tr>
						</form>
						<%
							}
						%>
					</table>
				</div>
			</td>
		</tr>
	</table>
	<section> </section> </article>

	<footer>
	<center>&copy; Copyright &copy; 2015. 辽宁省科学技术协会 All rights
		reserved.</center>
	</footer>
</body>
</html>
