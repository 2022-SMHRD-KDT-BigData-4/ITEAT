<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/qna_style.css?ver441">
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
                    모르겠어요
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
                        <dd>2022-05-14</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>33</dd>
                    </dl>
                </div>
                <div class="cont">
                    글 내용이 들어갑니다<br>
                    근데 이건 작성자가 쓴글을<br>
                    연결해야할텐데<br>
                    일단 보여지는 부분만 <br>
                    했음 ㅋㅋ
                </div>
            </div>
            <div class="comment">                    
                <p>의견남기기</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder=""></textarea>
                <button id="ment" type="submit" name="button" cor>올리기</button>    
                </form>
            </div>
            
            <p id="c_p">댓글</p>
            <div class="comment_view">
                <span class="writer"> 작성자</span> 
                <span class="text"> 내용 내가 더 많이 사랑한 죄 널 너무나 많이 그리워 한 죄 눈물로 앓고있다고 ...이렇게</span>
                <span class="date">2022-05-23</span>
                <div id="delete">
                    <a href="">삭제</a>
                </div>  
                
            </div>   
            
            <div class="bt">
                <a href="qna_list.jsp"><button id="list">목록으로</button></a>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>