<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IT EAT</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/chatbot.css?ver1.0" rel="stylesheet">
      <link rel="stylesheet" href="assets/css/sea_write.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <!-- 글올리는 게시판 묻고답하기 -->
        <div class="board_title">
            해저탐험 / 코드작성
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                        <div id ="html">
                            <select>
                            <option>HTML</option>
                            <option>CSS</option>
                            <option>JavaScript</option>
                            <option>JAVA</option>
                            <option>Spring</option>
                            <option>React</option>
                            <option>sql</option>
                            </select>
                        </div>
                        <div id="con_title">
                            <input type="text" placeholder="제목을 입력하세요" name="title">
                        </div>
                </div>
                

        </div>
    </div>
    <div>

        <div class="container">
            <textarea name="" id="myEditor" class="form-control" ></textarea>
    
        </div>


        <label class="input-file-button" for="input-file" >
            업로드
        </label>
        <input type="file" id="input-file" name="uploadFile" accept="image/png, image/jpeg">
    </div>
    </div>





            <div class="bt_wrap">
           <button href="qna_view.html" class="on">등록하기</button>
           <button href="qna_view.html" class="on">뒤로가기</button>
            </div>






    <!-- 스타일관련 -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.css" rel="stylesheet">
    <!-- 자바스크립트관련 -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.js"></script>
    <!-- 한글관련 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/lang/summernote-ko-KR.min.js"></script>

    <script>
        $(document).ready(function () {

            $('#myEditor').summernote({
                lang: 'ko-KR',
                height: 500,
            });


        });
    </script>     
     <%@ include file="footer.jsp" %>
</body>
</html>