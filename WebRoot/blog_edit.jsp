<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import = "com.pojo.User" %>
<%@ page import = "com.tools.Constants" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link media="all" rel="stylesheet" type="text/css" href="simditor-2.0.1/styles/font-awesome.css" />
	<link media="all" rel="stylesheet" type="text/css" href="simditor-2.0.1/styles/simditor.css" />
	<link media="all" rel="stylesheet" type="text/css" href="bootstrap/styles/bootstrap.css" />

	<script type="text/javascript" src="simditor-2.0.1/scripts/jquery.min.js"></script>
	<script type="text/javascript" src="simditor-2.0.1/scripts/module.js"></script>
	<script type="text/javascript" src="simditor-2.0.1/scripts/uploader.js"></script>
	<script type="text/javascript" src="simditor-2.0.1/scripts/simditor.js"></script>
	<style type="text/css">
		.wrapper {
		  width: 950px;
		  margin: 0 auto;
		}
	</style>
  </head>
  
  <% 
  	 User user=(User)session.getAttribute(Constants.USER);
      if(user == null){
  		response.sendRedirect("index.jsp");
  	  }
  %>
  
  <body>
	    <form action="addBlog.action" method="post">
			<div class="wrapper">
				<br />
				<br />
			
				<input type="text" class="form-control" name="blog.title" placeholder="这里输入标题..." autofocus>
				<br />
				
				<textarea id="editor" name="blog.content" placeholder="这里输入内容..."></textarea>
				<br />
				
				<input type="text" class="form-control" name="articleTypes" placeholder="博客分类（多个分类之间用,分割)" autofocus>
				<br />
				
				<br />
				<textarea name="blog.abstract_" class="form-control" rows=3 placeholder="摘要..."></textarea>
				<br />
				<br />
				
				<button type="submit" class="btn btn-default">提交</button>
				<br />
				<br />
				<div class="alert alert-warning" role="alert">输入标题及内容，并对内容进行编辑。也可插入代码和上传本地图片 然后点击提交。</div>
			</div>
		</form>
  </body>
  <script type="text/javascript">
  	$(function(){
		toolbar = [ 'title', 'bold', 'italic', 'underline', 'strikethrough',  'color', '|',
		            'ol', 'ul', 'blockquote', 'code', 'table', '|',
		            'link', 'image', 'hr', '|',
		            'indent','outdent'
                   ]
		var editor = new Simditor( {
			textarea : $('#editor'),
			toolbar : toolbar,  //工具栏
			/* pasteImage : true,   //允许粘贴图片 */
			defaultImage : 'simditor-2.0.1/images/image.png', //编辑器插入图片时使用的默认图片
			upload : {
				url : 'ImgUpload.action', //文件上传的接口地址
			    params: null, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
			    fileKey: 'fileDataFileName', //服务器端获取文件数据的参数名
			    connectionCount: 3,  //图片同时上传的最大数
			    leaveConfirm: '正在上传文件...' //当在文件上传时离开页面的提示信息
			} 
		});
  	}) 
  </script>
</html>
