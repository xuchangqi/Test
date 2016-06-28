<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>操作日志</title>

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

<body>
	<script type="text/javascript">
		$(function() {
			$(".datetime").datepicker({
				dateFormat : "yy-mm-dd"
			});
			secBoard(0);
		});
	</script>
	<div>
		<form action="">
			用户名:<input type="text"> 时间段:<input type="text"
				class="datetime">to<input type="text" class="datetime">&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="submit" value="查找">
		</form>
	</div>
 	<span>操作日志列表</span>
	<table border="1" bordercolor="red">
		<tr align="center">
			<td>编号</td>
			<td>用户名</td>
			<td>角色</td>
			<td>事件内容</td>
			<td>备注</td>
			<td>操作时间</td>
		</tr>
		<tr align="center">
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
		</tr>
	</table>
</body>
</html>
