<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>红袖小说网站</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body >


<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header " >
		<div style="margin-top:10px">
		<c:choose>  
                <c:when test="${user!=null}">
                    <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">您好，${user.username}&nbsp;&nbsp;&nbsp;vip:${user.vip.vip}</span></li>
		            <a href="loginServlet?method=quit"><li class="login_bottom"><i class="register"> </i><span style="color:#00FF00;font-size:12 ;font-family:宋体;">退出登录</span></li></a>
		         </c:when>  
		          <c:otherwise> 
		<label>欢迎您来到红袖小说网站，请</label><button class="btn btn-default " id="btn">登录</button><label>或者</label><button  class="btn btn-default " id="register">注册</button>
		  </c:otherwise>  
  </c:choose>
		</div>
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
		<ul class="nav navbar-nav navbar-right" style="margin-top:10">
		<li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
		<li><a href="http://topic.hongxiu.com/wap/"><img src="images/shouji.png"></img>手机看小说</a></li>
		<li><a href="http://pay.hongxiu.com/default.shtml"><img src="images/chongzhi.png"></img>充值</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span>帮助</a></li>
		</ul>
		</div>
	</div>
</nav>
 
<div class="modal fade" id="myModal" tabindex="-1" >
	<form  action="loginServlet?method=login"  method="post" >
	<!-- 窗口声明<img src="images/logo.png" alt="红袖小说网站"> -->
		<div class="modal-dialog ">
			<!-- 内容声明 -->
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal"><span>&times;</span></button>
					<h4 class="modal-title">登陆</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row has-success has-feedback">
							<div class="col-md-4">用户名</div>
							<div class="col-md-4"><input type="text"  name="username" id="username"></input><span id="erro"></span></div>
							<div ><span id="erroinfo" style="color: red"></span></div>
							
						</div>
						<div class="row has-success has-feedback" style="margin-top:10px">
							<div class="col-md-4">密码</div>
							<div class="col-md-4"><input type="password" name="password" id="password"></input><span id="erro2"></span></div>
							<div ><span id="erroinfo2" style="color: red"></span></div>
						</div>
						
					</div>
				</div>
				 <div style="margin-left:15px;margin-top:12px;float:left;">验证码
                  <input id="yan" type="text" name="code" style="width:180px; height:20px; border:solid 1px #000000; color:#666666;margin-top:12px;">
			       <div style="height:22px;float:right; width:100px; margin-left:60px;margin-top: -10px;"><br>
			      <img src="validate.jpg" alt="点击切换图片" title="点击切换图片" onclick="this.src='validate.jpg?temp='+(new Date().getTime().toString(36));"/>
			      </div></div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit" id="login">确认</button>
					<button class="btn btn-primary" id="cancel1" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</form>
	 
</div>
<div class="modal fade" id="Modal" tabindex="-1">
	<!-- 窗口声明 -->
	<form  action="register.action"  method="post" >
		<div class="modal-dialog">
			<!-- 内容声明 -->
			
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal"><span>&times;</span></button>
					<h4 class="modal-title">注册</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row has-success has-feedback">
							<div class="col-md-4">用户名</div>
							<div class="col-md-4"><input type="text" name="username2" id="username2"><span id="usernameerro"></span></input></div>
							<div ><span id="erroinfo3" style="color: red"></span></div>
						</div>
						<div class="row has-success has-feedback" style="margin-top:10px">
							<div class="col-md-4">姓名</div>
							<div class="col-md-4"><input type="text" name="name" id="name"><span id="nameerro"></span></input></div>
							<div ><span id="nameerroinfo" style="color: red"></span></div>
						</div>
						<div class="row has-success has-feedback" style="margin-top:10px">
							 <div class="col-md-6">性别</div>
							 <div class="btn-group" data-toggle="buttons">
								<label for="" class="btn btn-primary active">
									<input type="radio" name="sex" value="男" checked>男
								</label>
								<label for="" class="btn btn-primary">
									<input type="radio" name="sex" value="女">女
								</label>
							</div>
						</div>
						<div class="row has-success has-feedback" style="margin-top:10px">
							<div class="col-md-4">密码</div>
							<div class="col-md-4"><input type="password" name="password2" id="password2"><span id="pass1erro"></span></input></div>
							<div><span id="pass1" style="color: red"></span></div>
						</div>
						<div class="row has-success has-feedback" style="margin-top:10px" >
							<div class="col-md-4" >确认密码</div>
							<div class="col-md-4"><input type="password" name="password3" id="password3"><span id="pass2erro"></span></input></div>
							<div><span id="pass2" style="color: red"></span></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit" id="register">确认</button>
					<button class="btn btn-primary" data-dismiss="modal">取消</button>
				</div>
			
			</div>
		</div>
	</form>
