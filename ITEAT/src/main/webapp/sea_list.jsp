<%@page import="com.iteat.domain.SeaCode"%>
<%@page import="com.iteat.domain.SeaCodeDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT EAT</title>
    <link rel="stylesheet" href="assets/css/sea_list.css?vsds">
</head>
<body id="sealist">
<%@ include file="header.jsp" %>

    <!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            해저 기록            
        </div>
        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            <!-- 리스트영역 -->
            <div class="board_list">
                <div class="top">
                    
                    <div class="seq">번호</div>
                    <div class="title">제목</div>
                    <div class="develope">언어</div>
                    <div class="date">작성날짜</div>
                </div>
                

				<c:choose>
					<c:when test ="${empty loginUser }">
					<h1>로그인을 하세요</h1>
					</c:when>
					
					<c:otherwise>
					<%
						UserInfo uif = (UserInfo)session.getAttribute("loginUser");
						SeaCodeDAO sc_dao = new SeaCodeDAO();
						List<SeaCode> seaCodeList = sc_dao.selectSeaCode(uif.getUif_nick());
						pageContext.setAttribute("seaCodeList", seaCodeList);
						System.out.print("코드개수 : " + seaCodeList.size());					
					%>
						<c:forEach var="scList" begin="0" end="${seaCodeList.size()}" items="${seaCodeList}" varStatus="status">
		                <div>
		                    <div class="seq">${seaCodeList.size()-status.count+1}</div>
		                    <div class="title"><a href="sea_view.jsp?num=${scList.code_seq}">${scList.code_title }</a></div>
		                    <div class="develope">${scList.code_lang}</div>
		                    <div class="date">${scList.code_date}</div>
		                </div>
						</c:forEach>
					</c:otherwise>
                </c:choose>
                
                
                
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
           
                <a href="#" class="bt">다음</a>

            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt_wrap">
                <a href="sea_writer.jsp" class="on">올리기</a>
            </div>
        </div>
    



<%@ include file="footer.jsp" %>
</body>
</html>