<%@page import="com.iteat.domain.StudyBoard"%>
<%@page import="com.iteat.domain.StudyBoardDAO"%>
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
<%
	int num = Integer.parseInt(request.getParameter("num"));
    StudyBoardDAO dao = new StudyBoardDAO();
    StudyBoard studyBoard = dao.selectSB(num);
    pageContext.setAttribute("studyBoard",studyBoard);
    
%>
    <div class="board_wrap">
        <div class="board_title">
            스터디 모집
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ${studyBoard.title}
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>${studyBoard.nick}</dd>
                    </dl>
                    <dl>
                        <dt>지역</dt>
                        <dd>${studyBoard.region}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>${studyBoard.regdate}</dd>
                    </dl>
                    <dl>
                        <dt>모집여부</dt>
                        <dd>${studyBoard.recruit}</dd>
                    </dl>
                </div>
                <div class="tag">
                    ${studyBoard.stack}
                </div>
                <div class="cont">
                    ${studyBoard.content}
                </div>
            </div>
            <div class="comment">                    
                <p>의견남기기</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder="댓글쓰기"></textarea>
                <button id="ment" type="submit" name="button" cor>올리기</button>   
                </form>
            </div>
            
            <p>댓글</p>
            <div class="comment_view">
            	<div class="writer">작성자</div>
            	<div class="text">ddddddddddddddddddddddddddddddddddddd</div>
                <div class="date">2022-12-04</div>
                
                <div id="delete">
                    <a href="">삭제</a>
                </div>  
            </div>      
            
            <div class="bt_wrap">
                <a href="study_list.jsp" class="on">목록</a>
               
               <c:choose>
                <c:when test="${loginUser.uif_nick eq studyBoard.nick}">   
            	<a href="study_write_modify.jsp?num=${studyBoard.num}" class="onno">수정</a>
            	<a href="study_deleteCon?num=${studyBoard.num}" class="onno">삭제</a>
            	</c:when>
            	<c:otherwise>
            	</c:otherwise>
            	</c:choose>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>