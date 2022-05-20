<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" href="assets/css/studyCss.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <!-- 글올리는 게시판 묻고답하기 -->
        <div class="board_title">
            스터디모집 / 글쓰기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <form action="#" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title"> 
                     <input type="text" placeholder="제목을 입력하세요"> 
               


                <span class="option">

                    <div class="btn-group">
                        <button id="stackBtn" class="btn btn-sm dropdown-toggle btn-outline-light" type="button"  data-bs-toggle="dropdown" aria-expanded="false">
                                스택 선택
                        </button>
                        <ul class="dropdown-menu" >
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="JAVA" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">JAVA</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="Python" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">Python</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="JavaScript" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">JavaScript</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="TypeScript" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">TypeScript</label></label>
                                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="PHP" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">PHP</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="C／C＃" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">C ／ C＃</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="HTML" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">HTML</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="CSS" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">CSS</label></label>

                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="RDBMS" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">RDBMS</label></label>
                                   
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="AWS" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">AWS</label></label>
                
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="Spring" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">Spring</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="React" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">React</label></label>
                            
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="기타" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">기타</label></label>
                        </ul>
                    </div>
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

                <div id='stackRs' style="display:none;">
                    
                </div>


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
                <a href="study_view.jsp" id="on" class="btn btn-primary btn-lg">등록하기</a>&nbsp                
                <a href="study_list.jsp" id="onn" class="btn btn-primary btn-lg">뒤로가기</a>
            </div>
        </div>
        </form>
    </div>

<script>
    let stackList = []
				// 개발스택
            $('input[name="stack"]').click(function(){

				

                if($(this).prop('checked')){
                    
                    $('#stackRs').css('display','block')
                    let bgRs=$(this).val()
                    let bgId='bg'+$(this).val()
                    $('#stackRs').append('<span class="btn btn-primary btn-sm " id="'+bgId+'" >'+bgRs+'</span>')
                
					
					stackList.push(bgRs)
                }else{
                    let b='bg'+$(this).val()
                    let res = "#"+b
                    $(res).remove()

					stackList =stackList.filter((element) => element !== ($(this).val()));
					

                }
            })
</script>


<%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>