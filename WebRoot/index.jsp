<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.pojo.Article" %>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!--  直接输入网址请求这个页面时  先跳转到action 取博客 -->
	<%
  		List<Article> articles = (List<Article>) request.getAttribute("articles");
  		if(articles == null){%>
  		<script language="javascript" type="text/javascript">
             window.location.href="findHotArticle.action"; 
        </script>
  		<%}
   %>
	
  </head>
  
  <body>
  <center>
  <br><br><br>	
  	<table width = 960px>
  		<tr align="center">
  			<td width = 240px><a href = "">首页（热门博客)</a></td>
  			<td width = 240px><a href = "findAllArticle" >博客列表</a></td>
  			<td width = 240px><a href = "blog_edit.jsp" >写博客</a></td>
  			<td width = 240px><a href = "login.jsp" >登录</a></td>
  		</tr>
  	</table>
  </center>
  
  <!-- 用户名 -->
  ${user.name}
  
  <!-- 博客列表 -->
  <div class="container">
  	<!-- 循环取博客 -->
    <s:iterator value = "articles" id = "article">
    <!-- 贴图 -->
    <img src = <s:property value = "#article.imgPath"/> width = "80px">
    <!-- 文章标题 -->
    <a href = "readArticle.action?articleId=<s:property value = "#article.articleId"/>"><s:property value = "#article.title"/></a>
    <br>
    <!-- 摘要 -->
    <s:property value = "#article.abstract_"/>
    <br>
    <!-- 阅读 -->
    阅读:<s:property value = "#article.readedCount"/>
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
    
   </div>
  	
  	
  
</html>
