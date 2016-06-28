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

<title>My JSP 'shouru.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery-ui/js/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/jquery-ui/js/jquery.ui.widget.js"></script>
<script type="text/javascript"
	src="js/jquery-ui/js/jquery.ui.datepicker.js"></script>
<link rel="stylesheet" href="js/jquery-ui/js/jquery.ui.all.css"
	type="text/css"></link>
<link rel="stylesheet" href="js/jquery-ui/js/jquery.ui.tabs.css"
	type="text/css"></link>
</head>
<script type="text/javascript">
	$(function() {
		$(".datetime").datepicker({
			dateFormat : "yy-mm-dd"
		});
		secBoard(0);
	});
</script>
<body>
	<form action="">
		<div class="current">
			<a href="#">个人桌面</a><span> > </span> <a href="#">系统管理</a><span>></span>部门管理
		</div>
		<hr />
		<table >
			<tr>
				<td>姓名：<input type="text">
				</td>
			</tr>
			<tr>
				<td>申请时间:<input class="datetime" type="text">
				</td>
			</tr>
			<tr>
				<td>部门:<span></span>
				</td>
			</tr>
			<tr>
				<td>岗位:<span></span>
				</td>
			</tr>
			<tr>
				<td><span style="height: 70px">申请事由:</span> <textarea rows="4"
						cols="50"></textarea>
				</td>
			</tr>
			<tr height="50"  style="border-bottom: 1px solid red;">
				<td></td>
			</tr>
			<tr height="1"><td><hr>/</td></tr>
			<tr>
				<td><label>下一步审批人:</label> <select style="width:200">
						<option>123</option>
				</select>&nbsp;&nbsp;&nbsp; <input type="submit" value="确定">&nbsp;&nbsp;&nbsp;
					<input type="button" value="取消">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
