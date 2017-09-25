<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Home</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!-- Global CSS for the page and tiles -->
  		<link rel="stylesheet" href="css/main.css">
  		<!-- //Global CSS for the page and tiles -->
		<!---start-click-drop-down-menu----->
		<script src="js/jquery.min.js"></script>
        <!----start-dropdown--->
         <script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script>
        <!----//End-dropdown--->
		<!---//End-click-drop-down-menu----->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index1.jsp"><img src="images/logo.png" title="pinbal" /></a>
				</div>
				<div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div>
				 <div class="box" id="box">
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="index1.jsp"><span>首页</span></a></li>
										<li><a href="#"><span>言情小说</span></a></li>
										<li><a href="#"><span>最新更新</span></a></li>
										<li><a href="#"><span>会员充值</span></a></li>
										<li><a href="#"><span>免费小说</span></a></li>
										<li><a href="contact.jsp"><span>排行榜</span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<a class="boxclose" id="boxclose"> <span> </span></a>
							</div>                                  
						</div> 	
					</div> 
				</div>       	  
				<div class="top-searchbar">
					<form>
						<input type="text" /><input type="submit" value="" />
					</form>
				</div>
				<div class="userinfo">
					<div class="user">
						<ul>
							<li><a href="#"><img src="images/user-pic.png" title="user-name" /><span>Ipsum</span></a></li>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >红袖小说网站</a></div>
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			 <div id="main" role="main">
			      <ul id="tiles">
			        <!-- These are our grid blocks -->
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/z_3.png" width="100" height="350">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">妃上枝头戏凤凰</a></h3>
				        		<!--<span><a href="contact.jsp"><label> </label>妃上枝头戏凤凰</a></span> -->
				        		<p>她是泼皮太子妃，没有妻妾，没有争宠，只有一个不喜欢她的夫君，一面对她虚情假意，一面对她柔情似水，真真假假间，...</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/y_1.png" width="100" height="350">
						<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">暗恋成婚，总裁套路玩的深</a></h3>
				        		<!--<span><a href="#"><label> </label>Movies</a></span>-->
				        		<p>一夜醒来，她居然把总裁给睡了……！</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
					</li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/y_2.png" width="100" height="370">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">皇上，请您雨露均沾</a></h3>
				        		<!--<span><a href="#"><label> </label>Movies</a></span>-->
				        		<p>她承欢无力，只能求饶：皇上，你要雨露均沾啊~</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/y_3.png" width="200" height="333">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">鬼帝宠妻：逆天大小姐</a></h3>
				        		<!--<span><a href="#"><label> </label>Movies</a></span>-->
				        		<p>面对各方来路的男女情敌，某人得意一笑：“不好意思，来晚了！只此一家，已落我家。”</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <!----//--->
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/m_1.png" width="100" height="333">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>【宠文，一对一，保证完本请放心入坑~】
她，万众瞩目的顶级食神，一朝穿越成了野山沟里的小农女。
　　当昔日被家族抛弃的少女回到京城时，一道美食让她重新展露头角。
　　以为她只会做菜？错！手握空间商人，天地奇宝任她挑选，遥控汽车都能买得到。
　　百毒不侵、医毒无双…… 　　 
　　可一想到四年前睁开眼时身边睡着的三个男人……有些头疼。
　　某宝：“娘，大爷爷说我不是石头缝里蹦出来的，谁才是宝宝的爹？”
　　她……也很想知道。
　　精彩片段：月黑风高夜，某男抱着某女坐在屋檐上看星星，将头担在她的肩膀上，呼吸着她身上诱人的香气，轻声道：“你当初为什么选择我？”
　　闻言，许君落转头看向他，眼中布满柔情，“毕竟咱们知根知底……”
　　某男：……</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/y_44.png" width="100" height="350">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">鬼夫磨人：侯爷宠妻成瘾</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>庄浅只以为自己再也见不到那只鬼了，可为什么突然苏醒的小舅舅和那只可恶的鬼长得一样？！</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/y_5.png" width="200" height="299">
						<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="single-page.jsp">隐婚99天，总裁好眼光！</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>她叫孟清歌，当上霍太太，只有他知她知。
　　做霍先生的妻子：第一，不要干涉他的私生活；第二，不要有妄念；第三，照顾好“他”的女儿。尽管条约不平等，她还是义无反顾的嫁了。
　　都是有故事的人，她以为，这段婚姻就算不是轰轰烈烈，但也能天荒地老，直到他的最爱出现。</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
					</li>
					  <li onClick="location.href='single-page.jsp';">
			        	<img src="images/img1.jpg" width="200" height="200">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <!----//--->
			         <li onClick="location.href='single-page.jsp';">
			        	<img src="images/img1.jpg" width="200" height="200">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/img2.jpg" width="200" height="299">
						<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
					</li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/img3.jpg" width="200" height="214">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <li onClick="location.href='single-page.jsp';">
			        	<img src="images/img4.jpg" width="200" height="333">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			        <!-- End of grid blocks -->
			      </ul>
			    </div>
			</div>
		</div>
		<!---//End-content---->
		<!----wookmark-scripts---->
		  <script src="js/jquery.imagesloaded.js"></script>
		  <script src="js/jquery.wookmark.js"></script>
		  <script type="text/javascript">
		    (function ($){
		      var $tiles = $('#tiles'),
		          $handler = $('li', $tiles),
		          $main = $('#main'),
		          $window = $(window),
		          $document = $(document),
		          options = {
		            autoResize: true, // This will auto-update the layout when the browser window is resized.
		            container: $main, // Optional, used for some extra CSS styling
		            offset: 20, // Optional, the distance between grid items
		            itemWidth:280 // Optional, the width of a grid item
		          };
		      /**
		       * Reinitializes the wookmark handler after all images have loaded
		       */
		      function applyLayout() {
		        $tiles.imagesLoaded(function() {
		          // Destroy the old handler
		          if ($handler.wookmarkInstance) {
		            $handler.wookmarkInstance.clear();
		          }
		
		          // Create a new layout handler.
		          $handler = $('li', $tiles);
		          $handler.wookmark(options);
		        });
		      }
		      /**
		       * When scrolled all the way to the bottom, add more tiles
		       */
		      function onScroll() {
		        // Check if we're within 100 pixels of the bottom edge of the broser window.
		        var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
		            closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);
		
		        if (closeToBottom) {
		          // Get the first then items from the grid, clone them, and add them to the bottom of the grid
		          var $items = $('li', $tiles),
		              $firstTen = $items.slice(0, 10);
		          $tiles.append($firstTen.clone());
		
		          applyLayout();
		        }
		      };
		
		      // Call the layout function for the first time
		      applyLayout();
		
		      // Capture scroll event.
		      $window.bind('scroll.wookmark', onScroll);
		    })(jQuery);
		  </script>
		<!----//wookmark-scripts---->
		<!----start-footer--->
		<div class="footer">
			<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
		<!----//End-footer--->
		<!---//End-wrap---->
	</body>
</html>

