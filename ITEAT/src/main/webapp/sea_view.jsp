<%@page import="com.iteat.domain.SeaCode"%>
<%@page import="com.iteat.domain.SeaCodeDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>message</title>
    <link rel="stylesheet" href="assets/css/sea_view.css?ve454">
</head>
<body id="seaview">


<%@ include file="header.jsp" %>

<%
	int codeSeq = Integer.parseInt(request.getParameter("num"));
	SeaCodeDAO sc_dao = new SeaCodeDAO();
	SeaCode seaCode = sc_dao.selectSC(codeSeq);
	pageContext.setAttribute("seaCode", seaCode);
%>
    <div class="board_wrap">
         <div class="board_title">
            해저탐험 / 글
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ${seaCode.code_title}
                </div>
                <div class="info">
                  	<dl>
                  		<dt>${seaCode.code_lang}</dt>
                  	</dl>
                    <dl>
                        <dt>${seaCode.code_date}</dt>
                    </dl>
                </div>


                <div id="mail_view_cont">
                    ${seaCode.code_content}
                </div>
            </div>


             <div class="bt">
        <a href="sea_list.jsp"><button id="list">목록으로</button></a>
    		</div>
        </div>
        
         <%@ include file="footer.jsp" %>
</body>
</html>