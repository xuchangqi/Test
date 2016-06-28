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

<title>My JSP 'chuchai.jsp' starting page</title>

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
	<form action="TravelAction.action">
		<p>
			<span>姓名:</span><s:label>${sessionScope.login.name}</s:label>
			<span>部门<span style="width:30px"></span>:</span>
			<s:label>000</s:label>
		</p>
		<p>
			<s:label>出差日期:</s:label>
			<input type="text" class="datetime" name="ta.cteatedate">&nbsp;&nbsp;&nbsp;
			<s:label>结束日期:</s:label>
			<input type="text" class="datetime" name="ta.overdate">
		</p>
		<p>
			<s:label>出差地点:</s:label>
			<input type="text" name="ta.place">&nbsp;&nbsp;&nbsp;
			<s:label>交通工具:</s:label>
			<select style="width:155">
				<option>123</option>
			</select>
		</p>
		<p>
			<s:label style="height: 50">出差事由:</s:label>
			<s:textarea style="width: 400;height: 50"></s:textarea>
		</p>
		<p>
			<s:label style="height: 50">工作任务:</s:label>
			<s:textarea style="width: 400;height: 50"></s:textarea>
		</p>
		<p>
			<s:label>借款余额:</s:label><input type="text" name="ta.money">
		</p>
		<hr />
		<p>
			<label>下一步审批人:</label><s:label><s:property value="user.name" /></s:label>
			&nbsp;&nbsp;&nbsp; <input type="submit" value="确定">&nbsp;&nbsp;&nbsp;
			<input type="button" value="取消">
		</p>
	</form>
</body>
</html>
