<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT EAT</title>
    <link rel="stylesheet" href="assets/css/message.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <!-- 쪽지제목 -->
        <div class="board_title">
            쪽지보내기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        
        <form id="frm" action="SendMessageCon" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <div id="receiver">
                        <input type="text" id="wr" name="msg_receiver" placeholder="받는사람" value="">
                    </div>
                    <div id="message_title">
                    <input type="text" id="wt" name="msg_title" placeholder="제목을 입력해주세요" value="">
                    </div>
                </div>
                
                
                    <textarea name="msg_content" id="wc" placeholder="내용 입력"></textarea>
                
                <span id="za">0/1000자</span>
            </div>
            <div class="bt_wrap">
                <a href="#" onclick="return chk_form()" class="on">보내기</a> 
                
            </div>
        </div>
        </form>
    </div>
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
    <script>
    	function chk_form(){
    		if(document.getElementById("wr").value==''){
    			alert("받는 사람을 입력해주십시오.");
    			return false;
    		}
    		if(document.getElementById("wt").value==''){
    			alert("제목을 입력해주십시오.");
    			return false;
    		}
    		if(document.getElementById("wc").value==''){
    			alert("내용을 입력해주십시오.");
    			return false;
    		}
    		document.getElementById('frm').submit();
    	}
    	
    	
    </script>
</body>
</html>