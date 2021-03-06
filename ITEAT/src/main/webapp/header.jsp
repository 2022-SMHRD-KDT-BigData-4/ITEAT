<%@page import="com.iteat.domain.Message"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.MessageDAO"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>IT-EAT</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <!-- Template Main CSS File -->
  <link href="assets/css/mainStyle2.css?kjkjk22" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src="https://kit.fontawesome.com/5a9fda220b.js" crossorigin="anonymous"></script>


   <link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" type="text/css">

</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="main.jsp">IT eat</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li class="dropdown"><a href="#"><span>?????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="gil_roadmap.jsp">?????????</a></li>
              <li><a href="load.jsp">????????????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>????????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="contest_list.jsp">?????????</a></li>
              <li><a href="study_list.jsp">?????????</a></li>
            </ul>
          </li>
          <li><a href="qna_list2.jsp">???????????????</a></li>
          
          <c:choose>
          	<c:when test="${empty loginUser}">
          		<li id="nosea"><a href="#">????????????</a></li>
          	</c:when>
          	<c:otherwise>
          		<li id="yessea"><a href="sea_index.jsp">????????????</a></li>
          	</c:otherwise>
          </c:choose>
          
          <c:choose>
             	  <c:when test="${empty loginUser}">
               	    <li class="login"><a href="login.jsp">?????????</a></li>
               	    <li class="Join"><a href="join.jsp">????????????</a></li>
                	  
                	</c:when>
             	  <c:otherwise>
                	  <li class="login" style="display: none;"><a href="LogoutCon">????????????</a></li>
                	  <li class="Join" style="display: none;"><a href="update.jsp">??????????????????</a></li>
                	  
                	  <li class="dropdown"><a href="#"><span>${loginUser.uif_nick}???</span> <i class="bi bi-chevron-down"></i></a>
            			<ul>
              			<li><a href="LogoutCon">????????????</a></li>
              			<li><a href="update.jsp">????????????</a></li>
            			</ul>
          			  </li>
                	  
                	  <li class="message" ><img id="msgImg" class="messageOpen" src="assets/img/send.png" onmouseover="this.src='assets/img/send_blue.png'" onmouseout="this.src='assets/img/send.png'" ><li>
                	  <c:if test="${loginUser.uif_type eq 'A'}">
                   	  <li><a href="userList.jsp">??????????????????</a><li>
                 	  </c:if>
              	  </c:otherwise>
          </c:choose>
         
          
          
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
        
        

      </nav><!-- .navbar -->
      


    </div>
    

  </header><!-- End Header -->
  
  
  
  	<!-- message popup -->
   <c:choose>
   <c:when test="${empty loginUser}">
   </c:when>
   <c:otherwise>
  	<%
      UserInfo uif= (UserInfo)session.getAttribute("loginUser");
      MessageDAO dao = new MessageDAO();
      List<Message> messageList = dao.selectReceiveMessage(uif.getUif_id());
      pageContext.setAttribute("messageList",messageList);
      System.out.print("????????? ?????? : " + messageList.size());
    %>
       
        	<c:choose>
        	
        	
        	<c:when test="${empty messageList }">
        		<div id="msgPop" style="display: none; height:160px;">
       			 <div class="msgPop-open">
        
        		<div>
        		<div id="popup-title">
        			??????
        		</div>
        	</div>
        	<div class="msgPop-list" style="    padding-left: 10px;
    padding-top: 10px;
    text-align: center;">
        		?????? ????????? ????????????.
        	</div>
        	</c:when>
        	
        	
        	<c:otherwise>
        	<div id="msgPop" style="display: none; height:400px;">
        <div class="msgPop-open">
        
        	<div>
        		<div id="popup-title">
        			??????
        		</div>
        	</div>
        	<c:forEach var="msg" begin="0" end="4" items="${messageList}">
        	
        	
        	<div class="msgPop-list">
        		<span class="msgPop-title">${msg.msg_title}</span>
        		<div>
        		<span class="msgPop-sender">${msg.msg_sender}</span>
        		<span class="msgPop-date">${msg.msg_date}</span>
        		</div>	
        	</div>
        	</c:forEach>
        	</c:otherwise>
        	</c:choose>
        </div>
        	<div class="msgPop-btn">
    	        <a href="message_receivelist.jsp"><button id="popBtn-receive">????????????</button></a>
    	        <a href="message_sendlist.jsp"><button id="popBtn-send">????????????</button></a>
    	        <a href="message_form.jsp"><button id="popBtn-write">????????????</button></a>
    	    </div>
        
   		</div>
   		
        </c:otherwise>
      </c:choose>
      
      

      
      
      
	<script>

	
	
	
	<!--message popup-->
	$(document).on('click','.messageOpen',function(){
			$('#msgPop').css('display','block')	;
			$('#msgImg').prop('class','messageClose');
	})
	
	$(document).on('click','.messageClose',function(){
			$('#msgPop').css('display','none')	;
			$('#msgImg').prop('class','messageOpen');
	})
	


	$(document).on('click','#nosea',function(){
		alert('???????????? ????????????')
	})
	
	
	
	
	

	</script>
  
  
  
  
  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>