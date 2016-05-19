<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.pojo.Blog" %>
<%@ page import = "com.tools.Constants" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'blog_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link media="all" rel="stylesheet" type="text/css" href="bootstrap/styles/bootstrap.css" />

  </head>
  
  <body>
  <!-- 用户名 -->
  ${user.name}
  
  <!-- 分页逻辑 -->
  <%
  		final int PAGE_SIZE = 2;  //每页显示博客的数量
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
		
		request.setAttribute("blogTopPos", blogTopPos);
		request.setAttribute("blogEndPos", blogEndPos);
		
		/* System.out.println("showPage = " + showPage);
		System.out.println("blogCount = " + blogCount);
		System.out.println("pageCount = " + pageCount);
		System.out.println("blogTopPos = " + blogTopPos);
		System.out.println("blogEndPos = " + blogEndPos);
		System.out.println("------------------------------"); */
   %>
  
  <div class="container">
  
  	<!-- 循环取博客 在session中取 -->
    <s:iterator value = "#session.blogs" id = "blog" begin="#request.blogTopPos" end="#request.blogEndPos">
    id : <s:property value = "#blog.blogId"/>
    <!-- 贴图 -->
    <img src = <s:property value = "#blog.imgPath"/> width = "80px">
    <!-- 文章标题 -->
    <a href = "readBlog.action?blogId=<s:property value = "#blog.blogId"/>"><s:property value = "#blog.title"/></a>
    <br>
    <!-- 摘要 -->
    <s:property value = "#blog.abstract_"/>
    <br>
    <!-- 日期 -->
    date:<s:property value = "#blog.date"/>
    <!--  操作 -->
    <s:if test="#session.user != null">
    <a href = "updateBlogPre.action?blogId=<s:property value = "#blog.blogId"/>">编辑</a>
    <a href = "deleteBlogByBlogId?blogId=<s:property value = "#blog.blogId"/>">删除</a>
    </s:if>
   	<br>
   	<br>
   	<br>
   	<br>
    </s:iterator>
    
    <a href = "blog_list.jsp?showPage=1">首页</a>
    <%for(int i = 1; i < (pageCount > 5 ? 5 : pageCount); ++i){ %>
    <a href = "blog_list.jsp?showPage=<%=i%>"><%=i%></a>
    <%}%>
    <a href = "blog_list.jsp?showPage=<%=pageCount%>">未页</a>
    
   </div>
  </body>
</html>
