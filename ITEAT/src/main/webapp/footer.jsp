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
  <link href="assets/css/chatbot.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/mainStyle3.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src="https://kit.fontawesome.com/5a9fda220b.js" crossorigin="anonymous"></script>
</head>
<body>
<!--챗봇-->
   <div class="chatbot">
    <img src="assets/img/soragodong.png">
</div>
<div id="chatbotPopup" style="display: none;">
    <div class="chatbotPopup_hidden">
      <div id="headline">자격검정일정</div>
    <div id="first">
        
        
        <span><button id="popupClose" type="button" class="btn-close" aria-label="Close"></button></span>
    </div>
    <br>
    <div id="messages" style="height: 410px; overflow: auto;" >
        <div class="chatbotHead">
            <div class="left_container">
              <br><br>
              <div id="imgso">
                <img src="assets/img/soragodong1.png">
              </div>
              <div class="header_title">
                원하는 자격증 유형을 선택해주세요!</div>
            </div>
            <span class="tools_icon_container">
                <i class="tools_icon icon_close"></i>
            </span>
        </div>
        
        
        <div style="height: 200px" id="one">
        </div>

      </div>
        <div id="chatDiv">
          <div id="chatmenu">
            <button id="gisa" type="button" class="btn btn-outline-dark btn-sm">국가기술자격</button>
            <button id="mingan" type="button" class="btn btn-outline-dark btn-sm">민간자격증</button>
          </div>


          <div id="chatmenu1" style="display: none;">

            <button id="jungbo" type="button"  class="btn btn-outline-dark btn-sm">정보처리기사</button></a>
            <button id="boan" type="button" class="btn btn-outline-dark btn-sm">정보보안기사</button>
            <button id="big" type="button" class="btn btn-outline-dark btn-sm">빅데이터분석기사</button>
            <button id="tongsin" type="button" class="btn btn-outline-dark btn-sm">정보통신기사</button>

          </div>
          <div id="chatmenu2" style="display: none;">
            <button id="sqldp" type="button" class="btn btn-outline-dark btn-sm">SQLP/SQLD</button>
            <button id="dapsp" type="button" class="btn btn-outline-dark btn-sm">DAP/DASP</button>
            <button id="adsp" type="button" class="btn btn-outline-dark btn-sm">ADSP</button>
          </div>

          <div id="chatmenu3" style="display: none;">
            <a target="_blank"><button id="goreceive" type="button" class="btn btn-outline-dark btn-sm">접수하기</button></a>
            <button id="gomain" type="button" class="btn btn-outline-dark btn-sm">메인으로</button>
          </div>

          <!-- <div id="chatmenu4" style="display: none;">
            <button id="gisa" type="button" class="btn btn-outline-dark btn-sm">국가기술자격</button>
            <button id="mingan" type="button" class="btn btn-outline-dark btn-sm">민간자격증</button>
          </div> -->
          </div>
        </div>
      
    </div>
    
</div>
<!--챗봇 끝-->

  <!-- ======= Footer ======= -->
  <footer id="footer">


    <div class="container footer-bottom clearfix">
      <div class="copyright">
      <strong><span>이민지 이정민 심우현 하종현</span></strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        IT EAT
      </div>

    
    
    </div>
    
    
  </footer><!-- End Footer -->
