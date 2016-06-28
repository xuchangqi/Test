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

<title>My JSP 'huiyishi.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
body {
	FONT-FAMILY: 'Lucida Grande', 'Lucida Sans Unicode', '宋体', '新宋体', arial,
		verdana, sans-serif;
	text-align: center;
}

TD {
	FONT-SIZE: 12px;
	COLOR: #333;
}

.solid-bottom {
	BORDER-BOTTOM: #dddddd 1px solid
}

.sec1 {
	background-color: #F4F4F4;
	cursor: hand;
	color: #000000;
	border-left: 1px solid #FFFFFF;
	border-top: 1px solid #FFFFFF;
	border-right: 1px solid gray;
	border-bottom: 1px solid #FFFFFF
}

.sec2 {
	background-color: #EAEAEA;
	cursor: hand;
	color: #58A200;
	border-left: 1px solid #FFFFFF;
	border-top: 1px solid #FFFFFF;
	border-right: 1px solid gray;
	font-weight: bold;
}

.tanchu {
	display: none;
	height: auto;
	width: auto;
	background-color: #FFFFFF;
}
</style>
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
	<table width="800" border="0" cellpadding="1" cellspacing="0"
		class="solid-bottom">
		<tr>
			<td width="800" height="19"><table border="1" cellpadding="0"
					cellspacing="0" id="secTable" width="100%">
					<tr>
						<td width="120" align="center" class="sec2" onclick="secBoard(0)">会议室预订</td>
						<td width="120" align="center" class="sec1" onclick="secBoard(1)">会议室预订管理</td>
						<td width="110" align="center" class="sec1" onclick="secBoard(2)">会议室管理</td>
					</tr>
				</table></td>
			<td width="17"><script language="JavaScript"
					type="text/javascript">
				function secBoard(n) {
					for (i = 0; i < secTable.cells.length; i++)
						secTable.cells[i].className = "sec1";
					secTable.cells[n].className = "sec2";
					for (i = 0; i < mainTable.tBodies.length; i++)
						mainTable.tBodies[i].style.display = "none";
					mainTable.tBodies[n].style.display = "block";
				}
				$(function() {
					$(".datetime").datepicker({
						dateFormat : "yy-mm-dd"
					});
					secBoard(0);
				});
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
			</script></td>
		</tr>
	</table>

	<table border="1" cellspacing="5" cellpadding="0" width="800"
		height="120" id="mainTable">
		<tr>
			<td height="120" width="100%"><form action="">
					<label style="font-size: 12">会议室预订时间段:</label> <input
						class="datetime" type="text" size="8">&nbsp;到&nbsp; <input
						class="datetime" type="text" size="8">&nbsp;&nbsp;&nbsp; <span
						id="p2" style="font-size: 12">提示:预定时间段必须为同一天&nbsp;&nbsp;&nbsp;</span>
					<input style="height: 22;" type="button" value="查询"><br />
					<label>可预订会议室查询结果：</label>
					<table width="100%" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="8">选择</td>
							<td align="center">会议室名称</td>
							<td align="center">会议室介绍</td>
						</tr>
						<%-- <tr>
							<td colspan="8"><input type="checkbox">
							</td>
							<td align="left"><s:property value=""></s:property></td>
							<td align="left"><s:property value=""></s:property></td>
						</tr> --%>
					</table>
					<span style="font-size: 12">会议室预订人:</span> <input type="text"
						value="123" readonly="readonly" size="8">
					&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: 12">会议类型:</span> <select
						id="s1" class="s1_下拉框">
						<option value="selected">默认类型</option>
						<option>123</option>
					</select>&nbsp;&nbsp;&nbsp;&nbsp;<input style="height: 22;" type="submit"
						value="预定">
				</form>
			</td>
		</tr>

		<tbody style="display:block;">
			<tr>
				<td height="120"><label style="font-size: 12">会议室预订时间段:</label>
					<input class="datetime" type="text" size="8" style="height: 22">&nbsp;到&nbsp;
					<input class="datetime" type="text" size="8" style="height: 22">&nbsp;&nbsp;&nbsp;
					<span id="p2" style="font-size: 12">提示:预定时间段必须为同一天&nbsp;&nbsp;&nbsp;</span><br />
					<label>预定人:</label><input type="text" size="8">&nbsp;&nbsp;&nbsp;<label>会议室名称:</label><input
					type="text" size="8">&nbsp;&nbsp;&nbsp;<span
					style="font-size: 12">会议类型:</span> <select id="s1" class="s1_下拉框">
						<option value="selected">默认类型</option>
						<option>123</option>
				</select><br /> <input type="submit" value="查询"><br /> <label>查询结果:</label>
					<hr />
					<table border="1" bordercolor="#FFF" align="center" width="100%">
						<tr align="center">
							<td>选择</td>
							<td>会议室名称</td>
							<td>会议室介绍</td>
							<td>会议室起始时间</td>
							<td>会议室结束时间</td>
							<td>会议室用途</td>
							<td>记录人</td>
							<td>预订人</td>
							<td>预定时间</td>
						</tr>
						 <tr align="left">
							<td><input type="checkbox">
							</td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
							<td><s:property value=""/></td>
						</tr> 
					</table>
		</tbody>

		<tbody style="display:none;">
			<tr>
				<td height="120"><label style="text-align: right;"><span
						onclick="showdialog()">添加会议室</span> </label>
					<table width="100%" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="8">选择</td>
							<td align="center">会议室名称</td>
							<td align="center">会议室介绍</td>
						</tr>
						<tr>
							<td colspan="8"><input type="checkbox"></td>
							<td align="left">Boardroom.name</td>
							<td align="left">Boardroom.miaosu</td>
						</tr>
					</table></td>
			</tr>
		</tbody>
	</table>
	<div class="tanchu">
		<form action="huiyishi.jsp">
			<table>
				<tr>
					<td><label>会议室名称:</label><input type="text">
					</td>
				</tr>
				<tr>
					<td><label>描述:</label><input type="text"></td>
				</tr>
				<tr>
					<td><input type="submit" value="添加"></td>
					<td><input type="button" value="关闭" onclick="closedialog()">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="dialog"></div>
</body>
</html>