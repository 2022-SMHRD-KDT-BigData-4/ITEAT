<%@page import="com.iteat.domain.UserInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.UserInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	UserInfoDAO dao = new UserInfoDAO();
	List<UserInfo> userInfoList = dao.selectAll();
	pageContext.setAttribute("UserInfoList",userInfoList);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/studyCss.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>


<%@ include file="header.jsp" %>




    <!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            회원 목록
        </div>
        <!-- 검색창부분 -->
        <div class ="search">
            <input type="text" placeholder="검색어를 입력해주세요">
            <button>검색</button>
        </div>

        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            <table>
            <!-- 리스트영역 -->
            <div class="board_list">
                <tr class="top">
                    <th >아이디</th>
                    <th >닉네임</th>
                    <th >레벨</th>
                    <th>가입날짜</th>
                    <th >삭제</th>
                </tr>

            </div>

            <div>
                <c:forEach var="u" items="${UserInfoList}">
					<tr>
						<td><c:out value="${u.uif_id}"/></td>
						<td><c:out value="${u.uif_nick}"/></td>
						<td><c:out value="${u.uif_level}"/></td>
						<td><c:out value="${u.date}"/></td>
						<td><a href="DeleteCon?uif_id=${u.uif_id}">삭제</a></td>														
					</tr>
				</c:forEach>

            </div>
            </table>
        </div>



            
        </div>
    </div>
<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>