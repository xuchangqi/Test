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

<title>My JSP 'error.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="js/dandelion.css" type="text/css"
	media="screen"></link>
</head>

<body>
	<div id="da-wrapper" class="fluid">

		<!-- Content -->
		<div id="da-content">

			<!-- Container -->
			<div class="da-container clearfix">

				<div id="da-error-wrapper">

					<div id="da-error-pin"></div>
					<div id="da-error-code">
						error <span>404</span>
					</div>

					<h1 class="da-error-heading">哎哟喂！页面让狗狗叼走了！</h1>
					<a href="index.jsp">点击进入首页</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
