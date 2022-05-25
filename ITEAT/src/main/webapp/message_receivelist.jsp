<%@page import="com.iteat.domain.Message"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.MessageDAO"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT EAT</title>
    <link rel="stylesheet" href="assets/css/message.css?ve35485">
</head>
<body id="msg_body">
<%@ include file="header.jsp" %>
    <!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            받은쪽지           
        </div>

        <div class="give">
            <a href="message_sendlist.jsp"><button id="sendmsg">보낸쪽지</button></a>
            <div id="all"><a href="DeleteAllMessageCon">전체삭제</a></div>
        </div>


        
        <br>
        <br>
        
        
        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            
            <!-- 리스트영역 -->
             <c:choose>
                	  <c:when test="${empty loginUser}">
                  	   <li>로그인을 하세요.</li>
                	  </c:when>
                	  <c:otherwise>
                	  <%
                	  	UserInfo uif= (UserInfo)session.getAttribute("loginUser");
                	  	MessageDAO dao = new MessageDAO();
                		List<Message> messageList = dao.selectReceiveMessage(uif.getUif_id());
                		pageContext.setAttribute("messageList",messageList);
                		System.out.print("메세지 개수 : " + messageList.size());
                	  %>
            <!-- 리스트영역 -->
            <div class="board_list" id="blist">
                <div class="top">
                    <div class="title">제목</div>
                    <div class="writer">보낸사람</div>
                    <div class="date">작성날짜</div>
                    <div class="delete">삭제</div>
                </div>
			<c:forEach var="msg" items="${messageList}">
                <div>
                    
                    <div class="title"><a href="message_view.jsp">${msg.msg_title}</a></div>
                    <div class="writer">${msg.msg_sender}</div>
                    <div class="date">${msg.msg_date}</div>
                    <div class="delete"><a href="DeleteReceiveMessageCon?msg_seq=${msg.msg_seq}">삭제</a> <label for=""></div>
                </div>
                
            </c:forEach>

                
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="bt">다음</a>
                
            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt_wrap">
                <a href="message_form.jsp"><button>쪽지작성</button></a>
                <!--<a href="#">수정</a>-->
            </div>
            
          </c:otherwise>
         </c:choose>
        </div>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html> 