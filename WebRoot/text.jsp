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
<title>个人博客</title>
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
.tanchucaidan3{display:none;margin-top: 10px;margin-left: -25px;padding: 10px;background-color: white;}
.dingjicaidan3 li:hover ul{ display:block;}
.title-1{font-family: "microsoft yahei";font-size: 18px;text-align: center;margin-top: 10px;margin-bottom: 5px;}
.text-1{font-family: "microsoft yahei";font-size: 14px;width: 90%;margin-left: 5%;}
.bianji{margin-left: 80%;}
.delete{margin-left: 20px;}
.gongneng{margin-bottom: 10px;}
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
                            <li>
                                                         弹出菜单2
                            </li>
                        </ul>
            </li>
        </ul>
	    </div>
	    
	    <div class="top-2">
	    <ul class="dingjicaidan2">
		<li><a href="#"><img src="images/gengduo.png" class="top-2-img"></a>
			<ul class="tanchucaidan2">
                            <li>
                                                         弹出菜单1
                            </li>
                            <li>
                                                         弹出菜单2
                            </li>
                        </ul>
            </li>
        </ul>
	    </div>
	    
	    <div class="top-3">
	    	<ul class="dingjicaidan3">
		<li><a href="#"><img src="images/white.png" class="top-3-img"></a>
			<ul class="tanchucaidan3">
                            <li>
                                                         弹出菜单1
                            </li>
                            <li>
                                                         弹出菜单2
                            </li>
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
         <li><a href="about.jsp">关于我</a></li>
         <li><a href="shuo.jsp">碎言碎语</a></li>
         <li><a href="riji.jsp">个人日记</a></li>
         <li><a href="xc.jsp">相册展示</a></li>
         <li><a href="learn.jsp">学无止境</a></li>
         <!--<li><a href="guestbook.html">留言板</a></li>-->
         <div class="clear"></div>
        </ul>
      </div>
       <!--nav end-->
    <!--content start-->
    <div id="content">
         <!--left-->
         <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2>文章<span>推荐</span></h2>
           </div>
          <div class="content_text">
          	
          	<!--wz-->
          	<div>
          		<p class="title-1">浅谈：html5和html的区别</p>
          	</div>
          	<div class="gongneng">
          		<span class="bianji"><a href="">编辑</a></span>
          		<span class="delete"><a href="">删除</a></span>
          	</div>
          	<div class="text-1">
          		最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对“XP系统”不提供更新补丁、维护的情况下“html5+css3”也逐渐的成为新一代web前端技术，手机网站也渐渐的成为一种趋势。
			什么是html5呢？
			html5最先由WHATWG(Web 超文本应用技术工作组)命名的一种超文本标记语言，随后和W3C的xhtml2.0(标准)相结合，产生现在最新一代的超文本标记语言。可以简单点理解成：HTML 5 ≈ HTML4.0+CSS3+JS+API。
			hmtl5和html的区别在哪里？
			我们现在web前端开发的静态网页，一般都是html4.0。同时是符合W3C的xhtml1.0规范来的。那么他们两者又有什么实质性的区别呢？
			1.在文档类型声明上
			由这两者对比可见：在文档声明上，html有很长的一段代码，并且很难记住这段代码，想必很多人都是靠工具直接生成的吧？而html5却是不同，只有简简单单的声明，这也方便人们的记忆，更加精简。
			2.在结构语义上
			html4.0：没有体现结构语义化的标签，我们通常都是这样来命名的
			这样表示网站的头部。
			html5：在语义上却有很大的优势。提供了一些新的html5标签，比如:
			3.强大的HTML5的新功能
			（1）强大的绘图功能
			    可能有些动画，或者图片，在html5可以通过强大的绘画功能，加上JS可以实现。而在html4.0却不行。
			    在HTML5中，有两个东西，是可以进行绘图的，我们一起来看看是哪两个神奇的玩意。
			    1.Canvas标签
			    Canvas 通过 JavaScript 来绘制 2D 图形，Canvas 是逐像素进行渲染的。
			    在 canvas 中，一旦图形被绘制完成，它就不会继续得到浏览器的关注。如果其位置发生变化，那么整个场景也需要重新绘制，包括任何或许已被图形覆盖的对象。
			   2.SVG
			    SVG 是一种使用 XML 描述 2D 图形的语言，SVG 基于 XML，这意味着 SVG DOM 中的每个元素都是可用的。您可以为某个元素附加 JavaScript 事件处理器。在 SVG 中，每个被绘制的图形均被视为对象。如果 SVG 对象的属性发生变化，那么浏览器能够自动重现图形。
			与其他图像格式相比（比如 JPEG 和 GIF），使用 SVG 的优势在于：
			    （1）SVG 图像可通过文本编辑器来创建和修改
			    （2）SVG 图像可被搜索、索引、脚本化或压缩
			    （3）SVG 是可伸缩的
			    （4）SVG 图像可在任何的分辨率下被高质量地打印
			    （5）SVG 可在图像质量不下降的情况下被放大
			那么都两者都可以用于绘图，我们一起来看看他们之间有何区别：
			    Canvas
			        1.依赖分辨率
			        2.不支持事件处理器
			        3.弱的文本渲染能力
			        4.能够以 .png 或 .jpg 格式保存结果图像
			        5.最适合图像密集型的游戏，其中的许多对象会被频繁重绘
			    SVG
			        1.不依赖分辨率
			        2.支持事件处理器
			        3.最适合带有大型渲染区域的应用程序（比如谷歌地图）
			        4.复杂度高会减慢渲染速度（任何过度使用 DOM 的应用都不快）
			        5.不适合游戏应用
			（2）新增视频标签 
			    可能在html4.0的时候，我们想要插入一段视频，还需要引用一长段的代码。但是在html5的情况下。我们只需要用于一个video标签即可。
          	</div>
          	
          	
          	
           <!--wz-->
           <!--<div class="wz">
            <h3><a href="#" title="浅谈：html5和html的区别">浅谈：html5和html的区别</a></h3>
             <dl>
               <dt><img src="images/s.jpg" width="200"  height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联
                 网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对"XP系统"不提供更新补丁、维护的情况下。
               html5+css3也逐渐的成为新一代web前端技术.....</p>
               <p class="dd_text_2">
               <span class="left author">王倚晴</span><span class="left sj">时间:2016-5-5</span>
               <span class="left yd"><a href="wenzhang.html" title="阅读全文" target="_blank">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>-->
           <!--wz end-->
            <!--wz-->
           <!--<div class="wz">
            <h3><a href="#" title="浅谈：html5和html的区别">浅谈：html5和html的区别</a></h3>
             <dl>
               <dt><img src="images/s1.jpg" width="200" height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联
                 网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对"XP系统"不提供更新补丁、维护的情况下。
               html5+css3也逐渐的成为新一代web前端技术.....</p>
               <p class="dd_text_2">
               <span class="left author">段亮</span><span class="left sj">时间:2014-8-9</span>
               <span class="left fl">分类:<a href="#" title="学无止境">学无止境</a></span><span class="left yd"><a href="#" title="阅读全文">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>-->
           <!--wz end-->
            <!--wz-->
           <!--<div class="wz">
            <h3><a href="#" title="浅谈：html5和html的区别">浅谈：html5和html的区别</a></h3>
             <dl>
               <dt><img src="images/s2.jpg" width="200" height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联
                 网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对"XP系统"不提供更新补丁、维护的情况下。
               html5+css3也逐渐的成为新一代web前端技术.....</p>
               <p class="dd_text_2">
               <span class="left author">段亮</span><span class="left sj">时间:2014-8-9</span>
               <span class="left fl">分类:<a href="#" title="学无止境">学无止境</a></span><span class="left yd"><a href="#" title="阅读全文">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>-->
           <!--wz end-->
           <!--wz-->
           <!--<div class="wz">
            <h3><a href="#" title="浅谈：html5和html的区别">浅谈：html5和html的区别</a></h3>
             <dl>
               <dt><img src="images/s3.jpg" width="200" height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联
                 网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对"XP系统"不提供更新补丁、维护的情况下。
               html5+css3也逐渐的成为新一代web前端技术.....</p>
               <p class="dd_text_2">
               <span class="left author">段亮</span><span class="left sj">时间:2014-8-9</span>
               <span class="left fl">分类:<a href="#" title="学无止境">学无止境</a></span><span class="left yd"><a href="#" title="阅读全文">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>-->
           <!--wz end-->
            <!--wz-->
           <!--<div class="wz">
            <h3><a href="#" title="浅谈：html5和html的区别">浅谈：html5和html的区别</a></h3>
             <dl>
               <dt><img src="images/s3.jpg" width="200" height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">最近看群里聊天聊得最火热的莫过于手机网站和html5这两个词。可能有人会问，这两者有什么关系呢？随着这移动互联
                 网快速发展的时代，尤其是4G时代已经来临的时刻，加上微软对"XP系统"不提供更新补丁、维护的情况下。
               html5+css3也逐渐的成为新一代web前端技术.....</p>
               <p class="dd_text_2">
               <span class="left author">段亮</span><span class="left sj">时间:2014-8-9</span>
               <span class="left fl">分类:<a href="#" title="学无止境">学无止境</a></span><span class="left yd"><a href="#" title="阅读全文">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>-->
           <!--wz end-->
              
                             
           </div>
         </div>
         <!--left end-->
         <!--right-->
         <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于博主</h2>
           <img src="images/my.jpg" width="230" height="230" alt="博主"/>
           <p>博主：王倚晴</p>
           <p>职业：web前端</p>
           <p>简介：</p>
           <!--<p>
           <a href="#" title="联系博主"><span class="left b_1"></span></a><a href="#" title="加入QQ群，一起学习！"><span class="left b_2"></span></a>
           <div class="clear"></div>
           </p>-->
          </div>
          <!--栏目分类-->
           <div class="lanmubox">
              <div class="hd">
               <ul><li>精心推荐</li><li>最新文章</li><li class="hd_3">随机文章</li></ul>
              </div>
              <div class="bd">
                <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="网站项目实战开发（-）">网站项目实战开发（-）</a></li>
					<li><a href="#" title="关于响应式布局">关于响应式布局</a></li>
					<li><a href="#" title="如何创建个人博客网站">如何创建个人博客网站</a></li>
					<li><a href="#" title="网站项目实战开发（二）">网站项目实战开发（二）</a></li>
					<li><a href="#" title="为什么新站前期排名老是浮动？(转)">为什么新站前期排名老是浮动？(转)</a></li>
				</ul>
                 
                
              </div>
           </div>
           <!--end-->
           <div class="link">
            <h2>友情链接</h2>
            <p><a href="http://www.gaosubo.com" target="_blank">王倚晴个人作品</a></p>
           </div>
         </div>
         <!--right end-->
         <div class="clear"></div>
    </div>
    <!--content end-->
    <!--footer start-->
    <div id="footer">
     <p>Design by:<a href="http://www.duanliang920.com" target="_blank">少年</a> 2014-8-9</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>
</body>
</html>

