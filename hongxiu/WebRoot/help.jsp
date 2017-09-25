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
		<li><a href="http://topic.hongxiu.com/wap/"><span class="glyphicon glyphicon-question-sign"></span>手机看小说</a></li>
		<li><a href="http://pay.hongxiu.com/default.shtml"><span class="glyphicon glyphicon-question-sign"></span>充值</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span>帮助</a></li>
		</ul>
		</div>
	</div>
</nav>
<div class="modal fade" id="myModal" tabindex="-1">
	<form  action=""  method="post" >
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
						<div class="row">
							<div class="col-md-6">用户名</div>
							<div class="col-md-6"><input type="text"></input></div>
							
						</div>
						<div class="row" style="margin-top:10px">
							<div class="col-md-6">密码</div>
							<div class="col-md-6"><input type="password"></input></div>
						</div>
						<div class="row" style="margin-top:10px">
							<div class="col-md-6">确认密码</div>
							<div class="col-md-6"><input type="password"></input></div>
						</div>
						
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit">确认</button>
					<button class="btn btn-primary" id="cancel1" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="modal fade" id="Modal" tabindex="-1">
	<!-- 窗口声明 -->
	<form  action=""  method="post" >
		<div class="modal-dialog">
			<!-- 内容声明 -->
			
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal"><span>&times;</span></button>
					<h4 class="modal-title">注册</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">用户名</div>
							<div class="col-md-6"><input type="text"></input></div>
							
						</div>
						<div class="row" style="margin-top:10px">
							<div class="col-md-6">姓名</div>
							<div class="col-md-6"><input type="text"></input></div>
						</div>
						<div class="row" style="margin-top:10px">
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
						<div class="row" style="margin-top:10px">
							<div class="col-md-6">密码</div>
							<div class="col-md-6"><input type="password"></input></div>
						</div>
						<div class="row" style="margin-top:10px">
							<div class="col-md-6">确认密码</div>
							<div class="col-md-6"><input type="password"></input></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit">确认</button>
					<button class="btn btn-primary" data-dismiss="modal">取消</button>
				</div>
			
			</div>
		</div>
	</form>
</div>
<div width="700px" style="margin-top:50px;margin-left:300px">

    <img src="images/logo.png" alt="红袖小说网站">
		<div class="btn-group" style="margin-left:100px">
			<div class="btn-group">
			<button class="btn btn-default">书名</button>
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li ><button class="btn btn-default" >作者</button></li>
				</ul>
			</div>
			<div class="btn-group">
			<input type="text" class="form-control" style="width: 300px"></input>
			</div>
			<div class="btn-group">
			<button class="btn btn-default ">搜索</button>
			</div>
	    </div>
</div>




<ul class="nav nav-pills" style="margin-left:300px;background-color:red;width:800px">
<li class="active"><a href="#">首页</a></li>
<li style="margin-left:40px"><a href="#" >最新更新</a></li>
<li style="margin-left:40px"><a href="#">免费小说</a></li>
<li style="margin-left:40px"><a href="#">短篇文学</a></li>
<li style="margin-left:40px"><a href="#">言情小说</a></li>
<li style="margin-left:40px"><a href="#">VIP</a></li>
</ul>
</div>

