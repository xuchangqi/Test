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
<div class="infolist">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td  colspan="2" class="title"><h4>关于加强公司的综合信息管理平台管理的意见</h4>
    <div class="review"><a href="#"><img src="images/review.png" width="77" height="32" /></a></div>
    </td>
    </tr>
  <tr>
    <td width="90%" colspan="2">
    <div class="fbr">
    <div class="title_fbr"><span class="fbr_mz">发布人：赵长升</span><span class="xx_date">发布时间：2012-06-12 08：30:52 浏览量：1118 总字数：1047</span></div>
    <div class="xx_wenzi">
    <p>随着公司业务的发展和规模的不断壮大，管理的重要性也越来越突出，自己与大家面对面的交流和沟通的机会在明显的减少，对于信息管理平台的依赖就越来越强烈了，但是我经常会发现公司还有一些人很少写计划和日志，也有一些人是在应付了
事，这对于公司的管理和各个部门间的协调是非常有害的。</p>
<p>计划管理和日志管理是公司的基本管理制度，不容动摇，对于一些认识不到其重要性、觉悟不高基层人员，有硬性的考核，但对于管理人员，如果不去做，就不配做金鹏的管理人员，因为一个连公司最基本的管理制度就不知道认真遵守的人是不可
能做好一个管理者的。作为一名管理者，最重要的不是让制度去约束你，而是自我的约束和管理，不是挑战公司的管理制度，而是认真履行，并且逐渐完善。</p>
<p>多年来，我坚持做计划、写日志，虽然我不必受到监督，但回过头来看会清晰许多，可以作为自己对自己的监督，自己成长和公司发展的轨迹的经验和教训也都很清楚，这会成为自己的另一种财富。对于还没有认识到其重要性的人，请尽快提高认
识，对于新进员工一定要在入职之前认真培训，对于一些领导岗位的管理者，如果仍然认识不到其重要性，那就必须从领导岗位上撤换下来，请人事行政部监督落实。</p>
    </div>
    </div>
    <div class="xx_border">
    <div class="title_fbr bianju"><span class="hfr_mz">回复人：<a href="#" class="name blue">李海红</a></span><span class="hfr_date">发布时间：2012-06-12 08：30:52 浏览量：1118 总字数：1047</span></div>
    <div class="xx_wenzi">
<p>收到。我也觉得写个计划和工作日志是对自己一天的一个规划，几分钟的时间，如果认识度、重视度足够的话，相信大家一定都可以做得到！以后每周的工作日志撰写情况行政人事部会以表格形式汇报给公司领导，请各位引起足够重视！！</p>

    </div>
    </div>
    <div class="clear"></div>
    <div class="xx_border">
    <div class="title_fbr bianju"><span class="hfr_mz">回复人：<a href="#" class="name blue">赵长升</a></span><span class="hfr_date">发布时间：2012-06-12 08：30:52 浏览量：1118 总字数：1047</span></div>
    <div class="xx_wenzi">
<p>当下企业综合管理平台正在做需求调研，希望各位同事充分发表自己的意见和建议！</p>
<p>我的意见是这个平台必须成为咱们每一个人的得力助手，不仅仅是管理人员，更重要的是营销人员、技术研发人员；</p>
<p>一定要实现每一个人从中得到的信息和价值要远远大于输入的信息和价值。</p>

    </div>
    </div>
    
    <div class="clear"></div>
    <div class="xx_border">
    <div class="title_fbr bianju"><span class="hfr_mz">回复人：<a href="#" class="name blue">赵长升</a></span><span class="hfr_date">发布时间：2012-06-12 08：30:52 浏览量：1118 总字数：1047</span>
    
<div class="xx_page">
<div class="digg">
<a href="#">返回列表</a>
<span class="current_page">1</span>
<a href="#">2</a>
<a href="#">3</a>
<a href="#">4</a>
<a href="#">5</a>
<a href="#">6</a>
<a href="#">7</a>
<a href="#">8</a>
<a href="#">9</a>
<a href="#">下一页</a>
</div></div>
    
    </div>
    <div class="xx_wenzi">
    <img src="images/bianjik.png" width="1100" height="430" style="margin:10px;" />
      <form id="form1" name="form1" method="post" action="">
          <label>
            <input type="checkbox" name="CheckboxGroup1" value="单选框" id="CheckboxGroup1_0" class="select_dx" />向上级领导发出请求,要求上级领导回复该日志。 </label>
        </form>
      <input type="button" value="保存" class="btn mt10" />
      <input type="button" value="取消" class="btn mt10" />
      <div class="clear"></div>
    </div>
    </div><div class="clear"></div>
    </td>
  </tr>
  <tr class="line_g">
    <td colspan="2">
    
      </td>
  </tr>
</table>
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
    <div class="footer_right"><span class="number">在线人数<strong>999</strong>人</span>
     <a href="#" class="tixing"><img src="images/tixing.png" width="16" height="16" /></a>
     <a href="#" class="xiaoxi"><img src="images/youjian.png" width="20" height="13" /></a>
     <a href="#" class="liaotian"><img src="images/liaotian.png" width="27" height="19" /></a>
    </div>
    <div class="clear"></div>
  </div>
</body>
</html>
