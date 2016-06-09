<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import = "com.pojo.Blog" %>
<%@ page import = "com.tools.Constants" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>学无止境-个人博客</title>
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


<!-- 分页逻辑 -->
  <%
  		final int PAGE_SIZE = 6;  //每页显示博客的数量
  		int pageCount; //总页数
  		int blogCount; // 总文章数
  		int showPage; //当前显示的页数
  		int blogTopPos; //该页第一个博客在总博客中排第几
  		int blogEndPos; //该页最后一个博客在总博客中排第几
  		
  		//赋值
  		//blogCount
  		List<Blog> blogs =(List<Blog>)session.getAttribute(Constants.BLOGS);
  		blogCount = blogs.size();
  		//pageCount
  		pageCount = blogCount % PAGE_SIZE == 0 ? blogCount / PAGE_SIZE : blogCount / PAGE_SIZE + 1;
		//showPage
		String count = (String)request.getParameter("showPage");
		if(count == null){
			showPage = 1;
		}else{
			showPage = Integer.parseInt(count);
		}
		//如果showPage 大于最大页数 则 showpage = 最大页数 如果showpage 小于 1 则showpage = 1 (防止用户乱输入跳转页数)
		showPage = showPage > pageCount ? pageCount : showPage < 1 ? 1 : showPage;
		
		//blogTopPos
		blogTopPos = (showPage - 1) * PAGE_SIZE;
		blogEndPos = blogTopPos + PAGE_SIZE - 1;
		blogEndPos = blogEndPos > blogCount - 1 ? blogCount - 1 : blogEndPos;
		blogTopPos = blogTopPos < 0 ? 0 : blogTopPos;
		blogEndPos = blogEndPos < 0 ? 0 : blogEndPos;
		
		request.setAttribute("blogTopPos", blogTopPos);
		request.setAttribute("blogEndPos", blogEndPos);
		
		System.out.println("showPage = " + showPage);
		System.out.println("blogCount = " + blogCount);
		System.out.println("pageCount = " + pageCount);
		System.out.println("blogTopPos = " + blogTopPos);
		System.out.println("blogEndPos = " + blogEndPos);
		System.out.println("------------------------------");
   %>

</head>

<body>
	<div style="width: 100%;height: 50px;background-color: white; filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;position: relative;  ">
		<div class="top-1">
		<ul class="dingjicaidan1">
		   <li> <a href="#"><img src="images/white.png" class="top-1-img">	 </a>    	    	                                                                                              
                        <ul class="tanchucaidan1">
							<li> <a href="" target="_blank">编辑博客</a></li>
                            
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
					<li><a href="login.jsp" target="_blank">登录</a></li>
                     
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
         <div class="left" id="learn">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><h1>博客列表</h1></div>
           </div>
           <div class="l_content">
              <!--wz-->
              <!-- 循环取博客 在session中取 -->
    	<s:iterator value = "#session.blogs" id = "blog" begin="#request.blogTopPos" end="#request.blogEndPos">
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
               <span class="left author">王倚晴</span><span class="left sj">时间:<s:property value = "#blog.date"/></span>
               <!-- <span class="left fl">分类:<a href="#" title="学无止境">学无止境</a></span> -->
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
           <center>
     		<%if (pageCount>1){ %>
	     		<a href = "blog_list.jsp?showPage=1">首页</a>
	     		<a href = "blog_list.jsp?showPage=<%=showPage-1%>">上一页</a>
	     		<a href = "blog_list.jsp?showPage=<%=showPage+1%>">下一页</a>
			    <a href = "blog_list.jsp?showPage=<%=pageCount%>">未页</a>
		    <%} %>
     		</center>
     		
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
     <p>Design by:王倚晴</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>
</body>
</html>

