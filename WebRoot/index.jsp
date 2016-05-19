<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import = "com.pojo.Blog" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>个人博客</title>
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
   <!--  直接输入网址请求这个页面时  先跳转到action 取博客 -->
  <%
  		List<Blog> blogs = (List<Blog>) request.getAttribute("blogs");
  		if(blogs == null){%>
  		<script language="javascript" type="text/javascript">
             window.location.href="findHotBlog.action"; 
        </script>
  		<%}
   %>

  </head>
  
  <body>
    <div style="width: 100%;height: 50px;background-color: white; filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;position: relative;  ">
		<div class="top-1">
		<ul class="dingjicaidan1">
		   <li> <a href="#"><img src="images/white.png" class="top-1-img">	 </a>    	    	                                                                                              
                        <ul class="tanchucaidan1">
                            <a href="blog_edit.jsp" target="_blank"><li>
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
                                <form action="findBlogByKeyword.action" method="post">
                                	<input name="keyword" type="text" class="sousuo1">
                                	<input type = "submit" value = "查询">
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
                            <a href="login.jsp" target="_blank"><li>
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
         <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2>文章<span>推荐</span></h2>
           </div>
          <div class="content_text">
           <!--wz-->
           <!-- 循环取博客 -->
		    <s:iterator value = "blogs" id = "blog">
           <div class="wz">
		    <!-- 文章标题 -->
		    	<h3><a href = "readBlog.action?blogId=<s:property value = "#blog.blogId"/>" target = "_blank"><s:property value = "#blog.title"/></a></h3>
		    	
             <dl>
             <!-- 贴图 -->
               <dt><img src=<s:property value = "#blog.imgPath"/> width="200"  height="123" alt=""></dt>
               <dd>
               <!-- 摘要 -->
                 <p class="dd_text_1"><s:property value = "#blog.abstract_"/></p>
               <p class="dd_text_2">
               <!-- 用户名 -->
               <span class="left author">王倚晴</span>
               <!-- 阅读量 -->
               <span><s:property value = "#blog.readedCount"/></span>
               <!-- 日期 -->
               <span class="left sj">时间:<s:property value = "#blog.date"/></span>
               <!-- <span class="left fl">阅读：<s:property value = "#blog.readedCount"/></span> -->
               <span class="left yd"><a href = "readBlog.action?blogId=<s:property value = "#blog.blogId"/>" target="_blank">阅读全文</a>
               </span>
               <!--  操作 -->
		       <s:if test="#session.user != null">
               <span><a href = "updateBlogPre.action?blogId=<s:property value = "#blog.blogId"/>">编辑</a></span>
               <span><a href = "deleteBlogByBlogId?blogId=<s:property value = "#blog.blogId"/>">删除</a></span>
               </s:if>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>
		    </s:iterator>
           <!--wz end-->
                             
           </div>
         </div>
         <!--left end-->
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
               <ul><li>博客列表</li><li>碎言碎语</li><li class="hd_3">个人日记</li></ul>
              </div>
              <div class="bd">
                <ul>
					<s:iterator value = "blogCategorys" id = "blogCategory">
                		<li>
  							<a href ="findArticlesByArticleType.action?categoryId=<s:property value = "#blogCategory.categoryId"/>&articleAttribute=blog"><s:property value = "#blogCategory.blogType"/></a>
  						</li>
                	</s:iterator>
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
           <div class="link">
            <h2>友情链接</h2>
            <p><a href="http://www.gaosubo.com" target="_blank">王倚晴个人作品</a></p>
           </div>
         </div>
         <!--right end-->
         <div class="clear"></div>
    </div>
    <!--content end-->
    <!--footer start-->
    <div id="footer">
     <p>Design by:<a href="http://www.duanliang920.com" target="_blank">少年</a> 2014-8-9</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>
  </body>
</html>
