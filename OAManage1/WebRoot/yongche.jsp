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

<title>用车</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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

#tanchu {
	display: none;
	border-width: 100px;
	width: 1500px;
	height: 100px;
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
	<script type="text/javascript">
		function showdialog() {
			$("#dialog")
					.attr(
							"style",
							"position:absolute;left:0px;top:0px;width:2000px;height:2000px;z-index:1;background-color:#FFFFFF;opacity:0.3;");
			var x = $(window).width() / 2 - $("#tanchu").width() / 2;
			var y = $(window).height() / 2 - $("#tanchu").height() / 2;
			$("#tanchu").attr(
					"style",
					"position:absolute;left:" + x + "px;top:" + y
							+ "px;z-index:2;display:block;");
		}
		function closedialog() {
			$("#tanchu").attr("style", "display:none;");
			$("#dialog").attr("style", "display:none;")
		}
		
	</script>
	<table width="800" border="1" cellpadding="1" cellspacing="0"
		class="solid-bottom">
		<tr>
			<td width="800" height="19"><table border="1" cellpadding="0"
					cellspacing="0" id="secTable" align="center" width="100%">
					<tr align="center">
						<td width="120" align="center" class="sec2" onclick="secBoard(0)">用车申请</td>
						<td width="120" align="center" class="sec1" onclick="secBoard(1)">用车预订管理</td>
						<td width="110" align="center" class="sec1" onclick="secBoard(2)">车辆管理</td>
					</tr>
				</table></td>
			<td><script language="JavaScript" type="text/javascript">
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
			 function deletes(){
	         var from = $("#form1").attr("action","delete");
	         from.submit();
	        }
	        function updates(){
	        var from = $("#form1").attr("action","byId");
	        from.submit();
	}
			</script></td>
		</tr>
	</table>
	<table border="1" cellspacing="8" cellpadding="0" width="800"
		id="mainTable">
		<!-- 用车 -->
		<tbody style="display: block;">
			<tr>
				<td style="height: 50"><label>用车编号:</label><input type="text"
					name="che1"><br /> <label>用车人:</label><input type="text"
					name="che1" id="s1"> <label>司机:</label><input type="text"
					name="che1"><br /> <label>随行人员:</label><input type="text"
					name="che1"><span style="width:20px"></span> <label>用车部门:</label>
					<%-- <s:property value="sectors.SId" /> --%> <br /> <label>时间:</label><input
					type="text" class="datetime">到<input type="text"
					class="datetime"><br /> <label>目的地:</label><input
					type="text"><span style="width:35px"></span><label>申请里程(公里):</label><input
					type="text"><br /> <label style="height: 50">用车事由:</label>
					<textarea rows="3" cols="50"></textarea>
					<hr /> <label>下一步审批人:</label> <s:property value="user.name" />
					&nbsp;&nbsp;&nbsp; <input type="submit" value="确定">&nbsp;&nbsp;&nbsp;
					<input type="button" value="取消"></td>
			</tr>
		</tbody>
		<!-- 用车预订管理 -->
		<tbody style="display: none">
			<tr>
				<td>
					<form action="RentcarAction.action">
						<label>车辆预订时间段：</label><input class="datetime" type="text">到<input
							class="datetime" type="text"><br /> <label>预订人:</label><s:label>${sessionScope.login.name}</s:label>
						 <label>车辆型号:</label><input type="text"><br />
						<input type="submit" value="查询">
					</form>
				</td>
			</tr>
			<tr>
				<td><table border="1" bordercolor="#FFF" align="center"
						width="100%">
						<tr align="center">
							<td width="5%" align="center"></td>
							<td>车辆编号</td>
							<td>司机</td>
							<td>目的地</td>
							<td>用车事由</td>
							<td>状态</td>
						</tr>
						<s:iterator value="pages.list">
							<tr align="center" class="content">
								<td width="5%" align="center">
									<p>
										<label> <input type="checkbox" name="aid"
											value="<s:property value='RId' />" /> </label>
									</p>
								</td>
								<td><s:property value="car.CId" />
								</td>
								<td><s:property value="driver" />
								</td>
								<td><s:property value="destination" />
								</td>
								<td><s:property value="reason" />
								</td>
								<td><s:property value="RState" />
								</td>
							</tr>
						</s:iterator>
					</table>
				</td>
			</tr>
		</tbody>
		<!-- 车辆管理 -->
		<tbody style="display: none">
			<tr>
				<td>
					<table width="100%" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="5" align="right"><input type="button"
								value="添加车辆" onclick="showdialog()">
							</td>
						</tr>
						<tr>
							<td align="center">车牌编号</td>
							<td align="center">车型</td>
							<td align="center">编号</td>
							<td align="center">备注</td>
							<td align="center">操作</td>
						</tr>
						<!-- 信息管理 -->
						<s:iterator var="user" value="userList">
							<tr align="center" class="content">
								<td><s:property value="car.CId" /></td>
								<td><s:property value="car.CType" /></td>
								<td><s:property value="rentcar.RId" /></td>
								<td><s:property value="car.CText" /></td>
								<td><a href="javascript:void(0)" onclick="deletes()"></a>删除</td>
								<td><a href="javascript:void(0)" onclick="updates()"></a>修改</td>
							</tr>
						</s:iterator>
					</table></td>
			</tr>
		</tbody>
	</table>

	<div id="tanchu" align="right">
		<form action="yongche.jsp">
			<table>
				<tr>
					<td><label>车牌号:</label><input type="text"><br /> <label>&nbsp;&nbsp;&nbsp;车型:</label><input
						type="text"><br /> <label>&nbsp;&nbsp;&nbsp;编号:</label><input
						type="text"><br /> <label style="height: 50">&nbsp;&nbsp;&nbsp;备注:</label>
						<textarea rows="3" cols=""></textarea>
						<hr/>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="添加"><input
						type="button" value="关闭" onclick="closedialog()"></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="dialog"></div>
</body>
</html>
