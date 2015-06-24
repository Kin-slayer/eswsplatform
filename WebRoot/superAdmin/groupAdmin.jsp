<%@page import="com.novae.eswsplatform.bean.GroupBean"%>
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

<title>My JSP 'groupAdmin.html.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css/Style.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js">
	
</script>

<style type="text/css">
<!--
.STYLE10 {
	font-size: 24px
}
-->
</style>
<link rel="stylesheet" href="css/Style.css" type="text/css" />
<link rel="stylesheet" href="css/jquery.dataTables.css" />
<script type="text/javascript" src="js/dtree.js">
	
</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/showButton.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>
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

	<script>
		$(document)
				.ready(
						function(e) {
							$("#inner")
									.dataTable(
											{

												"sScrollX" : "100%", //表格的宽度  
												"sScrollXInner" : "100%", //表格的内容宽度    
												"bScrollCollapse" : true, //当显示的数据不足以支撑表格的默认的高度时，依然显示纵向的滚动条。(默认是false)      
												"bPaginate" : true, //是否显示分页    
												"bLengthChange" : true, //每页显示的记录数    
												"bFilter" : true, //搜索栏    
												"bSort" : true, //是否支持排序功能    
												"bInfo" : true, //显示表格信息    
												"bAutoWidth" : false, //自适应宽度    
												"aaSorting" : [ [ 0, "asc" ] ], //给列表排序 ，第一个参数表示数组 (由0开始)。1 表示Browser列。第二个参数为 desc或是asc    
												"aoColumns" : [
														{
															"bSortable" : false
														},
														{
															"aaSorting" : [ [
																	0, "asc" ] ]
														}, {
															"bSortable" : false
														}, null, {
															"bSortable" : false
														} ], //列设置，表有几列，数组就有几项    
												"bStateSave" : true, //保存状态到cookie *************** 很重要 ， 当搜索的时候页面一刷新会导致搜索的消失。使用这个属性就可避免了    
												"sPaginationType" : "full_numbers", //分页，一共两种样式，full_numbers和two_button(默认)    
												"oLanguage" : {
													"sLengthMenu" : "每页显示 _MENU_ 条记录",
													"sZeroRecords" : "对不起，查询不到任何相关数据",
													"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
													"sInfoEmtpy" : "找不到相关数据",
													"sInfoFiltered" : "数据表中共为 _MAX_ 条记录)",
													"sProcessing" : "正在加载中...",
													"sSearch" : "搜索",
													"sUrl" : "", //多语言配置文件，可将oLanguage的设置放在一个txt文件中，例：Javascript/datatable/dtCH.txt    
													"oPaginate" : {
														"sFirst" : "第一页",
														"sPrevious" : " 上一页 ",
														"sNext" : " 下一页 ",
														"sLast" : " 最后一页 "
													}
												}, //多语言配置    
												"bJQueryUI" : false, //可以添加 jqury的ui theme  需要添加css   
												"aLengthMenu" : [
														[ 10, 25, 50, -1, 0 ],
														[ "每页10条", "每页25条",
																"每页50条",
																"显示所有数据",
																"不显示数据" ] ]
											//设置每页显示记录的下拉菜单  
											});
						});
	</script>
</head>

<%
	AdminService adminService = new AdminServiceImp();
List<GroupBean> allGroups = adminService.getGroups();
%>

<body>

	<script>
		$(document)
				.ready(
						function(e) {
							$("#inner")
									.dataTable(
											{

												"sScrollX" : "100%", //表格的宽度  
												"sScrollXInner" : "100%", //表格的内容宽度    
												"bScrollCollapse" : true, //当显示的数据不足以支撑表格的默认的高度时，依然显示纵向的滚动条。(默认是false)      
												"bPaginate" : true, //是否显示分页    
												"bLengthChange" : true, //每页显示的记录数    
												"bFilter" : true, //搜索栏    
												"bSort" : true, //是否支持排序功能    
												"bInfo" : true, //显示表格信息    
												"bAutoWidth" : false, //自适应宽度    
												"aaSorting" : [ [ 0, "asc" ] ], //给列表排序 ，第一个参数表示数组 (由0开始)。1 表示Browser列。第二个参数为 desc或是asc    
												"aoColumns" : [
														{
															"bSortable" : false
														},
														{
															"aaSorting" : [ [
																	0, "asc" ] ]
														}, {
															"bSortable" : false
														}, null, {
															"bSortable" : false
														} ], //列设置，表有几列，数组就有几项    
												"bStateSave" : true, //保存状态到cookie *************** 很重要 ， 当搜索的时候页面一刷新会导致搜索的消失。使用这个属性就可避免了    
												"sPaginationType" : "full_numbers", //分页，一共两种样式，full_numbers和two_button(默认)    
												"oLanguage" : {
													"sLengthMenu" : "每页显示 _MENU_ 条记录",
													"sZeroRecords" : "对不起，查询不到任何相关数据",
													"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
													"sInfoEmtpy" : "找不到相关数据",
													"sInfoFiltered" : "数据表中共为 _MAX_ 条记录)",
													"sProcessing" : "正在加载中...",
													"sSearch" : "搜索",
													"sUrl" : "", //多语言配置文件，可将oLanguage的设置放在一个txt文件中，例：Javascript/datatable/dtCH.txt    
													"oPaginate" : {
														"sFirst" : "第一页",
														"sPrevious" : " 上一页 ",
														"sNext" : " 下一页 ",
														"sLast" : " 最后一页 "
													}
												}, //多语言配置    
												"bJQueryUI" : false, //可以添加 jqury的ui theme  需要添加css   
												"aLengthMenu" : [
														[ 10, 25, 50, -1, 0 ],
														[ "每页10条", "每页25条",
																"每页50条",
																"显示所有数据",
																"不显示数据" ] ]
											//设置每页显示记录的下拉菜单  
											});
						});
	</script>
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
				<div class="subtitle">辽宁省科学技术协会-学科组管理</div>
				<div class="secondtable">
					<table border="1" id="inner">
						<thead>
							<th width="15%">选中</th>
							<th width="15%">组号</th>
							<th width="28%">学科组名</th>
							<th width="20%">最大分配名额</th>
							<th width="22%">操作</th>
						</thead>
						<form action="abc" method="get" name="groupAdmin">
							<tr>
								<td><input type="checkbox" name="checkbox" id="checkbox" /></td>
								<td>1</td>
								<td>&nbsp;</td>
								<td>abc</td>
								<td><input type="button" name="edit" id="edit" value="修改"
									onclick="abc" /> <input type="button" name="delete"
									id="delete" value="删除" onclick="abc" /></td>
							</tr>
						</form>
						<form action="abc" method="get" name="groupAdmin">
							<tr>
								<td><input type="checkbox" name="checkbox" id="checkbox" /></td>
								<td>2</td>
								<td>&nbsp;</td>
								<td>def</td>
								<td><input type="button" name="edit" id="edit" value="修改"
									onclick="abc" /> <input type="button" name="delete"
									id="delete" value="删除" onclick="abc" /></td>
							</tr>
						</form>
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
