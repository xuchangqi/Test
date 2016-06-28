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
<title>添加部门</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="js/kandtabs/style.css" />
<body>
	<form name="add" action="" method="post">
		<table width="100%">
			<tr>
				<td class="title" colspan="2" align="center">添加新部门</td>
			</tr>
			<tr>
				<td width="42%" align="right" class="content">新增部门名称：</td>
				<td width="58%"><input name="dept.deptName" class="input-text"
					type="text" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="确定添加" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="bumen.jsp">返回</a></td>
			</tr>
		</table>
	</form>
</body>

</html>
