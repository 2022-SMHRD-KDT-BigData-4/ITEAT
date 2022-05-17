<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/css/studyCss.css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <div class="board_title">
            스터디 모집
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    자바공부같이하실분?
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>미니</dd>
                    </dl>
                    <dl>
                        <dt>지역</dt>
                        <dd>광주</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-14</dd>
                    </dl>
                    <dl>
                        <dt>모집여부</dt>
                        <dd>모집중</dd>
                    </dl>
                </div>
                <div class="tag">
                    태그들어갈자리
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
                <textarea name="comment" rows="3" cols="30" placeholder="댓글쓰기"></textarea>
                <button id="ment" type="submit" name="button" cor>올리기</button>    
                </form>
            </div>
            
            <div class="comment_view">
                <span class="writer"> 작성자</span> <span class="text"> 내용</span>
            </div>      
            <div class="comment_view">
                <span class="writer"> 작성자</span> <span class="text"> 내용</span>
            </div> 
            <div class="comment_view">
                <span class="writer"> 작성자</span> <span class="text"> 내용</span>
            </div> 
            
            <div class="bt_wrap">
                <a href="study_list.jsp" class="on">목록</a>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>