<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/qna_style.css?vada">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>


<%@ include file="header.jsp" %>
<!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            묻고답하기            
        </div>
        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            <!-- 리스트영역 -->
            <div class="board_list">
                <div class="top">
                    <div class="num">말머리</div>
                    <div class="writer">작성자</div>
                    <div class="title">제목</div>
                    <div class="date">작성날짜</div>
                    <div class="develope1">개발언어</div>
                </div>
                <div>
                    <div class="num">코드</div>
                    <div class="writer">미니</div>
                    <div class="title"><a href="qna_view.jsp">모르겠어요</a></div>
                    <div class="date">2022-05-14</div>
                    <div class="develope">자바</div>
                </div>
                <div>
                    <div class="num">코드</div>
                    <div class="writer">미니</div>
                    <div class="title"><a href="qna_view.jsp">모르겠어요</a></div>
                    <div class="date">2022-05-14</div>
                    <div class="develope">자바</div>
                </div>
                <div>
                    <div class="num">코드</div>
                    <div class="writer">미니</div>
                    <div class="title"><a href="qna_view.jsp">모르겠어요</a></div>
                    <div class="date">2022-05-14</div>
                    <div class="develope">자바</div>
                </div>
                <div>
                    <div class="num">코드</div>
                    <div class="writer">미니</div>
                    <div class="title"><a href="qna_view.jsp">모르겠어요</a></div>
                    <div class="date">2022-05-14</div>
                    <div class="develope">자바</div>
                </div>
                <div>
                    <div class="num">코드</div>
                    <div class="writer">미니</div>
                    <div class="title"><a href="qna_view.jsp">모르겠어요..</a></div>
                    <div class="date">2022-05-14</div>
                    <div class="develope">자바</div>
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
                <a href="qna_write.jsp" class="on">올리기</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>