<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/messageCss.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
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
                <a href="message_list.jsp" class="on">보내기</a> 
                
            </div>
        </div>
        </div>
    <%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    
</body>
</html>