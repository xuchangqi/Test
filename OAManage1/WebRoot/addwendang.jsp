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

<title>添加文档</title>

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
	<div align="center">
		<form name="addwendang" action="" method="post">
			<table width="100%">
				<tr>
					<td class="title" colspan="2" align="center">添加文档</td>
				</tr>
				<tbody>
					<tr>
						<td width="42%" align="right" class="content">文档名称：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">所有者：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">所属部门：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">存储路径：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">说明：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">文件内容：</td>
						<td width="58%"><input type="text" /></td>
					</tr>
					<tr>
						<td width="42%" align="right" class="content">创建时间：</td>
						<td width="58%"><input type="text" class="datetime"/></td>
					</tr>
				</tbody>
			</table>
            <input type="submit" value="添加" /><input type="button" value="取消" />
		</form>
	</div>
</body>
</html>