<!-- chatbot -->
    


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
    <!--챗봇 js-->
    <script>
      $('.chatbot').click(function(){
          $('#chatbotPopup').css('display','block')
          $('.chatbotPopup_hidden').removeClass('chatbotPopup_hidden')
          $('#chatbotPopup>div').addClass('chatbotPopup_open')
      })
  
      $('#popupClose').click(function(){
          
          $('.chatbotPopup_open').removeClass('chatbotPopup_open')
          $('#chatbotPopup>div').addClass('chatbotPopup_hidden')
  
          
          $('#chatbotPopup').css('display','none')
      })

      $('#gisa').click(function(){

        $('#one').append('<div id="mygisa">기사자격증</div>')
          $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
            $('#one').append('<div id="header2">찾고자 하는 자격증을 선택해주세요!</div>')
              $('#chatmenu1').css('display','block')
              $('#goreceive').parent().prop('href','https://www.q-net.or.kr/man001.do?id=man00103&gSite=Q&gId=&redir=https%3A%2F%2Fwww.q-net.or.kr%2Frcv002.do%3Fid%3Drcv00201%26gSite%3DQ%26gId%3D')


      })

      $('#mingan').click(function(){

        $('#one').append('<div id="mymingan">민간자격증</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="header2">찾고자 하는 자격증을 선택해주세요!</div>')
          $('#chatmenu2').css('display','block')
          $('#goreceive').parent().prop('href','https://www.dataq.or.kr/www/accounts/login.do')


      })

      $('#jungbo').click(function(){
        $('#chatmenu1').css('display','none')
        $('#one').append('<div id="jungbotext">정보처리기사</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
          $('#one').append('<div name="test" id="myjungbo">필기시험<br>-2022.07.02<br><br>실기시험<br>-2022.10.16</div>')
            $('#chatmenu3').css('display','block')
      })
      

      $('#boan').click(function(){
        $('#chatmenu1').css('display','none')
        $('#one').append('<div id="boantext">정보보안기사</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="myboan">필기시험<br>제2회<br>-2022.06.25<br>제3회<br>-2022.10.08<br><br>실기시험<br>제2회<br>-2022.08.13<br>제3회<br>-2022.11.26</div>')
          
        $('#chatmenu3').css('display','block')

      })

      $('#big').click(function(){
        $('#chatmenu1').css('display','none')
        $('#one').append('<div id="bigtext">빅데이터분석기사</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="mybig">필기시험<br>-2022.10.01<br><br>실기시험<br>-2022.12.03</div>')
          $('#chatmenu3').css('display','block')
      })

      $('#tongsin').click(function(){
        $('#chatmenu1').css('display','none')
        $('#one').append('<div id="tongtext">정보통신기사</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="mytong">필기시험<br>제2회<br>-2022.06.25<br>제4회<br>-2022.10.08<br><br>실기시험<br>제2회<br>-2022.08.13<br>제4회<br>-2022.11.26</div>')
          $('#chatmenu3').css('display','block')
      })

      $('#sqldp').click(function(){
        $('#chatmenu2').css('display','none')
        $('#one').append('<div id="sqldptext">SQLP/SQLD</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
          $('#one').append('<div id="mysqldp">제46회<br>-2022.09.04<br><br>제47회<br>-2022.11.05</div>')
            $('#chatmenu3').css('display','block')
      })

      $('#dapsp').click(function(){
        $('#chatmenu2').css('display','none')
        $('#one').append('<div id="dapsptext">DAP/DASP</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
          $('#one').append('<div id="mydapsp">DAP<br>제57회<br>-2022.09.18<br>제58회<br>-2022.11.19<br><br>DASP<br>제52회<br>-2022.09.18<br>제53회<br>-2022.11.19</div>')
            $('#chatmenu3').css('display','block')
      })

      $('#adsp').click(function(){
        $('#chatmenu2').css('display','none')
        $('#one').append('<div id="adsptext">ADSP</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="myadsp">제34회<br>-2022.08.28<br><br>제35회<br>-2022.10.29</div>')
            $('#chatmenu3').css('display','block')
      })

      $('#gomain').click(function(){
        $('#chatmenu3').css('display','none')
        $('#one').append('<div id="maintext">메인으로</div>')
        $('#one').append('<div id="imgso2"><img src="assets/img/soragodong1.png"></div>')
        $('#one').append('<div id="mymain">원하는 자격증 유형을 선택해주세요!</div>')
          $('#chatmenu4').css('display','block')
      })

$("#chatDiv button").on("click",function(){

  chatWindow = document.getElementById('messages'); 
var xH = chatWindow.scrollHeight; 
chatWindow.scrollTo(0, xH);


})



  </script>
  <!--챗봇 js 끝-->
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