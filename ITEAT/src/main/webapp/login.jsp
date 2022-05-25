<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/loginStyle.css?ber122" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<form action="LoginCon">

        <div id="login">로그인</div>
      
        <div class="info_login">
      
          <div >
            <p class="notnull">아이디</p>
            <div class="boxSize">
              <input type="text" id="uif_id" name="uif_id" value="" onfocus="inputColorGreen()" onblur="inputColorReturn()" required>
              
            </div>
          </div>
      
          <div>
            <p class="notnull">비밀번호</p>
            <input type="password" id="uif_pw" name="uif_pw" onfocus="inputColorGreen2()" onblur="inputColorReturn2()" value="" required>
          </div>
          <br>

        <div id="loginDiv">
          <button id="loginBtn" type="submit" name="button" >로그인</button>
        </div>
        
        <script>
        	
        	function inputColorGreen(){
        		$('#uif_id').css({'border-color':'#13547A '})
        	}
        	function inputColorReturn(){
        		$('#uif_id').css({'border':'1px solid #ddd'})
        	}
        	function inputColorGreen2(){
        		$('#uif_pw').css({'border-color':'#13547A '})
        	}
        	function inputColorReturn2(){
        		$('#uif_pw').css({'border':'1px solid #ddd'})
        	}
        </script>
          
	</form>
</body>
</html>