<div id="about" class="center-block">
	<div class="container">
		<div class="row">
			<div class="col-md-3 hidden-sm hidden-xs" style="margin-left:195px;width: 200px">
				<div class="list-group"  >
					<a class="list-group-item" href="#1">1.基本常见问题</a>
					<a class="list-group-item" href="#2">2.长篇作者问题</a>
					<a class="list-group-item" href="#3">3.短篇作者常见问题</a>
					<a class="list-group-item" href="#3">4.读者互动常见问题</a>
				</div>
			</div>
			<div class="col-md-9 " style="width: 650px">
				<pre>
					<a id="1"></a>
					<h3>基本常见问题</h3>
					<a href="#collapseOne" data-toggle="collapse" data-parent="#accordion">阅读VIP小说收费标准</a>
					<div id="collapseOne" class="panel-collapse collapse" style="margin-left: -1000px">
					<div class="panel-body" >
						VIP作品的阅读价格根据会员等级划分：
						普通VIP会员阅读收费章节的消费价格
						为0.04元/千字（即4点红袖币/千字）；
						初级VIP会员阅读收费章节的消费价格
						为0.03元/千字（即3点红袖币/千字）；
						高级VIP会员和至尊VIP会员阅读收费
						章节的消费价格为0.02元/千字（即2点红袖币/千字）；
						不足1点红袖币的零头忽略不计；
						已经订阅过的章节再次阅读时不需要再次付费。		 
						一品红文的VIP章节定价如下：
						普通VIP会员0.05元/千字（即5点红袖币/千字）；
						初级VIP会员0.04元/千字（即4点红袖币/千字）；
						高级VIP会员0.03元/千字（即3点红袖币/千字）；
						至尊VIP会员0.03元/千字（即3点红袖币/千字）
					</div>
				    </div>
					<a href="#information" data-toggle="collapse" data-parent="#information">如何修改个人信息？</a>
					<div id="information" class="panel-collapse collapse">
					<div class="panel-body">					   
						在此页面登录http://login.sns.hongxiu.com/，进入“个人中心”
						如下图所示点击“修改信息”即可修改您的个人信息。
					</div>
				    </div>
					<a id="2"></a>
					<h3>长篇作者问题</h3>
					 <a href="#author1" data-toggle="collapse" data-parent="#author1">为什么更新了的章节看不到？</a>
					<div id="author1" class="panel-collapse collapse">
					<div class="panel-body">
					   作品发布的章节需要进行技术性审核以确认
					   发布的作品内容是否含有涉黄、反动等违法
					   内容，审核通过才会显示，请您耐心等待。
					   已经审核通过又作了修改的章节需要等待重
					   新审核通过后才会显示。章节审核通过后，
					   需要一定时间生成静态页供读者阅读，因此
					   请您在更新作品的20分钟后检查静态页生成
					   情况，如果仍未显示，请联系客服。
					</div>
				    </div>
					<a href="#author2" data-toggle="collapse" data-parent="#author2">全本一口价签约制度与规则</a>
					<div id="author1" class="panel-collapse collapse">
					<div class="panel-body">
						已经完结的上架作品可以和编辑申请加
						入全本一口价，审核通过签署全本协议即可。
						全本一口价、全本免费签约联系方式可发邮件
						至 vips@hongxiu.com
					</div>
				    </div>
					<a id="3"></a>
					<h3>短篇作者常见问题</h3>
					 <a href="#shortauthor1" data-toggle="collapse" data-parent="#shortauthor1">如何管理红袖的日记本？</a>
					<div id="shortauthor1" class="panel-collapse collapse">
					<div class="panel-body">
					   从红袖首页登录后，点击进入个人管理中心，从左边的功能导航
					   栏选择“写日记”就可以录入自己的日记了。在日记管理中可以进
					   行日记得修改和删除操作，在 “日记本信息”选项可以设置日记本
					   的名称和日记本介绍。在“主题日记”选项中还可以进行日记的主
					   题设定，为你的日记进行分类管理。
					</div>
				    </div>
					<a href="#shortauthor2" data-toggle="collapse" data-parent="#shortauthor2">涉及到版权问题该如何处理？</a>
					<div id="shortauthor2" class="panel-collapse collapse">
					<div class="panel-body">
						如果您遇到文章被其他媒体私自转载，盗取，请直接致信侵权
						方与其联系。您可以要求对方撤除非法转载的稿件，或按照您
						的要求署上作者名及稿件来源。如果转载方将您的作品用于商
						业用途，您可以要求对方给付稿费，或依照相关著作权法的规
						定将侵权方提起诉讼。如果发现文章被人抄袭或有抄袭嫌疑，
						请在红袖论坛“打假论坛”发贴举报，版主会作出相应处理。如
						有确凿证据证明对方为抄袭，并且抄袭者未能在72小时之内做
						出回应，则视为默认，并在打假论坛做出通报批评。视情况轻
						重，分别对抄袭者予以以下处罚：
					　　1 ）删除涉嫌帖，既往不咎；
					2 ）在曝光台予以曝光，暂时保留作者 ID 和文集；
					3 ）封帐号，删除全文集。

					</div>
				    </div>
					<a id="4"></a>
					<h3>读者互动常见问题</h3>
					<a href="#read1" data-toggle="collapse" data-parent="#read1">阅读VIP小说收费标准</a>
					<div id="read1" class="panel-collapse collapse">
					<div class="panel-body">
						VIP作品的阅读价格根据会员等级划分：
						普通VIP会员阅读收费章节的消费价格
						为0.04元/千字（即4点红袖币/千字）；
						初级VIP会员阅读收费章节的消费价格
						为0.03元/千字（即3点红袖币/千字）；
						高级VIP会员和至尊VIP会员阅读收费
						章节的消费价格为0.02元/千字（即2点红袖币/千字）；
						不足1点红袖币的零头忽略不计；
						已经订阅过的章节再次阅读时不需要再次付费。		 
						一品红文的VIP章节定价如下：
						普通VIP会员0.05元/千字（即5点红袖币/千字）；
						初级VIP会员0.04元/千字（即4点红袖币/千字）；
						高级VIP会员0.03元/千字（即3点红袖币/千字）；
						至尊VIP会员0.03元/千字（即3点红袖币/千字）
					</div>
				    </div>
					<a href="#read2" data-toggle="collapse" data-parent="#read2">如何修改个人信息？</a>
					<div id="read2" class="panel-collapse collapse">
					<div class="panel-body">					   
						在此页面登录http://login.sns.hongxiu.com/，进入“个人中心”
						如下图所示点击“修改信息”即可修改您的个人信息。
					</div>
				    </div>
			</div>
		</div>
	</div>
</div>

<footer id="footer">
	<div class="container" style="margin-left:300px" >
		<p>企业培训 | 合作事宜 | 版权投诉</p>	
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