<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import = "com.pojo.BlogCategory" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'blog_category.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <%
  		List<BlogCategory> blogCategorys = (List<BlogCategory>) request.getAttribute("blogCategorys");
  		if(blogCategorys == null){%>
  		<script language="javascript" type="text/javascript">
             window.location.href="findCategorys.action?articleAttribute=blog"; 
        </script>
  		<%}
   %>
  
  <body>
  	<s:iterator value = "blogCategorys" id = "blogCategory">
  		<form action="updateCategory.action" method="post">
  			<input type = "hidden" name = "blogCategory.categoryId" value = "<s:property value = "#blogCategory.categoryId"/>">
  			<input type = "hidden" name = "blogCategory.blogId" value = "<s:property value = "#blogCategory.blogId"/>">
  			<input type = "hidden" name = "articleAttribute" value = "blog">
  			<input type = "text" name = "blogCategory.blogType" value = "<s:property value = "#blogCategory.blogType"/>">
  			<input type = "submit" value = "修改">
  		</form>
  		<a href = "deleteCategoryByArticleType.action?articleType=${blogCategory.blogType}&articleAttribute=blog"> 删除</a>
  		<br>
  		<br>
  		<br>
  	</s:iterator>
    
  </body>
</html>
