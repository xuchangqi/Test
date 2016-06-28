<%@page import="org.apache.struts2.dojo.components.DateTimePicker"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
<title>文档</title>
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
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	var pageIndex = "${docList.pageIndex}";
	var pageLast = "${docList.totalPage}";
	var pageNum = "$(''#pageNum').val()";
	pageIndex = parseInt(pageIndex);
	pageLast = parseInt(pageLast);
	pageNum = parseInt(pageNum);
	function FirstDoc(){
		window.location.href="getAllDoc.action?pageIndex="+1;
	}
	function UpDoc(){
		 window.location.href="getAllDoc.action?pageIndex="+(pageIndex-1);
	}
	function NextDoc(){
		window.location.href="getAllDoc.action?pageIndex="+(pageIndex+1);
	}
	function LastDoc(){
		window.location.href="getAllDoc.action?pageIndex="+pageLast;
	}
	function NumDoc(){
		window.location.href="getAllDoc.action?pageIndex="+pageNum;
	}
	function dele(){
	    var from = $("#form1").attr("action","deleteAnn");
	    from.submit();
	}
	function update(){
	    var from = $("#form1").attr("action","byIdAnn");
	    from.submit();
	}
</script>
</head>

<body>
	<div class="content">
		<div class="content_box">
			<div class="current">
				<a href="#">个人桌面</a><span> > </span>文档管理
			</div>
						<div class="infolist">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6" class="title">
							<ul class="zsgc fleft">
								<li><a href="addwendang.jsp">新增</a>
								</li>
								<li><a href="javascript:void(0)" onclick="dele()">删除</a>
								</li>
								<li><a href="javascript:void(0)" onclick="update()">修改</a>
								</li>
							</ul></td>
					</tr>
				</table>
				<form id="form1" action="">
				<table>
					<tr class="line_g hover_bg">
						<td width="5%" align="center">
						</td>
						<td width="5%" align="center"><strong>编号</strong>
						</td>
						<td width="68%" class="jianju10"><strong>文档名称</strong>
						</td>
						<td width="10%" align="center"><strong>所属部门</strong>
						</td>
						<td width="8%" align="center"><strong>所有者</strong>
						</td>
						<td width="6%" align="center"><strong>创建时间</strong>
						</td>
					</tr>
					<s:iterator value="docList.list">
					<tr>
							<td width="5%" align="center">
								<p>
									<label> <input type="checkbox" name="aid"
										value="<s:property value='DId' />" />
									</label>
								</p>
							</td>
							<td width="5%" align="center"><s:property value="DId" /></td>
							<td width="68%" class="jianju10"><s:property value="DName" /></td>
							<td width="10%" align="center"><s:property value="sectors.name" /></td>
							<td width="8%" align="center"><s:property value="owner" /></td>
							<td width="6%" align="center"><s:property value="createdate" /></td>
					</tr>
					</s:iterator>
						<tr class="title">
							<td colspan="6" valign="middle">
								<div class="page fright">
									<ul>
										<li>共<strong class="color_red"><s:property value="docList.totalPage" /></strong>页</li>
										<li><a href="javascript:void(0)" onclick="FirstDoc();">首页</a></li>
										<li><a href="javascript:void(0)" onclick="UpDoc();">上一页</a></li>
										<li><s:property value="docList.pageIndex" />/<s:property value="docList.totalPage" /></li>
										<li><a href="javascript:void(0)" onclick="NextDoc();">下一页</a></li>										
										<li><a href="javascript:void(0)" onclick="LastDoc();">尾页</a>
										</li>
										<li>转到第<input type="text" class="page_numble" id="pageNum" />页</li>
										<li><input type="button" value="" class="go mt7" onclick="NumDoc();" />
										</li>
									</ul>
								</div></td>
						</tr>
				</table>
			</form>
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