</div>

<div width="700px" style="margin-top:50px;margin-left:300px">

    <img src="images/logo.png" alt="红袖小说网站">
		<div class="btn-group" style="margin-left:180px;margin-top: 30px">
			 	<form action="search.action" method="post">
	                 <select name="select">
						
								<option value="novel" selected="selected">书名</option>
								<option value="writer">作者</option>
					  </select>
					  <input type="text" class="text" name="name" placeholder="请输入你想搜索的内容" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '赶紧搜素你想要的吧！';}"/>
		 <input type="submit" value="点击搜素"/>
			</form>
	    </div>
</div>




<ul class="nav nav-pills" style="margin-left:300px;background-color:red;width:800px">
<li class="active"><a href="#">首页</a></li>
<li style="margin-left:40px"><a href="newnovel.action" >最新更新</a></li>
<li style="margin-left:40px"><a href="freenovel.action">免费小说</a></li>
<li style="margin-left:40px"><a href="shortnovel.action">短篇文学</a></li>
<li style="margin-left:40px"><a href="motionnovel.action">言情小说</a></li>
<li style="margin-left:40px"><a href="vipnovel.action">VIP</a></li>
</ul>
</div>

<div class="container" >
    <div class="row">
		<div class="col-md-8">
				<div class="container-fluid" style="padding:0;margin-left:200px">
				    <div class="row info-content">
						<div class="col-md-5 col-sm-5 col-xs-5">
							<img src="${result.image}" class="img-responsive" alt="">
						</div>
						<div class="col-md-7 col-sm-7 col-xs-7">
                        <h1 align="center" >《${result.novelname}》<span class="badge">new</span></h1>
						<ul class="nav nav-tabs" style="margin-top:30px;">
						<li class="active" id="one"><a href="#html5">作品简介</a></li>
						<li id="two"><a href="#bootstrap">作者信息</a></li>
						<li id="three"><a href="#jquery">类型</a></li>
						<li id="four"><a href="#extjs">时间</a></li>
						</ul>
						<div class="tab-content" ">
							<div class="tab-pane fade in active" id="html5">${result.introduce}</div>
							<div class="tab-pane fade" id="bootstrap">${result.writer} </div>
							<div class="tab-pane fade" id="jquery">${result.type}</div>
							<div class="tab-pane fade" id="extjs">${result.addtime}</div>
						</div>
						<div class="btn-group">
							<div class="btn-group">
								<button class="btn btn-default">目录</button>
							</div>
							<div class="btn-group">
								<button class="btn btn-default"><a href="read.action?novel.id=${result.id}">开始阅读</a></button>
							</div>
							<div class="btn-group">
								<button class="btn btn-default">加入书架</button>
							</div>
						</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>

<div class="container" style="margin-left:280px;">
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="quit.action">退出本小说阅读</a>
						 	<h1>留下评论</h1>
				  			<div >
								提交评论成功！
								
							</div>
							<div class="clear"> </div>
				  			<li class="active" id="one">标题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li id="two">评论内容&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li id="three">评论时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li id="four">浏览次数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li id="five">读者昵称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						</ul>
					
						<c:forEach var="m" items="${messages}">
						${m.id}楼
							${m.title}<br>
							${m.words}<br>
							${m.date}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${m.view}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${m.user.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
						<U></U>
						</c:forEach>	
</div>

<footer id="footer">
	<div class="container" style="margin-left:300px" >
	<br><br><br>
		<p>企业培训 | 合作事宜 | 版权投诉</p>
		<p>Website copyright © 红袖（中国）投资有限公司 湘ICP备05031779号</p>	
	</div>
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	$('#btn').on('click', function () {
		$('#myModal').modal('show');
	});
   $('#register').on('click', function () {
		$('#Modal').modal('show');
	});
	$('#cancel1').on('click',function() {
	   $('#myModal').modal('close');
	});
	$('#cancel2').on('click',function() {
	   $('#register').modal('close');
	})
	$('#one a').on('click', function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('#two a').on('click', function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('#three a').on('click', function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('#four a').on('click', function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
</script>
</body>
</html>