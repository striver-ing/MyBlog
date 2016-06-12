<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<title>关于我-个人博客</title>
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
	<div
		style="width: 100%;height: 50px;background-color: white; filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;position: relative;  ">
		<div class="top-1">
			<ul class="dingjicaidan1">
				<li><a href="#"><img src="images/white.png"
						class="top-1-img"> </a>
					<ul class="tanchucaidan1">
						<li><a href="blog_edit.jsp?user=${ session.user}"
							target="_blank">写博客</a>
						</li>
						<li><a href="diary/diary_edit.jsp?user=${ session.user}"
							target="_blank">写日记</a>
						</li>
						<li><a href="essay/essay_edit.jsp?user=${ session.user}"
							target="_blank">新碎言碎语</a>
						</li>

					</ul></li>
			</ul>
		</div>

		<div class="top-2">
			<ul class="dingjicaidan2">
				<li><a href="#"><img src="images/gengduo.png"
						class="top-2-img">
				</a>
					<ul class="tanchucaidan2">
						<li>
							<form action="findBlogByKeyword.action" method="post">
								<input name="keyword" type="text" class="sousuo1"> <input
									type="submit" value="查询">
							</form></li>
					</ul></li>
			</ul>
		</div>

		<div class="top-3">
			<ul class="dingjicaidan3">
				<li><a href="#"><img src="images/white.png"
						class="top-3-img">
				</a>
					<ul class="tanchucaidan3">
						<li><a href="login/login.jsp" target="_blank">登录</a>
						</li>

					</ul></li>
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
         <li><a href="essay/essay_list.jsp">碎言碎语</a></li>
         <li><a href="diary/diary_list.jsp">个人日记</a></li>
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
         <div class="left" id="about_me">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><h1>关于我</h1></div>
           </div>
           <div class="about_content">
             博主是一个草根站长，喜欢研究web前端技术和SEO技术。
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
           <!--<p>
           <a href="#" title="联系博主"><span class="left b_1"></span></a><a href="#" title="加入QQ群，一起学习！"><span class="left b_2"></span></a>
           <div class="clear"></div>
           </p>-->
          </div>
          <!--栏目分类-->
           <div class="lanmubox">
				<div class="hd">
					<ul>
						<li>博客分类</li>
						<li>日记分类</li>
						<li class="hd_3">碎言碎语</li>
					</ul>
				</div>
				<div class="bd">
					<ul>
						<s:iterator value="#session.blogCategorys" id="blogCategory">
							<li>
								<a href="findArticlesByArticleType.action?categoryId=<s:property value = "#blogCategory.categoryId"/>&articleAttribute=blog">
									<s:property value="#blogCategory.blogType" />
								</a>
						   </li>
						</s:iterator>
					</ul>
					<ul>
						<s:iterator value="#session.diaryCategorys" id="diaryCategory">
							<li>
								<a href="findArticlesByArticleType.action?categoryId=<s:property value = "#diaryCategory.categoryId"/>&articleAttribute=diary">
									<s:property value="#diaryCategory.diaryType" />
								</a>
						   </li>
						</s:iterator>
					</ul>
					<ul>
						<s:iterator value="#session.essayCategorys" id="essayCategory">
							<li>
								<a href="findArticlesByArticleType.action?categoryId=<s:property value = "#essayCategory.categoryId"/>&articleAttribute=diary">
									<s:property value="#essayCategory.essayType" />
								</a>
						   </li>
						</s:iterator>
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
