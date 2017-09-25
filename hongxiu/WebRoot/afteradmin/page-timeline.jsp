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
</head>
<body>
<div class="testing">
<header class="main">
	<h1><strong>Retina</strong> Dashboard</h1>
	<input type="text" value="search" />
</header>
<section class="user">
	<div class="profile-img">
		<p><img src="images/uiface2.png" alt="" height="40" width="40" />您好，${admin.adminname}</p>
	</div>
	<div class="buttons">
		<button class="ico-font">&#9206;</button>
		<span class="button dropdown">
			<a href="#">Notifications <span class="pip">4</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>You have a new task</h1>
						<h2>Report web statistics week by week.</h2> 
					</hgroup>
					<p><span>14:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1>New comment</h1>
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
	<form method="link" action="page-new.jsp">
		<button class="green">Create new page</button>
	</form>
</section>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1>Pages</h1>
				<h2>CMS content pages</h2>
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
				<span class="icon">&#59185;</span>
				<p><a href="#">The benefits of SEO</a> blog page. <span class="time">Created 1 hour ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p><a href="#">Web designs of the month</a> blog page. <span class="time">Created 2 hours ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p><a href="#">The design history of apple</a> blog page. <span class="time">Created 9 hours ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p><a href="#">How to design for retian display</a> blog page. <span class="time">Created 1 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p><a href="#">Responsive design</a> blog page. <span class="time">Created 1 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p><a href="#">eCommerce design</a> service page. <span class="time">Created 2 days</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p><a href="#">Search engine optimisation</a> service page. <span class="time">Created 2 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p><a href="#">Website design</a> service page. <span class="time">Created 2 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#128196;</span>
				<p><a href="#">Home</a> page. <span class="time">Created 2 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p><a href="#">Services</a> page. <span class="time">Created 3 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p><a href="#">Blog</a> page. <span class="time">Created 3 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#128196;</span>
				<p><a href="#">About us</a> page. <span class="time">Created 4 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#128196;</span>
				<p><a href="#">Contact us</a> page. <span class="time">Created 7 days ago</span></p>
			</div>
		</div>
	</section>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.checkbox.min.js"></script>
<!--<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/cycle.js"></script>-->
<script src="js/jquery.tablesorter.min.js"></script>
</body>
</html>