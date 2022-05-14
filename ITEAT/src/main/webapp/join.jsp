<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"></script>
<style>
* {
	margin: 15;
	padding: 0;
	box-sizing: border-box;
	/* border: 1px solid silver; */
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	line-height: 1.2rem;
	color: #333;
	letter-spacing: -0.02rem;
	display: block;
}

#joinTt {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
	text-align: center;
	margin-top: 15px;
	color: #13547A;;
}

a:link {
	color: #292929;
	text-decoration: none;
}

a:visited {
	color: #292929;
}

a:hover {
	color: #292929;
}

a:active {
	color: #292929;
}

ul li {
	list-style: none;
}

button {
	border: 1px solid #13547A;
	background-color: #fff;
	color: #13547A;
	font-size: 16px;
	font-weight: 500;
	font-family: 'Noto Sans KR', sans-serif;
	cursor: pointer;
}

img {
	width: 100px;
}

input, textarea, select {
	font-family: 'Noto Sans KR', sans-serif;
}

input[type=search], input[type=email], input[type=password], input[type=text],
	input[type=number] {
	width: 100%;
	height: 48px;
	padding: 0 11px 1px 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-weight: 400;
	font-size: 16px;
	line-height: 1.5;
	color: #333;
	appearance: none;
	outline: 0;
}

textarea {
	width: 100%;
	height: 100px;
	padding: 0 11px 1px 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-weight: 400;
	font-size: 16px;
	line-height: 1.5;
	color: #333;
	appearance: none;
	outline: 0;
}

input[type=search]:focus, input[type=email]:focus, input[type=password]:focus,
	input[type=text]:focus, input[type=number]:focus, textarea:focus {
	border: 1px solid black;
}

input[type=radio] {
	appearance: none;
	width: 24px;
	height: 24px;
	margin-right: 12px;
	border: 1px solid #ddd;
	background-color: #fff;
	border-radius: 100%;
	display: inline-block;
	vertical-align: middle;
}

input[type=radio]:checked.smallradio {
	width: 24px;
	height: 24px;
	border: 7px solid #13547A;
}

.headertop {
	width: 100%;
	height: 50px;
	background: white;
	border-bottom: 1px solid #ddd;
	position: fixed;
	top: 0;
}

.headertop nav {
	padding: 0 5%;
}

.headertop nav ul {
	display: flex;
	justify-content: space-between;
}

.headertop nav ul a {
	display: block;
	width: auto;
	height: 50px;
}

.headertop nav ul li {
	list-style: none;
	line-height: 50px;
	font-size: 16px;
	font-weight: 700;
}

.headertop nav ul li:nth-child(1) img {
	width: 40px;
	height: 50px;
}

.headertop nav ul li:nth-child(3) img {
	width: 40px;
	height: 40px;
}

.info_member {
	padding: 50px 35% 0 35%;
}

.info_member>div>:nth-child(1) {
	padding: 18px 0 7px 0;
	font-weight: 500;
}

.info_member .notnull::after {
	content: "*";
	color: #d04444;
}

.info_member>:nth-child(8)>:nth-child(1)::after, .info_member>:nth-child(9)>:nth-child(1)::after,
	.info_member>:nth-child(10)>:nth-child(1)::after {
	display: none;
}

.boxSize {
	display: flex;
}

.dbCk {
	width: 100px;
	height: 48px;
	margin-left: 10px;
	transition: 0.8s;
	flex-shrink: 0;
}

.dbCk {
	width: 100px;
	height: 48px;
	margin-left: 10px;
	transition: 0.8s;
	flex-shrink: 0;
}

#joinBtn {
	margin-top: 20px;
	text-align: center;
	width: 15%;
	height: 48px;
	background-color: #13547A;
	color: white;
	font-size: 16px;
	font-weight: 600;
	border: 1px solid #13547A;
	font-family: 'Noto Sans KR', sans-serif;
}

#joinDiv {
	text-align: center;
}

