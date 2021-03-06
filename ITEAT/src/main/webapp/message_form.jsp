<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT EAT</title>
    <link rel="stylesheet" href="assets/css/message.css?sdfsdf">
</head>
<body id="msg_body">
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
                <a href="#" onclick="return chk_form()" class="on"><button> 보내기</button></a> 
                
            </div>
        </div>
        </form>
    </div>

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
    
    <%@ include file="footer.jsp" %>
</body>
</html>