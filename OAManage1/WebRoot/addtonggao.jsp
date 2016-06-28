<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

<title>My JSP 'addtonggao.jsp' starting page</title>

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
		
		function re(){
			window.close();
		}
		
	</script>
	<form action="saveAnn.action">
		<p><label id="f1">标题：</label><input type="text" name="annun.tatil"></p> 
		<!-- <p><label id="f2">显示时间段</label><input type="text" size="8" class="datetime">到<input
			type="text" size="8" class="datetime"></p> --> 
		<p><label id="f3">发布时间</label><input
			type="text" size="8" class="datetime" name="annun.createtime">&nbsp;&nbsp;&nbsp;&nbsp;发布人：<!-- <input type="text" value="#session.login.name"> --></p>
		<p align="left" ><label id="f4">内容：</label>
		<textarea rows="4" cols="30" name="annun.name"></textarea></p>
		<p><label>
			<input
			type="checkbox" name="condition" value="1" />紧急
			<input type="checkbox"name="condition" value="0" />一般
		</label></p>
		<p><label>
			<input type="submit" value="发布">
			<!-- <input type="button" value="保存"> -->
			<input type="button" value="返回" onclick="re()">
		</label></p>
	</form>
</body>
</html>
