<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/qna_style2.css?ver5545445">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body id="qna_body">


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
               	 	<div class="number">글번호</div>
                    <div class="num">말머리</div>
                    <div class="writer">작성자</div>
                    <div class="title">제목</div>
                    <div class="date">작성날짜</div>
                    <div class="develope1">개발언어</div>
                </div>
                <div>
                	<div class="number">8</div>
                    <div class="num">코드</div>
                    <div class="writer">정민</div>
                    <div class="title"><a href="qna_view.jsp">JAVA부분 모르겠습니다</a></div>
                    <div class="date">2022-05-24 07:41:25.0</div>
                    <div class="develope">자바</div>
                </div>
                <div>
                	<div class="number">7</div>
                    <div class="num">고민</div>
                    <div class="writer">민지</div>
                    <div class="title"><a href="qna_view.jsp">진로고민이 생겼습니다</a></div>
                    <div class="date">2022-05-22 23:51:27.0</div>
                    <div class="develope"></div>
                </div>
                <div>
                	<div class="number">6</div>
                    <div class="num">코드</div>
                    <div class="writer">종현</div>
                    <div class="title"><a href="qna_view.jsp">Python이 많이 어려워요</a></div>
                    <div class="date">2022-05-22 11:27:22.0</div>
                    <div class="develope">파이썬</div>
                </div>
                <div>
                	<div class="number">5</div>
                    <div class="num">고민</div>
                    <div class="writer">우현</div>
                    <div class="title"><a href="qna_view.jsp">과를 옮길까 고민이됩니다</a></div>
                    <div class="date">2022-05-21 18:30:17.0</div>
                    <div class="develope"></div>
                </div>
                <div>
                	<div class="number">4</div>
                    <div class="num">고민</div>
                    <div class="writer">정민</div>
                    <div class="title"><a href="qna_view.jsp">프로젝트 주제를 정하기 어려워요</a></div>
                    <div class="date">2022-05-20 19:27:47.0</div>
                    <div class="develope"></div>
                </div>
                <div>
                	<div class="number">3</div>
                    <div class="num">코드</div>
                    <div class="writer">민지</div>
                    <div class="title"><a href="qna_view.jsp">프론트부분이 어렵네요</a></div>
                    <div class="date">2022-05-20 06:45:26.0</div>
                    <div class="develope">HTML/CSS</div>
                </div>
                <div>
                	<div class="number">2</div>
                    <div class="num">고민</div>
                    <div class="writer">종현</div>
                    <div class="title"><a href="qna_view.jsp">공부가 너무 어렵네요</a></div>
                    <div class="date">2022-05-19 23:58:27.0</div>
                    <div class="develope"></div>
                </div>
                <div>
                	<div class="number">1</div>
                    <div class="num">코드</div>
                    <div class="writer">우현</div>
                    <div class="title"><a href="qna_view.jsp">자바스크립트 도저히 모르겠습니다</a></div>
                    <div class="date">2022-05-19 18:21:57.0</div>
                    <div class="develope">자바스크립트</div>
                </div>
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="bt">다음</a>

            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt">
                <a href="qna_write.jsp"><button id="writer">질문작성</button></a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>