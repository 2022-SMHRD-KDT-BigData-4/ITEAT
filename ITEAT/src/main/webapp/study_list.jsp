<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.iteat.domain.StudyBoard"%>
<%@page import="com.iteat.domain.StudyBoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/studyCss.css?ver=1.3">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
    <!-- 전체 감싸기 -->
    
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            스터디 모집
        </div>
        <!-- 검색창부분 -->
        <div class ="search">
            <input type="text" placeholder="검색어를 입력해주세요">
            <button>검색</button>
        </div>
 		<!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
        
            <div class="board_list">
                <div class="top">
                    <div class="writer">작성자</div>
                    <div class="title">제목</div>
                    <div class="local">지역</div>
                    <div class="date">작성날짜</div>
                    <div class="recruit">모집여부</div>
                    <div class="hits">조회수</div>
                </div>
            	 <c:choose>
                	  <c:when test="${empty loginUser}">
                  	   <h1>로그인을 하세요.</h1>
                	  </c:when>
                	  <c:otherwise>
                	  <%
                	    StudyBoardDAO dao = new StudyBoardDAO();
                		List<StudyBoard> studyBoardList = dao.selectStudyBoard();
                		pageContext.setAttribute("studyBoardList",studyBoardList);
                		System.out.print("게시글 개수 : " + studyBoardList.size());
                	  %>
                    	 
                    	 	
                    	 		<c:forEach var="sbList" begin="0" end="${studyBoardList.size()}" items="${studyBoardList}" varStatus="status">
								
								<div>
                  				  <div class="writer">${sbList.id}</div>
                			  	  <div class="title"><a href="study_view.jsp?num=${sbList.num}">${sbList.title}</a></div>
              				      <div class="local">${sbList.region}</div>
               				      <div class="date">${sbList.regdate}</div>
                 				  <div class="recruit">${sbList.recruit}</div>
               				      <div class="hits">${sbList.hit}</div>
           					   </div>							
							</c:forEach>
                	  </c:otherwise>
               		</c:choose>   	  
       
                
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
                <c:forEach var="a" begin="1" end="${studyBoardList.size()/10}" varStatus="status">
                <a href="#" class="num">${status.count+1}</a>
                </c:forEach>
                <a href="#" class="bt">다음</a>

            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt_wrap">
                <a href="study_write.jsp" class="on">올리기</a>
                <!--<a href="#">수정</a>-->
            </div>
            
        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>