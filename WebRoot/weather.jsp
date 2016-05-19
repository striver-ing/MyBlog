<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'weather.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <script type="text/javascript" src="weather.js"></script>

  </head>
  
  <body>
  <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=1" width="330" height="35" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
  <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=99" width="160" height="36" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
  </body>
</html>
