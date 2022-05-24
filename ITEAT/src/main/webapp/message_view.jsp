<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>message</title>
    <link rel="stylesheet" href="assets/css/message.css">
</head>
<body id="msg_body">
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <div class="board_title">
            쪽지
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    쪽지 제목
                </div>
                <div class="info">
                    <dl>
                        <dt>보낸사람</dt>
                        <dd>미니</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-14</dd>
                    </dl>
                </div>


                <div id="mail_view_cont">
                    내용들어갈거임 ㅋㅋ 
                </div>
            </div>


            <div class="bt">
                <a href="message_sendlist.jsp" class="on">보낸쪽지함으로</a> 
                
            </div>
        </div>
<%@ include file="footer.jsp" %>
</body>
</html>