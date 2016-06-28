<%@page import="org.apache.struts2.dojo.components.DateTimePicker"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<title>部门</title>
<link rel="stylesheet" href="css/global.css" type="text/css" />
<link rel="stylesheet" href="css/list.css" type="text/css" />
<link rel="stylesheet" href="css/menu.css" type="text/css" />
<script src="js/fixPNG.js" type="text/javascript">
	//获取系统时间，将时间以指定格式显示到页面。  
	function systemTime() {
		//获取系统时间。  
		var dateTime = new Date();
		var hh = dateTime.getHours();
		var mm = dateTime.getMinutes();
		var ss = dateTime.getSeconds();
		//分秒时间是一位数字，在数字前补0。  
		mm = extra(mm);
		ss = extra(ss);
		//将时间显示到ID为time的位置，时间格式形如：19:18:02  
		document.getElementById("time").innerHTML = hh + ":" + mm + ":" + ss;
		//每隔1000ms执行方法systemTime()。  
		setTimeout("systemTime()", 1000);
	}
	//补位函数。  
	function extra(x) {
		//如果传入数字小于10，数字前补一位0。  
		if (x < 10) {
			return "0" + x;
		} else {
			return x;
		}
	}
</script>

</head>

<body>
	<div class="content">
		<div class="content_box">
			<div class="current">
				<a href="#">个人桌面</a><span> > </span> <a href="#">系统管理</a><span>></span>部门管理
			</div>
			<div class="infolist">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6" class="title">
							<ul class="zsgc fleft">
								<li><a href="addbumen.jsp">新增</a></li>
								<li><a href="#">删除</a></li>
								<li><a href="bumenbj.jsp">修改</a></li>
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
									</form></td>
								<td><s:property value="" /></td>
								<td><s:property value="" /></td>
								<td><s:property value="" /></td>
								<td><s:property value="" /></td>
								<td><s:property value="" /></td>
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

	</div>
	<div class="wendang1" style="display: none;">
		<table>
			<tr>
				<td><label>文件夹名:</label><input type="text" /></td>
			</tr>
			<tr>
				<td><label>路径&nbsp;&nbsp;&nbsp;&nbsp;:</label> <lable>123/123</lable>
				</td>
			</tr>

			<tr>
				<td><label>创建人&nbsp;&nbsp;:</label> <lable>123/123</lable></td>
			</tr>
			<tr>
				<td><label>创建时间:</label><label class="time"></label></td>
			</tr>
		</table>
	</div>
</body>
</html>

