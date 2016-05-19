<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>
       
<title>Blog Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Blog Login Form Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="css/login-style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Handlee' rel='stylesheet' type='text/css'>
<!--/webfonts-->
</head>
<body>
<!--start-main-->
<h1>Blog Login</h1>
<div class="login-box">
	<div class="camera"> </div>
	<h2>My Blog</h2>
	<form action="login.action" method = post>
		<input type="text" class="text" name = "user.name" value = "USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
		<input type="password" value="Password" name = "user.pwd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		<div class="btn"><input type="submit" onclick="myFunction()" value="Continue"></div>
	</form>
	<font color="yellow">${loginResult}</font>
	</div>
</div>
<!--//End-login-form-->
<!--start-copyright-->
<div class="copy-right">
	<p>Template by 王倚晴</p> 
</div>
<!--//end-copyright-->		
</body>
</html>