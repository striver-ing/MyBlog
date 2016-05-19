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
<title>个人日记-个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/index.css"/>
<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/animate.css"/>
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
    </div>
     <!--header end-->
    <!--nav-->
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
       <!--nav end-->
    <!--content start-->
    <div id="content">
       <!--left-->
         <div class="left" id="riji">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><h1>个人日记</h1></div>
           </div>
           <div class="rj_content">
                <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="images/my_1.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="images/left.png" width="13" height="16" alt="左图标"/>
                        时间好象一把尺子，它能衡量奋斗者前进的进程。时间如同一架天平，它能称量奋斗者成果的重量；时间就像一把皮鞭，它能鞭策我们追赶人生的目标。时间犹如一面战鼓，它能激励我们加快前进的脚步。
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
              
           </div>
         </div>
         <!--end left -->
         <!--right-->
          <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于博主</h2>
           <img src="images/my.jpg" width="230" height="230" alt="博主"/>
           <p>博主：王倚晴</p>
           <p>职业：web前端</p>
           <p>简介：</p>
          
          </div>
          <!--栏目分类-->
           <div class="lanmubox">
              <div class="hd">
               <ul><li>博客列表</li><li>碎言碎语</li><li class="hd_3">个人日记</li></ul>
              </div>
              <div class="bd">
                <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 
                
              </div>
           </div>
           <!--end-->
         </div>
         <!--end  right-->
         <div class="clear"></div>
         
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

