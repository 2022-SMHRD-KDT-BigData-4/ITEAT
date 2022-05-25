<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/qna_style.css?ver443551">
<title>Insert title here</title>
</head>
<body id="qna_body">
<%@ include file="header.jsp" %>
<div class="board_wrap">
        <div class="board_title">
            묻고답하기 / 코드
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    JAVA부분 모르겠습니다
                </div>
                <div class="info">
                    <dl>
                        <dt>개발언어</dt>
                        <dd>자바</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>미니</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-24 07:41:25.0</dd>
                    </dl>
                </div>
                <div class="cont">
                    자바 정말 너무 어려운거같아서<br>
                    질문남겨봅니다!!<br>
                    도와주세요.
                </div>
            </div>
            <div class="comment">                    
                <p>댓글</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder=""></textarea>
                <button id="ment" type="submit" name="button" cor>등록</button>    
                </form>
            </div>
            
            <p id="c_p">댓글</p>
            <div class="comment_view">
                <span class="writer">adminji</span> 
                <span class="text">자바는 이런식으로 해결해보시면됩니다!!</span>
                <span class="date">2022-05-25 09:13:57.0</span>
                <div id="delete">
                    <a href="">삭제</a>
                </div>  
                
            </div>   
            
            <div class="bt">
                <a href="qna_list.jsp"><button id="list">목록</button></a>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>