<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    
<title>Insert title here</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/contestCss.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
<%@ include file="header.jsp" %>
<div class="board_wrap">
        <!-- 글올리는 게시판 묻고답하기 -->
        <div class="board_title">
            공모전 / 글쓰기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title"> 
                    <input type="text" placeholder="제목을 입력하세요">
                
                <span class="option">
                    <select class="form-select form-select-lg" aria-label=".form-select-lg example" style="width: 80px;  display: inline;">
                        <option selected>포지션</option>
                        <option value="pstFront">프론트</option>
                        <option value="pstBack">백</option>
                        <option value="pstEtc">기타</option>
                    </select>
                  &nbsp
                  <select class="form-select form-select-lg mb-3"  aria-label=".form-select-lg example" style="width: 70px; display: inline;">
                    <option selected>지역</option>
                    <option value="seoul">서울</option>
                    <option value="gyeonggi">경기</option>
                    <option value="gwangju">광주</option>
                    <option value="busan">부산</option>
                    <option value="daegu">대구</option>
                    <option value="daejeon">대전</option>
                    <option value="gangwon">강원</option>
                    <option value="chungbuk">충북</option>
                    <option value="chungnam">충남</option>
                    <option value="jeonnam">전남</option>
                    <option value="jeonbuk">전북</option>
                    <option value="gyeongnam">경남</option>
                    <option value="gyeongbuk">경북</option>
                    <option value="areaEtc">기타</option>
                  </select>
                  &nbsp
                  <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="width: 85px;display: inline;" >
                    <option selected>모집여부</option>
                    <option value="conIng">모집중</option>
                    <option value="conEnd">모집마감</option>
                  </select>
                </span></div>

                <div id="cont" class="form-floating">
                    <textarea class="form-control" id="floatingTextarea2"></textarea>
                  </div>

                  <label class="input-file-button" for="input-file" >
                      사진 업로드
                  </label>
                  <input type="file" id="input-file" name="uploadFile" accept="image/png, image/jpeg">
            </div>



            <!--버튼-->
            <div class="bt_wrap">
                <a href="contest_view.jsp" id="on" class="btn btn-primary btn-lg">등록하기</a>&nbsp                
                <a href="contest_list.jsp" id="onn" class="btn btn-primary btn-lg">뒤로가기</a>
            </div>
        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>