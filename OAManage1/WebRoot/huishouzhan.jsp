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

<title>回收站</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/global.css" type="text/css" />
<link rel="stylesheet" href="css/list.css" type="text/css" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
</head>

<body>
	<div class="content">
		<div class="content_box">
			<div class="current">
				<a href="#">个人桌面</a><span> > </span> <a href="#">系统管理</a><span>></span>回收站
			</div>
			<div class="infolist">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6" class="title">
							<ul class="zsgc fleft">
								<li><a href="#">还原</a></li>
							</ul>
						</td>
					</tr>
					<tr class="line_g hover_bg">
						<td width="5%" align="center"><form id="form1" name="form1"
								method="post" action="">
								<p>
									<label> <input type="checkbox" name="CheckboxGroup1"
										value="单选框" id="CheckboxGroup1_0" /> </label>
								</p>
							</form></td>
						<td width="5%" align="center"><strong>编号</strong></td>
						<td width="6%" align="center"><strong>类型</strong></td>
						<td width="68%" class="jianju10"><strong>标题</strong></td>
						<td width="10%" align="center"><strong>更新时间</strong></td>
						<td width="8%" align="center"><strong>发布人</strong></td>
					</tr>
					<tr class="line_g hover_bg">
						<s:iterator var="user" value="userList">
							<tr align="center" class="content">
								<td width="5%" align="center"><form id="form1" name="form1"
										method="post" action="">
										<p>
											<label> <input type="checkbox" name="CheckboxGroup1"
												value="单选框" id="CheckboxGroup1_0" /> </label>
										</p>
									</form>
								</td>
								<td><s:property value="" />
								</td>
								<td><s:property value="" />
								</td>
								<td><s:property value="" />
								</td>
								<td><s:property value="" />
								</td>
								<td><s:property value="" />
								</td>
							</tr>
						</s:iterator>
					</tr>
					<tr class="title">
						<td colspan="6" valign="middle">
							<div class="page fright">
								<ul>
									<li>共<strong class="color_red">126</strong>条</li>
									<li>首页</li>
									<li>上一页</li>
									<li>1/3</li>
									<li><a href="#">下一页</a></li>
									<li><a href="#">尾页</a></li>
									<li>转到第<input type="text" class="page_numble" />页</li>
									<li><input type="button" value="" class="go mt7" /></li>
								</ul>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
