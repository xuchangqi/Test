<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bg.gif);
	background-repeat: repeat-x;
}
-->
</style>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	function log(){
		 var from = $("#form1").attr("action","login");
	     from.submit();
	}
</script>
</head>

<body>

<table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
        <td height="561" style="background:url(images/lbg.gif)"><table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="238" style="background:url(images/login01.jpg)">&nbsp;</td>
          </tr>
          <tr>
            <td height="190">

            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(images/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(images/login03.jpg)">
                    <form action="" id="form1">
                	<table width="402" border="0" align="center" cellpadding="0" cellspacing="0">
                  	<tr>
                    	<td width="88" height="50"><img src="images/user.gif" width="30" height="30"></td>
                    	<td width="86" height="50">用户</td>
                    	<td width="166" height="50"><input name="employee.UId" type="text" name="textfield" id="textfield" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;"></td>
                  	</tr>
                 	<tr>
                   	 	<td height="50"><img src="images/password.gif" width="28" height="32"></td>
                   	 	<td height="50">密码</td>
                  	  	<td height="50"><input name="employee.password" type="password" name="textfield2" id="textfield2" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                 	</tr>
                  
                  	<tr>
                  		<td><label class="lf" for="passwords"> 验证码：</label></td>
           				<td><input type="text" size="8" name="inputCode" class="inputh inputs lf" value="验证码" id="passwords"/></td>
           				<td><span class="wordp lf"><img id="validateCode" src="Number.jsp" width="97" height="27" alt="" /></span></td>
           				<td width="62"><span class="blues lf"><a id="changeCode" href="javascript:void(0);" title="">看不清</a></span></td>
                 	 </tr>
                  
                  	<tr>
                    	<td height="40">&nbsp;</td>
                    	<td height="40">&nbsp;<a href="#"><p></p></td>
                    	<td height="60"><a href="javascript:void(0)" onClick="log()"><img src="images/login.gif" width="95" height="34" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/loginout.jpg" onClick="javascript:window.close()"></td>
                  	</tr>
                </table>
                </form>
                </td>
              <td width="214" style="background:url(images/login04.jpg)" >&nbsp;</td>
              </tr>
            </table>
            </td>
          </tr>
          <tr>
            <td height="133" style="background:url(images/login05.jpg)">&nbsp;</td>
          </tr>
		</table>
    	</td>
  </tr>
</table>

<div style="text-align:center;">
</div>
</body>
</html>

