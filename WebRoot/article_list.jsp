<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  
  <div class="container">
  	<!-- 循环取博客 -->
    <s:iterator value = "articles" id = "article">
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
    
   </div>
  </body>
</html>
