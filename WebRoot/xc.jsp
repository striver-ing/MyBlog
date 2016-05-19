<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
 <base href="<%=basePath%>">
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>相册展示-个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/index.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/waterfall.js" ></script> 
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


</head>

<body>
	<div style="width: 100%;height: 50px;background-color: white; filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;opacity: 0.5;position: relative;  ">
		<div class="top-1">
		<ul class="dingjicaidan1">
		   <li> <a href="#"><img src="images/white.png" class="top-1-img">	 </a>    	    	                                                                                              
                        <ul class="tanchucaidan1">
                            <a href="" target="_blank"><li>
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
                                <form action="" method="get">
                                	<input name="sousuo" type="text" class="sousuo1">
                                	    <button class="enniu">搜索</button>
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
                            <a href="html/index.jsp" target="_blank"><li>
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
    </div>
    <!--header end-->
    <!--content start-->
    <div id="content_xc">
         <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><h1>相册展示</h1></div>
         </div>
         <div class="xc_content">
          <div class="con-bg">
              <div class="w960 mt_10">
               <div class="w650">
                <ul class="tips" id="wf-main" style="display:none" >
                        <li class="wf-cld"><img src="images/photo/8.jpg"  width="200" height="178" alt="" /></li>         
                        <li class="wf-cld"><img src="images/photo/1.jpg" height="147" width="200" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/2.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/3.jpg"  width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/4.jpg" width="200" height="299" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/5.jpg" width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/6.jpg" width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/7.jpg" width="200" height="135" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/9.jpg"  width="200" height="300" alt="" /></li>
                        <li class="wf-cld"><img src="images/photo/10.jpg"  width="200" height="107" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/8.jpg"  width="200" height="178" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/1.jpg" height="147" width="200" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/2.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/3.jpg"  width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/4.jpg" width="200" height="299" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/5.jpg" width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/6.jpg" width="200" height="267"alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/7.jpg" width="200" height="135" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/9.jpg"  width="200" height="300" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/10.jpg"  width="200" height="107" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/2.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/3.jpg"  width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/8.jpg"  width="200" height="178" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/1.jpg" height="147" width="200" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/2.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/3.jpg"  width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/4.jpg" width="200" height="299" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/5.jpg" width="200" height="125" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/6.jpg" width="200" height="267"alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/7.jpg" width="200" height="135" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/9.jpg"  width="200" height="300" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/10.jpg"  width="200" height="107" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/2.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="images/photo/3.jpg"  width="200" height="125" alt="" /></li>
                    </ul>
               </div>
             </div>
           </div>
         </div>
    </div>
    <!--content end-->
  <!--footer-->
    <div id="footer">
     <p>Design by:少年 2014-8-9</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>
     <script>

    var timer, m = 0, m1 = $("img[rel='lazy']").length;

    function fade() {

        $("img[rel='lazy']").each(function () {

            var $scroTop = $(this).offset();

            if ($scroTop.top <= $(window).scrollTop() + $(window).height()) {

                $(this).hide();

                $(this).attr("src", $(this).attr("lazy_src"));

                $(this).attr("top", $scroTop.top);

                $(this).removeAttr("rel");

                $(this).removeAttr("lazy_src");

                $(this).fadeIn(600);

                var _left = $(this).parent().parent().attr("_left");

                if (_left != undefined)

                    $(this).parent().parent().animate({ left: _left }, 400);

                m++;

            }

        });

        if (m < m1) { timer = window.setTimeout(fade, 300); }

        else { window.clearTimeout(timer); }

    }

    $(function () {

        $("#wf-main img[rel='lazy']").each(function (i) {

            var _left = $(this).parent().parent().css("left").replace("px", "");

            $(this).parent().parent().attr("_left", _left);

            $(this).parent().parent().css("left", 0);

        });

        fade();

    });

    $(".loading").hide();

    $("#wf-main").show();

</script>	
</body>
</html>