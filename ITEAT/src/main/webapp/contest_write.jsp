<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

<div class="board_wrap">
        <!-- �ۿø��� �Խ��� ������ϱ� -->
        <div class="board_title">
            ������ / �۾���
        </div>
        <!-- �� �ø��� �Խ��� ��ü -->
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title"> 
                    <input type="text" placeholder="������ �Է��ϼ���">
                
                <span class="option">
                    <select class="form-select form-select-lg" aria-label=".form-select-lg example" style="width: 80px;  display: inline;">
                        <option selected>������</option>
                        <option value="pstFront">����Ʈ</option>
                        <option value="pstBack">��</option>
                        <option value="pstEtc">��Ÿ</option>
                    </select>
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
                <a href="contest_view.jsp" id="on" class="btn btn-primary btn-lg">����ϱ�</a>&nbsp                
                <a href="contest_list.jsp" id="onn" class="btn btn-primary btn-lg">�ڷΰ���</a>
            </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>