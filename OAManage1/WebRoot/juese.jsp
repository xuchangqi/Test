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

<title>角色</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>

<body>
	<script type="text/javascript">
		function showdialog() {
					$("#dialog")
							.attr(
									"style",
									"position:absolute;left:0px;top:0px;width:2000px;height:2000px;z-index:1;background-color:#ccc;opacity:0.3;");
					var x = $(window).width() / 2 - $(".tanchu").width() / 2;
					var y = $(window).height() / 2 - $(".tanchu").height() / 2;
					$(".tanchu").attr(
							"style",
							"position:absolute;left:" + x + "px;top:" + y
									+ "px;z-index:2;display:block;");
				}
				function closedialog() {
					$(".tanchu").attr("style", "display:none;");
					$("#dialog").attr("style", "display:none;")
				}
	</script>
	
	<div>
		<table border="1" bordercolor="red">
			<tr>
				<td colspan="4" align="right"><input type="button" value="添加"
					onclick="showdialog()"></td>
			</tr>
			<tr align="center">
				<td>排序</td>
				<td>ID</td>
				<td>名称</td>
				<td>操作</td>
			</tr>
			<!-- 添加数据 -->
			<%-- <tr>
				<td><s:property value="" /></td>
				<td><s:property value="" /></td>
				<td><s:property value="" /></td>
				<td><a><img src="images/juese/u452.png" onclick="" width="15" height="15"> </a><a><img src="images/juese/u669.png"
						onclick=""> </a><a><img src="images/juese/u667.png" onclick=""> </a></td>
			</tr> --%>
		</table>
	</div>
	
	<!-- 添加 -->
	<div class="tanchu" style="display: none;border: 1; border-width: 300px;">
		<form action="">
			<table>
				<tr>
					<td><span>名称:</span><input type="text">
					</td>
				</tr>
				<tr>
					<td><span>排序:</span><input type="text" size="3"></td>
				</tr>
				<tr>
					<td>
						<input type="button" value="关闭" onclick="closedialog()"> 
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id='dialog' style="display: none;"></div>
</body>
</html>