.dbCkRs {
	color: #d04444;
	font-size: 12px;
}
.checkblue{
	color: #1c7cb4;
}
.checkred{
	color: #d04444;
}

input:required:invalid{
	border-color: red;
	border-width: 1px;
}

</style>
</head>
<body>
	<form action='JoinCon' method="post">

		<div id="joinTt">회원가입</div>



		<div class="info_member">
			<div>
				<p class="notnull">아이디</p>
				<div class="boxSize">
					<input type="text" id="uif_id" name="uif_id" value="" placeholder="2~12자 이내" oninput="uif_idCheck()" minlength="6" maxlength="20" required>
				</div>
				<p id="idCheck"></p>
			</div>

			<div>
				<p class="notnull">비밀번호</p>
				<input type="password" id="pw" name="uif_pw" value="" placeholder="비밀번호를 입력해주세요" required>
			</div>

			<div>
				<p class="notnull">비밀번호 확인</p>
				<input type="password" name="pwCk" value=""
					placeholder="비밀번호를 한번 더 입력해주세요">
			</div>

			<div>
				<p class="notnull">닉네임</p>
				<div class="boxSize">
					<input type="text" id="uif_nick" name="uif_nick" value="" placeholder="2~12자 이내" oninput="uif_nickCheck()" required>
				</div>
				<p id="nickCheck"></p>
			</div>

			<div>
				<p>개발 스택</p>
				<select>
					<option value="" selected>--선택--</option>
					<option value="java">JAVA</option>
					<option value="pyhon">Python</option>
					<option value="html">HTML / CSS</option>
					<option value="js">JavaScript</option>
					<option value="git">Git</option>
					<option value="spring">Spring</option>
					<option value="rdbms">RDBMS</option>
					<option value="sql">SQL</option>
					<option value="c">C / C++</option>
				</select>
				<textarea name="uif_stack" rows="3" cols="30"></textarea>
			</div>

			<div>
				<p>개인 블로그</p>
				<div>
					<textarea name="uif_blog" rows="3" cols="30"
						placeholder="예) velog.io/@nanana "></textarea>
				</div>
			</div>

			<div>
				<p>교육 이력</p>
				<div>
					<textarea name="uif_edu" rows="3" cols="30"
						placeholder="예) 스마트인재개발원 - 빅데이터 분석서비스 개발자과정 수료 "></textarea>
				</div>
			</div>

			<div>
				<p>기타 이력</p>
				<div>
					<textarea name="uif_etc" rows="10" cols="30"
						placeholder="예) 자바를 이용한 부루마블 게임 제작 "></textarea>
				</div>
			</div>



		</div>

		<div id="joinDiv">
			<input id="joinBtn" type="submit" value="가입하기">
		</div>
	</form>
	<script>
				function uif_idCheck(){
					
					let uif_id = $('#uif_id').val();
								
					$.ajax({
						data : {'uif_id':uif_id},
						url : 'IdCheckCon',
						method : 'get',
						contentType : 'application/json; charset=utf-8',
						dataType : 'text',
						success : function(data){ 
							if(data=='true'){
								$('#idCheck').html('<p class="checkblue">사용할 수 있는 아이디입니다.<p>')
							}else{
								$('#idCheck').html('<p class="checkred">사용할 수 없는 아이디입니다.<p>')
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
				
				function uif_nickCheck(){
					let uif_nick = $('#uif_nick').val();
					
					$.ajax({
						data : {'uif_nick':uif_nick},
						url : 'NickCheckCon',
						method : 'get',
						contentType : 'application/json; charset=utf-8',
						dataType : 'text',
						success : function(data){ 
							if(data=='true'){
								$('#nickCheck').html('<p class="checkblue">사용할 수 있는 닉네임입니다.<p>')
							}else{
								$('#nickCheck').html('<p class="checkred">사용할 수 없는 닉네임입니다.<p>')
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
	</script>
</body>
</html>