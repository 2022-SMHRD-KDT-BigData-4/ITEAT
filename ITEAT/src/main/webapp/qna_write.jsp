<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    
<title>Insert title here</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/qna_style.css?ver01">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
<%@ include file="header.jsp" %>
<div class="board_wrap">
        <!-- 글올리는 게시판 묻고답하기 -->
        <div class="board_title">
            묻고답하기 / 글쓰기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <div>
                        <span>
                        <select id="qna_cate" onchange="cate()">
                            <option value="코드">코드</option>
                            <option value="고민">고민</option>
                            </select>
                        </span>


                        <span id="titleInput"><input type="text" placeholder="제목을 입력하세요" ></span>


                        <span id="stackSltHide" style="display:block;">
                            <select id="stackSlt" onchange="cate()">
                            <option value="JAVA">JAVA</option>
                            <option value="Python">Python</option>
                            <option value="C／C＃">C／C＃</option>
                            <option value="HTML／CS">HTML／CSS</option>
                            <option value="JavaScript">JavaScript</option>
                            <option value="SQL">SQL</option>
                            <option value="기타">기타</option>
                            </select>
                        </span>


                    </div>
                </div>
                
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                </div>

                <div class="bt_wrap">
                    <label class="input-file-button" for="input-file" >
                        업로드
                    </label>
                    <input type="file" id="input-file" name="uploadFile" accept="image/png, image/jpeg">
    
                </div>
            </div>

            


        </div>

        <div class="bt_wrap">
            <button onclick="location.href='qna_list.jsp'" class="on">등록하기</button>
            <button onclick="location.href='qna_list.jsp'" class="on">뒤로가기</button>
        </div>
    </div>
    

    <script>

        function cate(){
            //코드 카테고리 열기
            if(($('#qna_cate').val()) == '코드'){
               
                $('#stackSltHide').css('display','flex')
                $('#titleInput>input').css('width','79%')
                $('.board_write .title input[type="text"]').css('margin-left','12px')
            
            }else{  //닫기
                $('#stackSltHide').css('display','none')
                $('#titleInput>input').css('width','79%')
                $('.board_write .title input[type="text"]').css('margin-left','12px')
            }



        }



    </script>
    
    <%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>