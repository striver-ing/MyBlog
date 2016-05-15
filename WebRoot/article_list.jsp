<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.pojo.Article" %>
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
    
    <title>My JSP 'article_list.jsp' starting page</title>
    
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
  		int articleCount; // 总文章数
  		int showPage; //当前显示的页数
  		int articleTopPos; //该页第一个博客在总博客中排第几
  		int articleEndPos; //该页最后一个博客在总博客中排第几
  		
  		//赋值
  		//articleCount
  		List<Article> articles =(List<Article>)session.getAttribute(Constants.BLOGS);
  		articleCount = articles.size();
  		//pageCount
  		pageCount = articleCount % PAGE_SIZE == 0 ? articleCount / PAGE_SIZE : articleCount / PAGE_SIZE + 1;
		//showPage
		String count = (String)request.getParameter("showPage");
		if(count == null){
			showPage = 1;
		}else{
			showPage = Integer.parseInt(count);
		}
		//如果showPage 大于最大页数 则 showpage = 最大页数 如果showpage 小于 1 则showpage = 1 (防止用户乱输入跳转页数)
		showPage = showPage > pageCount ? pageCount : showPage < 1 ? 1 : showPage;
		
		//articleTopPos
		articleTopPos = (showPage - 1) * PAGE_SIZE;
		articleEndPos = articleTopPos + PAGE_SIZE - 1;
		articleEndPos = articleEndPos > articleCount - 1 ? articleCount - 1 : articleEndPos;
		
		request.setAttribute("articleTopPos", articleTopPos);
		request.setAttribute("articleEndPos", articleEndPos);
		
		System.out.println("showPage = " + showPage);
		System.out.println("articleCount = " + articleCount);
		System.out.println("pageCount = " + pageCount);
		System.out.println("articleTopPos = " + articleTopPos);
		System.out.println("articleEndPos = " + articleEndPos);
		System.out.println("------------------------------");
   %>
  
  <div class="container">
  
  	<!-- 循环取博客 在session中取 -->
    <s:iterator value = "#session.blogs" id = "article" begin="#request.articleTopPos" end="#request.articleEndPos">
    id : <s:property value = "#article.articleId"/>
    <!-- 贴图 -->
    <img src = <s:property value = "#article.imgPath"/> width = "80px">
    <!-- 文章标题 -->
    <a href = "findArticleByArticleId.action?articleId=<s:property value = "#article.articleId"/>"><s:property value = "#article.title"/></a>
    <br>
    <!-- 摘要 -->
    <s:property value = "#article.abstract_"/>
    <br>
    <!-- 日期 -->
    date:<s:property value = "#article.date"/>
    <!--  操作 -->
    <s:if test="#article.userId != null">
    <a href = "updateArticlePre.action?articleId=<s:property value = "#article.articleId"/>">编辑</a>
    <a href = "deleteArticleByArticleId?articleId=<s:property value = "#article.articleId"/>">删除</a>
    </s:if>
   	<br>
   	<br>
   	<br>
   	<br>
    </s:iterator>
    
    <a href = "article_list.jsp?showPage=1">首页</a>
    <%for(int i = 1; i < (pageCount > 5 ? 5 : pageCount); ++i){ %>
    <a href = "article_list.jsp?showPage=<%=i%>"><%=i%></a>
    <%}%>
    <a href = "article_list.jsp?showPage=<%=pageCount%>">未页</a>
    
   </div>
  </body>
</html>
