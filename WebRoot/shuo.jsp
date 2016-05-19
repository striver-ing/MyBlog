<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
 <base href="<%=basePath%>">
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>碎言碎语-个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/index.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->

<style>
.top-1{padding-top: 10px;margin-left: 80%;position: absolute;}	
.top-2{padding-top: 10px;margin-left: 85%;position: absolute;}	
.top-3{padding-top: 10px;margin-left: 90%;position: absolute;}	
.top-1-img{width: 30px;height: 30px;cursor: pointer;}
.top-2-img{height: 30px;cursor: pointer;}
.top-3-img{height: 30px;cursor: pointer;}
.tanchucaidan1{display:none;margin-top: 10px;margin-left: -25px;padding: 10px;background-color: white;}
.dingjicaidan1 li:hover ul{ display:block;}
.tanchucaidan2{display:none;margin-top: 10px;margin-left: -25px;padding: 10px;background-color: white;}
.dingjicaidan2 li:hover ul{ display:block;}
.tanchucaidan3{display:none;margin-top: 10px;margin-left: -15px;padding: 10px;background-color: white;}
.dingjicaidan3 li:hover ul{ display:block;}
.sousuo1{float: left;}
.enniu{width: 20px;}
</style>


</head>

<body>
	<div style="width: 100%;height: 50px;background-color: white; filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;position: relative;  ">
		<div class="top-1">
		<ul class="dingjicaidan1">
		   <li> <a href="#"><img src="images/white.png" class="top-1-img">	 </a>    	    	                                                                                              
                        <ul class="tanchucaidan1">
                            <a href="" target="_blank"><li>
                                                        编辑博客
                            </li><a>
                            
                        </ul>
            </li>
        </ul>
	    </div>
	    
	    <div class="top-2">
	    <ul class="dingjicaidan2">
		<li><a href="#"><img src="images/gengduo.png" class="top-2-img"></a>
			<ul class="tanchucaidan2">
                            <li>
                                <form action="" method="get">
                                	<input name="sousuo" type="text" class="sousuo1">
                                	    <button class="enniu">搜索</button>
                                </form>
                            </li>
                        </ul>
            </li>
        </ul>
	    </div>
	    
	    <div class="top-3">
	    	<ul class="dingjicaidan3">
		<li><a href="#"><img src="images/white.png" class="top-3-img"></a>
			<ul class="tanchucaidan3">
                            <a href="html/index.jsp" target="_blank"><li>
                                                         登录
                            </li></a>
                        </ul>
            </li>
        </ul>
	    </div>
	    
	</div>
	
    <!--header start-->
    <div id="header">
      <h1>碎言碎语——个人博客</h1>
      <p>不要仰望别人，自己亦是风景</p> 
      <div id="nav">
         <ul>
         <li><a href="index.jsp">首页</a></li>
         <li><a href="findAllBlog">博客列表</a></li>
         <li><a href="shuo.jsp">碎言碎语</a></li>
         <li><a href="riji.jsp">个人日记</a></li>
         <li><a href="xc.jsp">相册展示</a></li>        
         <li><a href="about.jsp">关于我</a></li>
         <!--<li><a href="guestbook.html">留言板</a></li>-->
         <div class="clear"></div>
        </ul>
      </div>
    </div>
    <!--header end-->
    <!--content start-->
    <div id="say">
     <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><h1>碎言碎语</h1></div>
           </div>
          <ul class="say_box">
                     <div class="sy">
                         <p> 那个可以任意挥霍的年纪，人们叫它'青春'。</p>
                     </div>
                  <span class="dateview">2014-5-31</span>
          </ul>
          <ul class="say_box">
                     <div class="sy">
                         <p> 过去就像回形针，把青春一页页的固定，然后变成了一本不被出版的书。</p>
                     </div>
                  <span class="dateview">2014-5-31</span>
          </ul>
          <ul class="say_box">
                     <div class="sy">
                         <p> 时间好象一把尺子，它能衡量奋斗者前进的进程。
                         时间如同一架天平，它能称量奋斗者成果的重量；
                         时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。</p>
                     </div>
                  <span class="dateview">2014-5-31</span>
          </ul>
          <ul class="say_box">
                     <div class="sy">
                         <p>青春，一半明媚，一半忧伤。
                         它是一本惊天地泣鬼神的着作，而我们却读的太匆忙。
                         于不经意间，青春的书籍悄然合上，以至于我们要重新研读它时，
                         却发现青春的字迹早已落满尘埃，模糊不清。</p>
                     </div>
                  <span class="dateview">2014-5-31</span>
          </ul>
     </div>
    <!--content end-->
    <!--footer-->
    <div id="footer">
     <p>Design by:少年 2014-8-9</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>
</body>
</html>
