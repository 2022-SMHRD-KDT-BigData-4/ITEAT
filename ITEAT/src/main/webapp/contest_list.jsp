<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/contestCss.css?var=21115111">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body id="con_list">


<%@ include file="header.jsp" %>

  <!-- 전체 감싸기 -->
    <div class="board_wrap">
        <!-- 제목 영역 -->
        <div class="board_title">
            공모전 모집
        </div>
        

        <!-- 리스트영역 전체 -->
        <div class="board_list_wrap">
            <!-- 리스트영역 -->
            <div class="board_list">
                <div class="top">
                    <div class="number">글번호</div>
                    <div class="writer">작성자</div>
                    <div class="title">제목</div>
                    <div class="local">지역</div>
                    <div class="position">포지션</div>
                    <div class="date">작성날짜</div>
                    <div class="recruit">모집여부</div>
                </div>
                <div>
                	<div class="number">4</div>
                    <div class="writer">정민</div>
                    <div class="title"><a href="contest_view.jsp">날씨빅데이터 공모전 팀원 모집합니다</a></div>
                    <div class="local">창원</div>
                    <div class="position">백엔드</div>
                    <div class="date">2022-05-24 08:20:25.0</div>
                    <div class="recruit">모집중</div>
                </div>
                <div>
                	<div class="number">3</div>
                    <div class="writer">종현</div>
                    <div class="title"><a href="contest_view.jsp">전라남도 공공데이터 공모전 팀원 구합니다</a></div>
                    <div class="local">수원</div>
                    <div class="position">백엔드</div>
                    <div class="date">2022-05-23 10:32:43.0</div>
                    <div class="recruit">모집중</div>
                </div>
                <div>
                	<div class="number">2</div>
                    <div class="writer">민지</div>
                    <div class="title"><a href="contest_view.jsp">제주 공공데이터 공모전 팀원 구해요</a></div>
                    <div class="local">목포</div>
                    <div class="position">프론트</div>
                    <div class="date">2022-05-25 20:34:45.0</div>
                    <div class="recruit">모집중</div>
                </div>
                <div>
                	<div class="number">1</div>
                    <div class="writer">우현</div>
                    <div class="title"><a href="contest_view.jsp">데이터 활용 논문 공모전</a></div>
                    <div class="local">광주</div>
                    <div class="position">프론트</div>
                    <div class="date">2022-05-22 23:30:15.0</div>
                    <div class="recruit">모집마감</div>
                </div>
            </div>
            <!-- 리스트 페이지영역 -->
            <div class="paging">
                
                <a href="#" class="bt">이전</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="bt">다음</a>

            </div>
            <!-- 리스트 버튼영역 -->
            <div class="bt_wrap">
                <a href="contest_write.jsp" class="on">올리기</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>