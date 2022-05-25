<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/content2Css.css?ver06.26da4441s3">
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
                    데이터 활용 논문 공모전 
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>우현</dd>
                    </dl>
                    <dl>
                        <dt>지역</dt>
                        <dd>광주</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-22 23:30:15.0</dd>
                    </dl>
                    <dl>
                        <dt>모집여부</dt>
                        <dd>모집마감</dd>
                    </dl>
                    <dl>
                        <dt>포지션</dt>
                        <dd>프론트</dd>
                    </dl>
                </div>
               
                <div class="cont">
                    <img src="assets/img/데이터.jpg" width="400px" height="400px">
                    <br>
                    <br>
                    
                    접수기간 : 2022.05.10 ~ 2022.07.31<br>
                    분야 : 문학/공학<br>
                    주최/주관: 한국행정연구원,한국행정학회<br>
                    응모대상 : 대학생,대학원생<br>
                    총상금 : 450만원<br>
                    같이 데이터 활용 논문 공모전 나갑시다!
                    
                </div>
            </div>
            <div class="comment">                    
                <p>댓글</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder="댓글쓰기"></textarea>
                <button id="ment" type="submit" name="button" cor>등록</button>    
                </form>
            </div>
            
            <p id="c_p">댓글</p>
            <div class="comment_view">
                <span class="writer">adminji</span> 
                <span class="text">참여하고싶었는데 모집마감이라 아쉽네요</span>
                <span class="date">2022-05-23 13:45:32.0</span>
                <div id="delete">
                    <a href="">삭제</a>
                </div>  
            
            
        </div>
        <div class="bt_wrap">
                <a href="contest_list.jsp"  id="v_l" class="on">목록</a>
            </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>