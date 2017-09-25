<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<title>红袖小说网</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
	<!--[if IE]><link rel="stylesheet" href="css/ie.css" media="all" /><![endif]-->
	<!--[if lt IE 9]><link rel="stylesheet" href="css/lt-ie-9.css" media="all" /><![endif]-->
</head>
<body>
<div class="testing">
<header class="main">
	<h1><strong>红袖</strong> 小说网</h1>
	<input type="text" value="search" />
</header>
<section class="user">
	<div class="profile-img">
		<p><img src="images/uiface2.png" alt="" height="40" width="40" />您好，${admin.adminname}</p>
	</div>
	<div class="buttons">
		<button class="ico-font">&#9206;</button>
		<span class="button dropdown">
			<a href="#">通知 <span class="pip">4</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>你有一个新任务</h1>
						<h2>每周记录统计量</h2> 
					</hgroup>
					<p><span>14:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1>新评论</h1>
						<h2>Comment on <em>About page</em> by Darren.</h2> 
					</hgroup>
					<p><span>11:04</span></p>
				</li>
				<li>
					<hgroup>
						<h1>Broken link</h1>
						<h2>We've spotted a broken link on the <em>Blog page</em>.</h2> 
					</hgroup>
					<p><span>10:46</span></p>
				</li>
				<li>
					<hgroup>
						<h1>User report</h1>
						<h2><em>Lee Grant</em> has been promoted to admin.</h2> 
					</hgroup>
					<p><span>09:57</span></p>
				</li>
			</ul>
		</span> 
		<span class="button dropdown">
			<a href="#">Inbox <span class="pip">6</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
			</ul>
		</span> 
		<span class="button">Live</span>
		<span class="button">Help</span>
		<span class="button blue"><a href="index1.jsp">Logout</a></span>
	</div>
</section>
</div>
<nav>
	<ul>
		<li class="section"><a href="admin.action"><span class="icon">&#128711;</span> 个人中心</a></li>
		<li>
			<a href="admin1.action"><span class="icon">&#128196;</span> 书籍管理</a>
			<ul class="submenu">
				<li><a href="admin2.action">上传书籍</a></li>
				<li><a href="admin6.action">上传章节</a></li>
				<li><a href="admin3.action">浏览书籍</a></li>
			</ul>	
		</li>
		
		
		<li><a href="admin4.action"><span class="icon">&#128202;</span>统计</a></li>
		<li><a href="admin5.action"><span class="icon">&#128101;</span> 用户管理 <span class="pip">3</span></a></li>
		
	</ul>
</nav>

<section class="alert">
	<div class="green">	
		<p>Hi Lee, you have <a href="#">3 new pages</a> and <a href="#">16 comments</a> to approve, better get going!</p>
		<span class="close">&#10006;</span>
	</div>
