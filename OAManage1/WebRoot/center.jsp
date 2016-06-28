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
<link rel="stylesheet" href="css/index.css" type="text/css"/>
<link rel="stylesheet" href="css/menu.css" type="text/css"/>
<script type="text/javascript">
	function Ann(){
		parent.addTab("getAllAnn.action?pageIndex=1","通告管理");
	}
	function Doc(){
		parent.addTab("getAllDoc.action?pageIndex=1","文档管理");
	}
	function Tra(){
		parent.addTab("getNext.action","出差管理");
	}
	function rcar(){
		parent.addTab("getNexts.action","用车管理");
	}
</script>

<script src="js/cfcoda.js" language="javascript"></script>
<script src="js/time.js" language="javascript"></script>
<!--[if lt IE 7]>       
 <script src="js/fixPNG.js"></script>         
 <script>
 DD_belatedPNG.fix('img,.nav ul li a,.nav ul li a:hover');
 </script>     
<![endif]-->
<link href="css/lanrenzhijia.css" rel="stylesheet" type="text/css" />
</head>
<body >
<!-- content -->
<div  style="position:relative;">
  
  
     
   <div id="frame">
   <div id="scroller">
    <div id="content">
       <div class="section" id="pane-0">
        <div class="page1">
           <div class="content">
            <div class="first_screen">
               <div class="time"> <span id="h1"></span> <span id="h2"></span><strong>:</strong> <span id="m1"></span> <span id="m2"></span><strong>:</strong> <span id="s1"></span> <span id="s2"></span> </div>
               <div class="date" id="currentime"></div>
               <div class="welcome_wz"><img src="images/welcome_wz.gif" width="400" height="112" /></div>
             </div>
          </div>
         </div>
      </div>
        <div class="section" id="pane-1" style="display:none">
        <div class="page1">
           <div class="content">
            <div class="second_screen">
               <ul>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="组织机构"><span><img src="images/icon_1.png" width="56" height="61" /></span>
                  <p>组织机构</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="机构人员"><span><img src="images/icon_2.png" width="56" height="58" /></span>
                  <p>机构人员1</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="工作日志"><span><img src="images/icon_3.png" width="64" height="57" /></span>
                  <p>工作日志</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考勤管理"><span><img src="images/icon_4.png" width="64" height="62" /></span>
                  <p>考勤管理</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="指标设置"><span><img src="images/icon_5.png" width="60" height="58" /></span>
                  <p>指标设置</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="待处理任务"><span><img src="images/icon_6.png" width="61" height="63" /></span>
                  <p>待处理任务</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','待处理任务')" title="考核审批	"><span><img src="images/icon_7.png" width="64" height="48" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_8.png" width="45" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_9.png" width="59" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_10.png" width="63" height="63" /></span>
                  <p>修改密码</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','修改密码')" title="修改密码"><span><img src="images/icon_11.png" width="52" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_12.png" width="60" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_13.png" width="64" height="63" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_14.png" width="60" height="63" /></span>
                  <p>常用工具</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','常用工具')" title="考核审批"><span><img src="images/icon_15.png" width="59" height="61" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_16.png" width="54" height="52" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_17.png" width="51" height="57" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_18.png" width="61" height="61" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_19.png" width="52" height="63" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_20.png" width="61" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_21.png" width="64" height="64" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_22.png" width="60" height="62" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_23.png" width="50" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_24.png" width="50" height="63" /></span>
                  <p>考核审批</p>
                  </a></li>
              </ul>
             </div>
          </div>
         </div>
      </div>
       <div class="section" id="pane-2" style="display:none">
        <div class="page1">
           <div class="content">
            <div class="second_screen">
               <ul>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="组织机构"><span><img src="images/icon_1.png" width="56" height="61" /></span>
                  <p>组织机构2</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="机构人员"><span><img src="images/icon_2.png" width="56" height="58" /></span>
                  <p>机构人员2</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="工作日志"><span><img src="images/icon_3.png" width="64" height="57" /></span>
                  <p>工作日志</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考勤管理"><span><img src="images/icon_4.png" width="64" height="62" /></span>
                  <p>考勤管理</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="指标设置"><span><img src="images/icon_5.png" width="60" height="58" /></span>
                  <p>指标设置</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_6.png" width="61" height="63" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_7.png" width="64" height="48" /></span>
                  <p>考核审批</p>
                  </a></li>
                <li><a href="#" onclick="parent.addTab('list.jsp','组织机构')" title="考核审批"><span><img src="images/icon_8.png" width="45" height="60" /></span>
                  <p>考核审批</p>
                  </a></li>
               
              </ul>
             </div>
          </div>
         </div>
      </div>
     </div>
  </div>
  
   <div id="switch">
    <div id="switch-content">
       <ul id="toolbar" class="navigation">
        <li id="tab-0" class="active"><a href="#" id="aaa" onmouseover="javascript:ScrollSection(0, 'scroller', 'home-pane'); return false"></a></li>
        <li id="tab-1" class="inactive"><a href="#" onmouseover="javascript:ScrollSection(1, 'scroller', 'home-pane'); return false"></a></li>
        <li id="tab-2" class="inactive"><a href="#" onmouseover="javascript:ScrollSection(2, 'scroller', 'home-pane'); return false"></a></li>
      </ul>
     </div>
  </div>
  
   <div class="clear"></div>
   <div class="main_desktop">
    <ul class="desktop_wrap">
       <li>
        <p>通告管理</p>
        <a href="javascript:void(0)" onclick="Ann()"><img src="images/icon_2.png" width="56" height="58" /></a></li>
       <li>
        <p>文档管理</p>
        <a href="javascript:void(0)" onclick="Doc()"><img src="images/icon_3.png" width="64" height="57" /></a></li>
       <li>
        <p>人事管理</p>
        <a href="javascript:void(0)" onclick="Tra()"><img src="images/icon_4.png" width="64" height="62" /></a></li>
       <li>
        <p>行政管理</p>
        <a href="javascript:void(0)" onclick="rcar"><img src="images/icon_5.png" width="60" height="58" /></a></li>
       <li>
        <p>系统管理</p>
        <a href="#" onclick="parent.addTab('list.jsp','系统管理')"><img src="images/icon_6.png" width="61" height="63" /></a></li>
     </ul>
  </div>
 </div>
 </div>
</body>
</html>
