<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OA系统服务管理平台</title>
<link rel="stylesheet" href="css/global.css" type="text/css" />
<link rel="stylesheet" href="css/list.css" type="text/css" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery-ui/js/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/jquery-ui/js/jquery.ui.widget.js"></script>
<script type="text/javascript"
	src="js/jquery-ui/js/jquery.ui.datepicker.js"></script>
<link rel="stylesheet" href="js/jquery-ui/js/jquery.ui.all.css"
	type="text/css"></link>
<link rel="stylesheet" href="js/jquery-ui/js/jquery.ui.tabs.css"
	type="text/css"></link>
<script src="js/fixPNG.js" type="text/javascript"></script>

<!-- 日历 -->
<script type="text/javascript" src="js/jqueryui-1.8.min.js"></script>
<script type="text/javascript" src="js/manhuaDate.1.0.js"></script>
</head>

<body>
	<!-- header -->
	<div class="header">
		<div class="header_right">
			<ul>
				<li><a href="index.jsp" title="首页" id="home"></a></li>
				<li><a href="loginout.jsp" title="注销登录" id="logout"></a></li>
			</ul>
		</div>
	</div>
	<div class="nav">
		<ul class="nav_wrap fleft">
			<li class="tab"><a href="#">个人桌面</a></li>
			<li class="tab_bg2"><a href="#">基础信息</a><span><img
					src="images/icon_close.png" width="8" height="8" /> </span></li>
		</ul>
		<div class="search fright">
			<input type="button" value=" " name=" " class="search_btn" /> <input
				type="text" value="搜索" class="box" />
		</div>
	</div>
	<div class="subnav">
		<div class="people">
			<img src="images/peopleo.png" width="56" height="56" /><br />欢迎登陆
		</div>
		<ul>
			<li><a href="#" class="subtab"><span><img
						src="images/icon1.png" width="24" height="31" /> </span>
					<p>工作日志</p> </a></li>
			<li><a href="#"><span><img src="images/icon2.png"
						width="32" height="26" /> </span>
					<p>机构人员</p> </a></li>
		</ul>
	</div>
	<div class="content">
		<div class="content_box">
			<div class="current">
				<a href="#">个人桌面</a><span> > </span> <a href="#">基础信息</a><span>></span>组织机构
			</div>
			<div class="infolist">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6" class="title center">新建日志（2013-05-20 星期一）</td>
					</tr>
					<tr class="line_g">
						<td width="10%" class="jianju10">日志标题：</td>
						<td width="90%" class="jianju20"><input type="text"
							class="text width300" /><a href="#">清空</a></td>
					</tr>
					<tr class="line_g">
						<td class="jianju10">日志类型：</td>
						<td class="jianju20"><div class="list_date">
								<form name="form" id="form">
									<select name="jumpMenu" id="jumpMenu"
										onchange="MM_jumpMenu('parent',this,0)" class="select">
										<option>全部</option>
										<option>工作日志</option>
									</select>
								</form>
							</div>
						</td>
					</tr>
					<tr class="line_g">
						<td class="jianju10">创建日期：</td>
						<td class="jianju20"><pre>
								<input type="text" class="mh_date" readonly="true" />
							</pre></td>
					</tr>
					<tr class="line_g">
						<td colspan="2"><img src="images/bianjik.png" width="1355"
							height="430" style="margin:10px;" />
							<form id="form1" name="form1" method="post" action="">
								<p>
									<label> <input type="checkbox" name="CheckboxGroup1"
										value="单选框" id="CheckboxGroup1_0" class="select_dx" />向上级领导发出请求,要求上级领导回复该日志。
									</label>
								</p>
							</form> <input type="button" value="保存" class="btn" /> <input
							type="button" value="取消" class="btn" />
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- 菜单 -->
	<div class="footer_quickmenu">
		<a href="tonggao.jsp"><img src="images/small_main1.png" width="22"
			height="24" /> </a> <a href="wendang.jsp"><img
			src="images/small_main2.png" width="26" height="23" /> </a> <a
			href="xingzheng.jsp"><img src="images/small_main3.png" width="28"
			height="27" /> </a> <a href="renshi.jsp"><img
			src="images/small_main4.png" width="27" height="26" /> </a>
	</div>
	</div>
</body>
</html>

