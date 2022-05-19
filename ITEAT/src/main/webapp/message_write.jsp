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
        <!-- 쪽지제목 -->
        <div class="board_title">
            쪽지보내기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <div id="receiver">
                        <input type="text" placeholder="받는사람" value="아이디">
                    </div>
                    <div id="message_title">
                    <input type="text" placeholder="제목" value=" 제목입력">
                    </div>
                </div>
                
                
                    <textarea placeholder="내용 입력"> </textarea>
                
                <span id="za">0/1000자</span>
            </div>
            <div class="bt_wrap">
                <a href="message_list.jsp" class="on">보내기</a> 
                
            </div>
        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    
</body>
</html>