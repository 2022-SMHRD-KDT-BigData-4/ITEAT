<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/contestCss.css">
<title>Insert title here</title>
</head>
<body>

    <div class="board_wrap">
        <div class="board_title">
            ����������
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ������ �Բ��ؿ�
                </div>
                <div class="info">
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>�̴�</dd>
                    </dl>
                    <dl>
                        <dt>����</dt>
                        <dd>����</dd>
                    </dl>
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>2022-05-14</dd>
                    </dl>
                    <dl>
                        <dt>��������</dt>
                        <dd>������</dd>
                    </dl>
                </div>
                <div class="tag">
                    �±׵��ڸ�
                </div>
                <div class="cont">
                    �� ������ ���ϴ�<br>
                    �ٵ� �̰� �ۼ��ڰ� ������<br>
                    �����ؾ����ٵ�<br>
                    �ϴ� �������� �κи� <br>
                    ���� ����
                </div>
            </div>
            <div class="comment">                    
                <p>�ǰ߳����</p>
                <form>
                <textarea name="comment" rows="3" cols="30" placeholder="��۾���"></textarea>
                <button id="ment" type="submit" name="button" cor>�ø���</button>    
                </form>
            </div>
            
            <div class="comment_view">
                <span class="writer"> �ۼ���</span> <span class="text"> ����</span>
            </div>      
            <div class="comment_view">
                <span class="writer"> �ۼ���</span> <span class="text"> ����</span>
            </div> 
            <div class="comment_view">
                <span class="writer"> �ۼ���</span> <span class="text"> ����</span>
            </div> 
            
            <div class="bt_wrap">
                <a href="contest_list.jsp" class="on">���</a>
            </div>
        </div>
        <div class="conment">


        </div>
    </div>
</body>
</html>