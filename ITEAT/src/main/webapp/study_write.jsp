<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" href="assets/css/studyCss.css">
	<link href="resources/bootstrap-5.2.0-beta1-dist/js/bootstrap.js">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="board_wrap">
        <!-- 글올리는 게시판 묻고답하기 -->
        <div class="board_title">
            스터디모집 / 글쓰기
        </div>
        <!-- 글 올리는 게시판 전체 -->
        <form action="study_writeCon" method="post" id="frm" name="frm">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title"> 
                     <input type="text" id="sb_title" name="sb_title" placeholder="제목을 입력하세요"> 
               
                    <div class="btn-group">
                   
                        <button id="stackBtn" class="btn btn-sm dropdown-toggle btn-outline-light" type="button"  data-bs-toggle="dropdown" aria-expanded="false">
                                스택 선택
                        </button>
                        <ul class="dropdown-menu" >
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="JAVA" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">JAVA</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="Python" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">Python</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="JavaScript" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">JavaScript</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="TypeScript" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">TypeScript</label></label>
                                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="PHP" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">PHP</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="C／C＃" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">C ／ C＃</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="HTML" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">HTML</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="CSS" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">CSS</label></label>

                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="RDBMS" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">RDBMS</label></label>
                                   
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="AWS" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">AWS</label></label>
                
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="Spring" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">Spring</label></label>
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="React" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">React</label></label>
                            
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="sb_stack" value="기타" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">기타</label></label>
                        </ul>
                    </div>
                    &nbsp

                    <select id="sb_region" name="sb_region" class="form-select form-select-lg mb-3"  aria-label=".form-select-lg example" style="width: 70px; display: inline;">
                        <option value="지역">지역</option>
                        <option value="서울">서울</option>
                        <option value="경기">경기</option>
                        <option value="광주">광주</option>
                        <option value="부산">부산</option>
                        <option value="대구">대구</option>
                        <option value="대전">대전</option>
                        <option value="강원">강원</option>
                        <option value="충북">충북</option>
                        <option value="충남">충남</option>
                        <option value="전남">전남</option>
                        <option value="전북">전북</option>
                        <option value="경남">경남</option>
                        <option value="경북">경북</option>
                        <option value="기타">기타</option>
                    </select>
                    &nbsp
                    <select id="sb_recruit" name="sb_recruit" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="width: 85px;display: inline;" >
                        <option selected>모집여부</option>
                        <option value="모집중">모집중</option>
                        <option value="모집마감">모집마감</option>
                    </select>
                </div>

                <div id='stackRs'>
                </div>


                <div id="cont" class="form-floating">
                    <textarea name="sb_content" class="form-control" id="floatingTextarea2"></textarea>
                  </div>

                  
                </div>


            <!--버튼-->
            <div class="bt_wrap">
                <a href="#" onclick="return chk_form()" id="on" class="btn btn-primary btn-lg">등록하기</a>
            </div>
        </div>
        </form>
    </div>

<script>
    let stackList = []
				// 개발스택
            $('input[name="sb_stack"]').click(function(){

				

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
            
          
    
    function chk_form(){
		if(document.getElementById("sb_title").value==''){
			alert("제목을 입력하세요.");
			return false;
		}else if(document.getElementById("floatingTextarea2").value==''){
			alert("내용을 입력하세요.");
			return false;
		}else if($('input[name="sb_stack"]:checked').length==0){
			alert("스택을 입력하세요.");
			return false;
		}else{
		document.getElementById("frm").submit();
		}
    }
</script>


<%@ include file="footer.jsp" %>

</body>
</html>