<%@page import="com.iteat.domain.SBComment"%>
<%@page import="com.iteat.domain.SBCommentDAO"%>
<%@page import="com.iteat.domain.StudyBoard"%>
<%@page import="com.iteat.domain.StudyBoardDAO"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                 	   <c:choose>
                	  <c:when test="${empty loginUser}">
                  	   <h1>로그인을 하세요.</h1>
                	  </c:when>
                	  <c:otherwise>
                <form action="insertSBCommentCon?num=${studyBoard.num}" method="post">
                <textarea name="content" rows="3" cols="30" placeholder="댓글쓰기"></textarea>
                <button id="ment" type="submit" name="button">올리기</button>   
                </form>
                <p>댓글</p>
               		 <%
                	    SBCommentDAO sbcdao = new SBCommentDAO();
                		List<SBComment> SBCommentList = sbcdao.selectSBComm(num);
                		pageContext.setAttribute("SBCommentList",SBCommentList);
                		System.out.print("댓글 개수 : " + SBCommentList.size());
                	  %>
                    	 
                    	 	
                    	 		<c:forEach var="SBCList" begin="0" end="${fn:length(SBCommentList)}" items="${SBCommentList}">
								
               				      <div class="comment_view">
               						 <span class="writer">${SBCList.nick}${SBList.cmnum}</span> 
               						 <span class="text"> ${SBCList.content}</span>
          						     <span class="date">${SBCList.date}</span>
          						     <c:choose>
          						     <c:when test="${SBCList.nick eq loginUser.uif_nick}">   
          						       <div id="delete">
                   						 <a href="sbc_deleteCon?num=${SBCList.cmnum}">삭제</a>
               						   </div>  
               						  </c:when>
               						  </c:choose>
               					  </div>   
								</c:forEach>
                </c:otherwise>
               </c:choose>  
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