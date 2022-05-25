<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/content2Css.css?ver06.26d1a41s344">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <div class="board_title">
            공모전모집
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    날씨빅데이터 공모전 팀원 모집합니다
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>정민</dd>
                    </dl>
                    <dl>
                        <dt>지역</dt>
                        <dd>창원</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-24 08:20:25.0</dd>
                    </dl>
                    <dl>
                        <dt>모집여부</dt>
                        <dd>모집중</dd>
                    </dl>
                    <dl>
                        <dt>포지션</dt>
                        <dd>백엔드</dd>
                    </dl>
                </div>
              
                <div class="cont">
                    <img src="assets/img/날씨.jpg" width="400px" height="400px">
                    <br>
                    <br>
                    접수기간 : 2022.04.25 ~ 2022.05.30<br>
                    분야 : 과학/공학<br>
                    주최/주관: 기상청<br>
                    응모대상 : 제한없음<br>
                    총상금 : 1000만원<br>
                    저랑 함께 팀으로 나가실분 구해봅니다
                    
                </div>
            </div>
            <div class="comment">                    
                <p>의견남기기</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder="댓글쓰기"></textarea>
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
            
            <div class="bt_wrap">
                <a href="contest_list.jsp"  id="v_l" class="on">목록</a>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>