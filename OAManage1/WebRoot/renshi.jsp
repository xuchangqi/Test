<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人事</title>
<link rel="stylesheet" href="css/global.css" type="text/css"/>
<link rel="stylesheet" href="css/list.css" type="text/css"/>
<link rel="stylesheet" href="css/menu.css" type="text/css"/>
<script src="js/fixPNG.js" type="text/javascript"></script>
<!--[if lt IE 7]>       
 <script src="js/fixPNG.js"></script>         
 <script>
 DD_belatedPNG.fix('img,.nav ul li a,.nav ul li a:hover');
 </script>     
<![endif]-->
<!--[if lte IE 6]>
<style type="text/css">
table{border-collapse:collapse; margin:0; padding:0;}
.menu ul li a.hide, .menu ul li a:visited.hide{display:none;}
.menu ul li a:hover ul li a.hide{display:none;}
.menu ul li a:hover{display:block; width:151px; clear:both; }
.menu ul li a:hover ul{display:block; position:absolute; bottom:26px; left:0;}
.menu ul li a:hover ul li{display:block; width:151px;}
.menu ul li a:hover ul li a:hover{}
.menu ul li a:hover ul li a{display:block; width:100%; padding-left:10px;}
.menu ul li a:hover ul li a ul{visibility:hidden;}
.menu ul li a:hover ul li a:hover{}
.menu ul li a:hover ul li a:hover ul{visibility:visible; position:absolute; left:210px; bottom:0;}
.menu ul li a:hover ul li a:hover ul li a{background:url(../images/icon_sanjiao.png) no-repeat left center;color:#000;}
.menu ul li a:hover ul li a:hover ul li a:hover{background:#c9c9a7;}
.menu ul li a:hover ul.left{left:-105px;}
.menu ul li a:hover ul li a:hover ul.left{left:-210px;}
.category li{width:151px; display:block; float:left; margin-left:2px;}
.category li a:hover{background:url(../images/category_tab.jpg) no-repeat}
</style>
<![endif]-->
</head>

<body>

<!-- content -->
<div class="content">
<div class="content_box">
<div class="current"><a href="#">个人桌面</a><span> > </span> <a href="#">基础信息</a><span>></span>人事管理</div>
<div class="infolist">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="6" class="title">
    <ul class="zsgc fleft">
      <li><a href="#">新增</a></li>
      <li><a href="#">删除</a></li>
      <li><a href="#">修改</a></li> 
    </ul>
    </td>
    </tr>
  <tr class="line_g hover_bg">
    <td width="5%" align="center"><form id="form1" name="form1" method="post" action="">
      <p>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="单选框" id="CheckboxGroup1_0" /></label>
      </p>
    </form></td>
    <td width="5%" align="center"><strong>编号</strong></td>
    <td width="6%" align="center"><strong>类型</strong></td>
    <td width="68%" class="jianju10"><strong>标题</strong></td>
    <td width="10%" align="center"><strong>更新时间</strong></td>
    <td width="8%" align="center"><strong>发布人</strong></td>
  </tr>
  <!-- 调值 -->
<%--   <tr class="line_g hover_bg">
    <td width="5%" align="center"><form id="form1" name="form1" method="post" action="">
      <p>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="单选框" id="CheckboxGroup1_0" /></label>
      </p>
    </form></td>
    <td align="center"><s:property value="" /></td>
    <td align="center"><s:property value="" /></td>
    <td class="jianju10"><a href="#" class="color_red"><s:property value="" /></a></td>
    <td align="center"><s:property value="" /></td>
    <td align="center"><a href="#" class="name"><s:property value="" /></a></td>
  </tr> --%>
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
</body>
</html>

