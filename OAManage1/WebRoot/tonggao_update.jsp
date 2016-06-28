<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tonggao_update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function re(){
			window.close();
		}
	</script>
  </head>
  
  <body>
     <s:form action="update.action">
     	<table>
     		<caption>通告信息</caption>
     		<tr>
     			<td>标题：</td>
     			<td><input type="text" name="upAn.tatil" value="<s:property value="byid.tatil" />"/></td>
     		</tr>
     		<tr>
     			<td>发布人：</td>
     			<td><input type="text" name="upAn.users.name" value="<s:property value="byid.users.name" />"/></td>
     		</tr>
     		<tr>
     			<td>最后修改时间：</td>
     			<td><input type="text" name="upAn.createtime" value="<s:property value="byid.createtime" />"/></td>
     		</tr>
     		<tr>
     			<td>内容：</td>
     			<td><textarea rows="4" cols="30" name="upAn.name"><s:property value="byid.name" /></textarea></td>
     		</tr>
     		<tr>
     			<td>通告状态：</td>
     			<td><s:if test="byid.condition=0">
     				<input type="radio" name="condition" value="1" />紧急
					<input type="radio" name="condition" value="0" checked="checked" />一般
     			</s:if><s:elseif test="byid.condition=1">
     				<input type="radio" name="condition" value="1" checked="checked" />紧急
					<input type="radio" name="condition" value="0" />一般
     			</s:elseif>
				</td>
     		</tr>
     		<tr>
     			<td></td>
     			<td><input type="submit" value="修改">&nbsp;&nbsp;&nbsp;<input type="button" value="返回" onclick="re()"></td>
     		</tr>
     	</table>
     </s:form>
  </body>
</html>
