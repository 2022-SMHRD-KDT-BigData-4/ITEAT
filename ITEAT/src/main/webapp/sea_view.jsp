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
    <link rel="stylesheet" href="assets/css/sea_view.css?ver05">
</head>
<body>


<%@ include file="header.jsp" %>
    <div class="board_wrap">
         <div class="board_title">
            해저탐험 / 글
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    글제목
                </div>
                <div class="info">
                  
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022-05-14</dd>
                    </dl>
                </div>


                <div id="mail_view_cont">
                    내용들어갈거임 ㅋㅋ 
                </div>
            </div>


             <div class="bt">
        <a href="sea_list.jsp"><button id="list">목록으로</button></a>
    		</div>
        </div>
        
         <%@ include file="footer.jsp" %>
</body>
</html>