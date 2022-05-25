<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/content2Css.css?ver4545">
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
                    제주 공공데이터 공모전 팀원 구해요
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>민지</dd>
                    </dl>
                    <dl>
                        <dt>지역</dt>
                        <dd>목포</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-25 20:34:45.0</dd>
                    </dl>
                    <dl>
                        <dt>모집여부</dt>
                        <dd>모집중</dd>
                    </dl>
                    <dl>
                        <dt>포지션</dt>
                        <dd>프론트</dd>
                    </dl>
                </div>
                
                <div class="cont">
                    <img src="assets/img/제주.jpg" width="400px" height="400px">
                    <br>
                    <br>
                    
                    접수기간 : 2022.05.24 ~ 2022.06.24<br>
                    분야 : 취업/창업<br>
                    주최/주관: 제주특별자치도<br>
                    응모대상 : 제한없음<br>
                    총상금 : 1000만원<br>
                    제주 공공데이터 활용 장업 공모전 나가실분~!
                    
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
                <span class="text">제주 공공데이터 활용 팀원하고싶습니다!!</span>
                <span class="date">2022-05-25 23:24:13.0</span>
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