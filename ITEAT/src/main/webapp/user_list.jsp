<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
                <tr>
                    <td>id</td>
                    <td>nick</td>
                    <td>level</td>
                    <td>date</td>
                    <td><a href="#">삭제</a></td>

                </tr>

            </div>
            </table>
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
        </div>



            
        </div>
    </div>
<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>