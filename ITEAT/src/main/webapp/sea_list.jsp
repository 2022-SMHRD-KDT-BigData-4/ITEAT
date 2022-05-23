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
    <link rel="stylesheet" href="assets/css/sea_list.css?ver21">
</head>
<body>
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
                    
                    <div class="title">제목</div>
                    <div class="develope">언어</div>
                    <div class="date">작성날짜</div>
                    <div class="delete">삭제</div>
                </div>

                <div>
                    
                    <div class="title"><a href="view.html">모르겠어요</a></div>
                    <div class="develope">미니</div>
                    <div class="date">2022-05-14</div>
                    <div class="delete"><input type="checkbox" class="input_chk"> <label for=""></div>
                </div>

                <div>
                    
                    <div class="title"><a href="view.html">모르겠어요</a></div>
                    <div class="develope">미니</div>
                    <div class="date">2022-05-14</div>
                    <div class="delete"><input type="checkbox" class="input_chk"> <label for=""></div>
                </div>

                <div>
                    
                    <div class="title"><a href="view.html">모르겠어요</a></div>
                    <div class="develope">미니</div>
                    <div class="date">2022-05-14</div>
                    <div class="delete"><input type="checkbox" class="input_chk"> <label for=""></div>
                </div>
                <div>
                    
                    <div class="title"><a href="view.html">모르겠어요</a></div>
                    <div class="develope">미니</div>
                    <div class="date">2022-05-14</div>
                    <div class="delete"><input type="checkbox" class="input_chk"> <label for=""></div>
                </div>
                <div>
                    <div class="title"><a href="view.html">모르겠어요</a></div>
                    <div class="develope">미니</div>
                    <div class="date">2022-05-14</div>
                    <div class="delete"><input type="checkbox" class="input_chk"> <label for=""></div>
                </div>
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
                <a href="sea_write.jsp" class="on">올리기</a>
            </div>
        </div>
    </div>



<%@ include file="footer.jsp" %>
</body>
</html>