<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

    <div class="board_wrap">
        <!-- �ۿø��� �Խ��� ������ϱ� -->
        <div class="board_title">
            ���͵���� / �۾���
        </div>
        <!-- �� �ø��� �Խ��� ��ü -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title"> 
                     <input type="text" placeholder="������ �Է��ϼ���"> 
               


                <span class="option">

                    <div class="btn-group">
                        <button id="stackBtn" class="btn btn-sm dropdown-toggle btn-outline-light" type="button"  data-bs-toggle="dropdown" aria-expanded="false">
                                ���� ����
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
                    
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="C��C��" id="flexCheckChecked">
                                <label class="form-check-label" for="flexCheckChecked">C �� C��</label></label>
                    
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
                            
                            <label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="��Ÿ" id="flexCheckChecked" >
                                <label class="form-check-label" for="flexCheckChecked">��Ÿ</label></label>
                        </ul>
                    </div>
                    &nbsp

                    <select class="form-select form-select-lg mb-3"  aria-label=".form-select-lg example" style="width: 70px; display: inline;">
                        <option selected>����</option>
                        <option value="seoul">����</option>
                        <option value="gyeonggi">���</option>
                        <option value="gwangju">����</option>
                        <option value="busan">�λ�</option>
                        <option value="daegu">�뱸</option>
                        <option value="daejeon">����</option>
                        <option value="gangwon">����</option>
                        <option value="chungbuk">���</option>
                        <option value="chungnam">�泲</option>
                        <option value="jeonnam">����</option>
                        <option value="jeonbuk">����</option>
                        <option value="gyeongnam">�泲</option>
                        <option value="gyeongbuk">���</option>
                        <option value="areaEtc">��Ÿ</option>
                    </select>
                    &nbsp
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="width: 85px;display: inline;" >
                        <option selected>��������</option>
                        <option value="conIng">������</option>
                        <option value="conEnd">��������</option>
                    </select>
                </span></div>

                <div id='stackRs' style="display:none;">
                    
                </div>


                <div id="cont" class="form-floating">
                    <textarea class="form-control" id="floatingTextarea2"></textarea>
                  </div>

                  <label class="input-file-button" for="input-file" >
                      ���� ���ε�
                  </label>
                  <input type="file" id="input-file" name="uploadFile" accept="image/png, image/jpeg">
            
                </div>


            <!--��ư-->
            <div class="bt_wrap">
                <a href="study_view.jsp" id="on" class="btn btn-primary btn-lg">����ϱ�</a>&nbsp                
                <a href="study_list.jsp" id="onn" class="btn btn-primary btn-lg">�ڷΰ���</a>
            </div>
        </div>
    </div>

<script>
    let stackList = []
				// ���߽���
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>