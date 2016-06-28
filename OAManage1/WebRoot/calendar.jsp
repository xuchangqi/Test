<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OA系统服务管理平台</title>
<link rel="stylesheet" href="css/global.css" type="text/css"/>
<link rel="stylesheet" href="css/list.css" type="text/css"/>
<link rel="stylesheet" href="css/menu.css" type="text/css"/>
<script src="js/fixPNG.js" type="text/javascript"></script>

</head>

<body>
<!-- header -->
<div class="header">
<div class="logo fleft"><img src="images/logo.png" width="344" height="49" /></div>
<div class="header_right">
<ul>
  <li><a href="index.jsp" title="首页" id="home"></a></li>
  <li><a href="loginout.jsp" title="注销登录" id="logout"></a></li>
</ul>
</div>
</div>
<!-- nav -->
<div class="nav">

<ul class="nav_wrap fleft">
<li class="tab"><a href="#">个人桌面</a></li>
<li class="tab_bg2"><a href="#">基础信息</a><span><img src="images/icon_close.png" width="8" height="8" /></span></li>
</ul>

<div class="search fright">
<input type="button" value=" " name=" " class="search_btn" />
<input type="text" value="搜索" class="box" />
</div>
</div>
<div class="subnav">
<div class="people"><img src="images/peopleo.png" width="56" height="56" />admin<br />欢迎登陆</div>
<ul>
<li><a href="#" class="subtab"><span><img src="images/icon1.png" width="24" height="31" /></span><p>工作日志</p></a></li>
<li><a href="#"><span><img src="images/icon2.png" width="32" height="26" /></span><p>机构人员</p></a></li>
</ul>
</div>
<!-- content -->
<div class="content">
<div class="content_box">
<div class="current"><a href="#">个人桌面</a><span> > </span> <a href="#">基础信息</a><span>></span>组织机构</div>
<div class="calendar">
<div class="inner_title">
<div class="title_right fright">
<input type="button"  value="日" />
<input type="button"  value="周" style="border-left:none; border-right:none;" />
<input type="button"  value="年" />
<a href="#"><img src="images/add.png" width="28" height="26" /></a>
</div>
<div class="title_left fleft">
<a href="#"><img src="images/year_prev.png" width="10" height="10" /></a>
<a href="#" style="border-left:none;"><img src="images/prev.png" width="10" height="10" /></a>
<a href="#" style="border-left:none; border-right:none;">今天</a>
<a href="#"><img src="images/next.png" width="10" height="10" /></a>
<a href="#" style="border-left:none;"><img src="images/year_next.png" width="10" height="10" /></a>
</div>
<div class="title_min">2013年6月</div>

<div class="clear"></div>
</div>
</div>
</div>
</div>
<!-- footer -->

<div id="footer">
  <!-- 菜单 -->
    <div class="menu">
<ul>
<li><a class="hide" href="h"><img src="images/menu.jpg" width="66" height="31" /></a>
<!--[if lte IE 6]>
<a href="#"><img src="images/menu.jpg" width="66" height="31" />
<table><tr><td>
<![endif]-->
    <ul  class="category" style="width:321px; background:url(images/menu_bg.jpg) repeat-y; padding-top:10px; border:2px solid #0059a5; border-bottom:none;">
    <div class="people blue"><span><img src="images/people.jpg" width="29" height="29" /></span><strong>李某</strong></div>
    <li><a href="#" class="icon_a">新闻中心</a>
      <!--[if lte IE 6]>
  <a class="sub" href="#" title="新闻中心">新闻中心
  <table><tr><td>
  <![endif]-->
        <ul style="position:relative; bottom:30px;">
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
        </ul>
    <!--[if lte IE 6]>
    </td></tr></table>
  </a>
  <![endif]-->
    </li>
    <li><a href="#" class="icon_b">企业概况</a>
          <!--[if lte IE 6]>
  <a class="sub" href="#" title="企业概况">企业概况
  <table><tr><td>
  <![endif]-->
        <ul style="position:relative; bottom:30px;">
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
        </ul>
    <!--[if lte IE 6]>
    </td></tr></table>
  </a>
  <![endif]-->
    </li>
    <li><a href="#" class="icon_c">企业文化</a></li>
    <li><a href="#" class="icon_d">行政办公</a></li>
    <li><a class="icon_e" href="#" title="运营管理">运营管理</a>
  <!--[if lte IE 6]>
  <a class="sub" href="#" title="运营管理">运营管理
  <table><tr><td>
  <![endif]-->
        <ul>
            <li><a href="#" title="通知公告">通知公告</a></li>
            <li><a href="#" title="企业动态">企业动态</a></li>
            <li><a href="#" title="媒体报道">媒体报道</a></li>
        </ul>
    <!--[if lte IE 6]>
    </td></tr></table>
  </a>
  <![endif]-->
    </li>
    <li><a href="#" class="icon_f">个人事务</a></li>
    <li><a href="#" class="icon_g">人力资源</a></li>
    <li><a href="#" class="icon_h">知识管理</a></li>
    <li><a href="#" class="icon_i">CRM系统</a></li>
    <li><a href="#" class="icon_j">项目管理</a></li>
    <li><a href="#" class="icon_k">报表统计</a></li>
    <li><a href="#" class="icon_l">交流园地</a>
                  <!--[if lte IE 6]>
  <a class="sub" href="#" title="系统维护">系统维护
  <table><tr><td>
  <![endif]-->
        <ul>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
        </ul>
    <!--[if lte IE 6]>
    </td></tr></table>
  </a>
  <![endif]-->
    </li>
    <li><a href="#" class="icon_m">系统维护</a>
              <!--[if lte IE 6]>
  <a class="sub" href="#" title="系统维护">系统维护
  <table><tr><td>
  <![endif]-->
        <ul>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
            <li><a href="#" title="企业刊物">企业刊物</a></li>
            <li><a href="#" title="项目签约">项目签约</a></li>
            <li><a href="#" title="投票管理">投票管理</a></li>
        </ul>
    <!--[if lte IE 6]>
    </td></tr></table>
  </a>
  <![endif]-->
    </li>
    <div class="out_quit"><a href="#" title="注销" class="logout">注销</a><a href="#" title="退出" class="quit">退出</a></div>
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>
</ul>
</div>
    <!-- -->
    <div class="footer_quickmenu"> 
    <a href="#"><img src="images/small_main1.png" width="22" height="24" /></a>
     <a href="#"><img src="images/small_main2.png" width="26" height="23" /></a>
     <a href="#"><img src="images/small_main3.png" width="28" height="27" /></a>
     <a href="#"><img src="images/small_main4.png" width="27" height="26" /></a>
     <a href="#"><img src="images/small_main5.png" width="25" height="25" /></a>
     </div>
    <!-- -->
    <div class="footer_right">
     <a href="#" class="tixing"><img src="images/tixing.png" width="16" height="16" /></a>
     <a href="#" class="xiaoxi"><img src="images/youjian.png" width="20" height="13" /></a>
     <a href="#" class="liaotian"><img src="images/liaotian.png" width="27" height="19" /></a>
    </div>
    <div class="clear"></div>
  </div>
</body>
</html>

