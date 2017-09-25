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
					<h4 class="modal-title">登陆
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
					<h4 class="modal-title">注册
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
		<div class="btn-group" style="margin-left:100px">
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

<div id="case">
	<div class="container">
		<div class="row" style="width: 820px;margin-left:180px">
			<c:forEach items="${result}" var="r">	
			<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
				<div class="thumbnail">
				    <a href="xiangxi.action?novel.id=${r.id}">
						<img src="${r.image}" alt="">
						<div class="caption">
							小说名:${r.novelname}<br>
							点击量: ${r.click}<br>
							类型:${r.type}<br>
							vip:${r.vip.vip}
							
						</div>
				    </a>
				</div>
			</div>
			 </c:forEach>
		</div>
	</div>
</div>
<ul class="pagination pagination-lg" style="margin-left:500px">
	<li><a href="#">&laquo;</a></li>
	<li class="active"><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li class="disabled"><a href="#">5</a></li>
	<li><a href="#">&raquo;</a></li>
</ul>
<footer id="footer">
	<div class="container" style="margin-left:500px" >
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
	});
	$('#username').on('keyup',function() {
        var username = $('#username').val();
        if(username.length < 2 || username.length > 10) {
        	$('#erroinfo').text("用户名需要在6到15个字符");
        	$('#erro').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
        	$('#username').focus();
        } 
        else {
        	$('#erroinfo').hide();
        	$('#erro').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
        }
	});
	$('#username2').on('blur',function() {
        var username = $('#username2').val();
        if(username.length < 2 || username.length > 10) {
        	$('#erroinfo3').text("用户名需要在6到15个字符");
        	$('#usernameerro').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
        	$('#username2').focus();
        } 
        else {
        	$('#erroinfo3').hide();
        	$('#usernameerro').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
        }
	});
	$('#name').on('blur',function() {
        var name = $('#name').val();
        if(name.length < 2 || name.length > 10) {
        	$('#nameerroinfo').text("用户名需要在6到15个字符");
        	$('#nameerro').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
        	$('#name').focus();
        } 
        else {
        	$('#nameerroinfo').hide();
        	$('#nameerro').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
        }
	});
	$('#password').on('blur',function() {
        var password = $('#password').val();
        if(password.length < 6 || password.length > 15) {
        	$('#erroinfo2').text("密码需要在6到15个字符");
        	$('#erro2').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
        	$('password').focus();
        } 
        else {
        	$('#erroinfo2').hide();
        $('#erro2').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
        }  
	});
	$('#password1').on('blur',function() {
	        var password = $('#password1').val();
	        if(password.length < 6 || password.length > 15) {
	        	$('#pass1erro').text("密码需要在6到15个字符");
	        	$('#erro2').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
	        	$('#password').focus();
	        } 
	        else {
	        	$('#erroinfo2').hide();
	        $('#erro2').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
	        }  
	});
   $('#password2').on('blur',function() {
	        var password = $('#password2').val();
	        if(password.length < 6 || password.length > 15) {
	        	$('#pass1').text("密码需要在6到15个字符");
	        	$('#pass1erro').addClass("glyphicon").addClass("glyphicon-remove").addClass("form-control-feedback");
	        	$('#password2').focus();
	        } 
	        else {
	        	$('#pass1').hide();
	        	$('#pass1erro').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback");
	        }  
	});
   $('#password3').on('blur',function() {
	        var password3 = $('#password3').val();
	        if(password2 != password3) {
	        		$('#pass2').text("您两次的密码不一样");
	        		$('#pass2erro').removeClass("glyphicon").removeClass("glyphicon-remove").removeClass("form-control-feedback")
	          }
	       
	});
	
</script>
</body>
</html>