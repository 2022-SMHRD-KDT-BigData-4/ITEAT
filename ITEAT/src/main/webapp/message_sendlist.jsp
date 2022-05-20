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
    <link rel="stylesheet" href="assets/css/message.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            보낸쪽지           
        </div>

        <div class="give">
            <a href="message_receivelist.jsp"><button>받은쪽지</button></a>
        </div>


        
        <br>
        <br>
        
        
        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            <c:choose>
                	  <c:when test="${empty loginUser}">
                  	   <li>로그인을 하세요.</li>
                	  </c:when>
                	  <c:otherwise>
                	  <%
                	  	UserInfo uif= (UserInfo)session.getAttribute("loginUser");
                	  	MessageDAO dao = new MessageDAO();
                		List<Message> messageList = dao.selectSendMessage(uif.getUif_id());
                		pageContext.setAttribute("messageList",messageList);
                		System.out.print("메세지 개수 : " + messageList.size());
                	  %>
            <!-- 리스트영역 -->
            <div class="board_list">
                <div class="top">
                    <div class="title">제목</div>
                    <div class="writer">받은사람</div>
                    <div class="date">작성날짜</div>
                </div>
			<c:forEach var="msg" items="${messageList}">
                <div>
                    
                    <div class="title"><a href="message_view.jsp">${msg.msg_title}</a></div>
                    <div class="writer">${msg.msg_receiver}</div>
                    <div class="date">${msg.msg_date}</div>
                </div>
                
            </c:forEach>

                
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt">다음</a>
                
            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt_wrap">
                <a href="message_form.jsp" class="on">쪽지작성</a>
                <!--<a href="#">수정</a>-->
            </div>
            
          </c:otherwise>
         </c:choose>
               	
        </div>
    </div>
    <footer id="footer">


    <div class="container footer-bottom clearfix">
      <div class="copyright">
      <strong><span>이민지 이정민 심우현 하종현</span></strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        IT EAT
      </div>

    
    
    </div>
  </footer><!-- End Footer -->
</body>
</html> 