</section>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128200;</span>
			<hgroup>
				<h1>个人中心</h1>
				<h2>An insiders view</h2>
			</hgroup>	
		</header>
		<form action="adminupdate.action" method="post" >
    　　
         id<input type="hidden"  name="admin.id" value="${admin.id}"><br>
         用户名 <input type="text" name="admin.adminname"  value="${admin.adminname}"><br>
          密码 <input type="password" name="admin.password" value="${admin.password}"><br>
      
            <input type="submit" value="修改">
    </form>
		</div>
	</section>
	
	<div class="widget-container">
		<section class="widget small">
			<header>
				<span class="icon">&#59168;</span>
				<hgroup>
					<h1>Latest comments</h1>
					<h2>What they're saying</h2>
				</hgroup>
				<aside>
					<span>
						<a href="#">&#9881;</a>
						<ul class="settings-dd">
							<li><label>Option a</label><input type="checkbox" /></li>
							<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
							<li><label>Option c</label><input type="checkbox" /></li>
						</ul>
					</span>
				</aside>
			</header>
			<div class="content no-padding timeline">
				<div class="tl-post comments">
					<span class="icon">&#59168;</span>
					<p>
						<a href="#">John Doe says:</a> Lorem ipsum dolor sit amet, consecteteur adipiscing elit sed diam nonummy.
						<span class="reply"><input type="text" value="Respond to comment..."/></span>
					</p>
				</div>
				<div class="tl-post comments">
					<span class="icon">&#59168;</span>
					<p>
						<a href="#">John Doe says:</a> Lorem ipsum dolor sit amet, consecteteur adipiscing elit sed diam nonummy.
						<span class="reply"><input type="text" value="Respond to comment..."/></span>
					</p>
				</div>
				<span class="show-more"><a	 href="#">More</a></span>
			</div>
		</section>
		
		<section class="widget 	small">
			<header>
				<span class="icon">&#128319;</span>
				<hgroup>
					<h1>Quick Post</h1>
					<h2>Speed things up</h2>
				</hgroup>
				<aside>
					<span>
						<a href="#">&#9881;</a>
						<ul class="settings-dd">
							<li><label>Option a</label><input type="checkbox" /></li>
							<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
							<li><label>Option c</label><input type="checkbox" /></li>
						</ul>
					</span>
				</aside>
			</header>
			<div class="content">
				<div class="field-wrap">
					<input type="text" value="Title"/>
				</div>
				<div class="field-wrap">
					<textarea id="quick_post" rows="5"></textarea>
				</div>
				<button type="submit" class="green">Post</button> <button type="submit" class="">Preview</button>
			</div>
		</section>
	</div>
	
	<div class="widget-container">
		<section class="widget small">
			<header> 
				<span class="icon">&#128318;</span>
				<hgroup>
					<h1>Website figures</h1>
					<h2>Facts &amp; figures</h2>
				</hgroup>
				<aside>
					<span>
						<a href="#">&#9881;</a>
						<ul class="settings-dd">
							<li><label>Option a</label><input type="checkbox" /></li>
							<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
							<li><label>Option c</label><input type="checkbox" /></li>
						</ul>
					</span>
				</aside>
			</header>
			<div class="content">
				<section class="stats-wrapper">
					<div class="stats">
						<p><span>64</span></p>
						<p>Pages</p>
					</div>
					<div class="stats">
						<p><span>362</span></p>
						<p>Comments</p>
					</div>
				</section>
				<section class="stats-wrapper">
					<div class="stats">
						<p><span>7</span></p>
						<p>Users</p>
					</div>
					<div class="stats">
						<p><span>927</span></p>
						<p>Assets</p>
					</div>
				</section>
			</div>
		</section>
		
		<section class="widget small">
			<header> 
				<span class="icon">&#128363;</span>
				<hgroup>
					<h1>Timeline</h1>
					<h2>Insiders news</h2>
				</hgroup>
				<aside>
					<span>
						<a href="#">&#9881;</a>
						<ul class="settings-dd">
							<li><label>Option a</label><input type="checkbox" /></li>
							<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
							<li><label>Option c</label><input type="checkbox" /></li>
						</ul>
					</span>
				</aside>
			</header>
			<div class="content no-padding timeline">
				<div class="tl-post">
					<span class="icon">&#128206;</span>
					<p><a href="#">John Doe</a> attached an image to a blog post.</p>
				</div>
				<div class="tl-post">
					<span class="icon">&#59172;</span>
					<p><a href="#">John Doe</a> added his location.</p>
				</div>
				<div class="tl-post">
					<span class="icon">&#59170;</span>
					<p><a href="#">John Doe</a> edited his profile.</p>
				</div>
				<div class="tl-post">
					<span class="icon">&#9993;</span>
					<p><a href="#">John Doe</a> has sent you  private message.</p>
				</div>
				<div class="pie graph-area"></div>
			</div>
		</section>
		
	</div>
	<div class="widget-container">
		<div style="height:80px">
		
		</div>
	</div>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.checkbox.min.js"></script>
<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/flot-pie.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script type="text/javascript">
// Feature slider for graphs
$('.cycle').cycle({
	fx: "scrollHorz",
	timeout: 0,
    slideResize: 0,
    prev:    '.left-btn', 
    next:    '.right-btn'
});
</script>
</body>
</html>