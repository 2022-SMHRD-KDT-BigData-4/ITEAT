<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="assets/css/joinCss.css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="resources/bootstrap-5.2.0-beta1-dist/js/bootstrap.js">

</head>
<body>
	<form action='JoinCon' method="post">

		<div id="joinTt">회원가입</div>



		<div class="info_member">
			<div>
				<p class="notnull">아이디</p>
				<div class="boxSize">
					<input type="text" id="uif_id" name="uif_id" value="" placeholder="2~12자 이내" onchange="joinCheck()" oninput="uif_idCheck()" minlength="2" maxlength="12" required>
				</div>
				<p id="idCheck"></p>
			</div>

			<div>
				<p class="notnull">비밀번호</p>
				<input type="password" id="uif_pw" name="uif_pw" value="" placeholder="4~12자 이내" onchange="joinCheck()" oninput="uif_pwCheck()" minlength="4" maxlength="12" required>
				<p id="pwCheck"></p>
			</div>

			<div>
				<p class="notnull">비밀번호 확인</p>
				<input type="password" id="uif_pwck" name="pwCk" value="" placeholder="비밀번호를 한번 더 입력해주세요" onchange="joinCheck()" oninput="uif_pwckCheck()" minlength="4" maxlength="12" required>
				<p id="pwckCheck"></p>
			</div>

			<div>
				<p class="notnull">닉네임</p>
				<div class="boxSize">
					<input type="text" id="uif_nick" name="uif_nick" value="" placeholder="2~12자 이내" onchange="joinCheck()" oninput="uif_nickCheck()" minlength="2" maxlength="12" required>
				</div>
				<p id="nickCheck"></p>
			</div>

			<div>
				<div class="btn-group"><p>개발 스택</p>
					&nbsp &nbsp &nbsp &nbsp
					<button id="stackBtn" class="btn btn-sm dropdown-toggle btn-outline-light" type="button"  data-bs-toggle="dropdown" aria-expanded="false">
						스택 선택
					</button>
					<ul class="dropdown-menu" >
						<label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="JAVA" id="flexCheckChecked" >
							<label class="form-check-label" for="flexCheckChecked">JAVA</label></label>
			
						<label class="dropdown-item"><input class="form-check-input" type="checkbox" name="stack" value="Python" id="flexCheckChecked">
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
			
						
			
			
					</ul>
				</div>
				<div id='stackRs' >
				</div>
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
					
					let idLength = 0;
					let engCheck = /[a-z]/;
					let numCheck = /[0-9]/;
					let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
					
					for(let i=0; i < uif_id.length; i++){
						id = uif_id.charAt(i);
						if(escape(id).length>4){
							idLength += 2;
						}else{
							idLength += 1;
						}
					}
					
					if(uif_id == null || uif_id == ""){
						$('#idCheck').html('<p class="checkred">아이디를 입력해주세요.<p>');
						$('#uif_id').css({'border-color':'#d04444'});
					}else if(uif_id.search(/\s/) != -1){
						$('#idCheck').html('<p class="checkred">공백을 포함할 수 없습니다.<p>');
						$('#uif_id').css({'border-color':'#d04444'});
					}else if(idLength<2 || idLength>20){
						$('#idCheck').html('<p class="checkred">영어 및 숫자 2~12자를 입력해주세요.<p>');
						$('#uif_id').css({'border-color':'#d04444'});
					}else if(specialCheck.test(uif_id)){
						$('#idCheck').html('<p class="checkred">특수문자를 포함할 수 없습니다.<p>');
						$('#uif_id').css({'border-color':'#d04444'});
					}else{
					
					$.ajax({
						data : {'uif_id':uif_id},
						url : 'IdCheckCon',
						method : 'get',
						contentType : 'application/json; charset=utf-8',
						dataType : 'text',
						success : function(data){ 
							if(data=='true'){
								$('#idCheck').html('<p class="checkblue">사용할 수 있는 아이디입니다.<p>');
								$('#uif_id').css({'border-color':'#1c7cb4'});
							}else{
								$('#idCheck').html('<p class="checkred">존재하는 아이디입니다.<p>');
								$('#uif_id').css({'border-color':'#d04444'});
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
					}
				}
				
				function uif_nickCheck(){
					
					let uif_nick = $('#uif_nick').val();
					
					let nickLength = 0;
					let engCheck = /[a-z]/;
					let numCheck = /[0-9]/;
					let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
					
					for(let i=0; i < uif_nick.length; i++){
						nick = uif_nick.charAt(i);
						if(escape(nick).length>4){
							nickLength += 2;
						}else{
							nickLength += 1;
						}
					}
					
					if(uif_nick == null || uif_nick == ""){
						$('#nickCheck').html('<p class="checkred">닉네임을 입력해주세요.<p>');
						$('#uif_nick').css({'border-color':'#d04444'});
					}else if(uif_nick.search(/\s/) != -1){
						$('#nickCheck').html('<p class="checkred">공백을 포함할 수 없습니다.<p>');
						$('#uif_nick').css({'border-color':'#d04444'});
					}else if(nickLength<2 || nickLength>20){
						$('#nickCheck').html('<p class="checkred">영어 및 숫자 2~12자를 입력해주세요.<p>');
						$('#uif_nick').css({'border-color':'#d04444'});
					}else if(specialCheck.test(uif_nick)){
						$('#nickCheck').html('<p class="checkred">특수문자를 포함할 수 없습니다.<p>');
						$('#uif_nick').css({'border-color':'#d04444'});
					}else{
					
					$.ajax({
						data : {'uif_nick':uif_nick},
						url : 'NickCheckCon',
						method : 'get',
						contentType : 'application/json; charset=utf-8',
						dataType : 'text',
						success : function(data){ 
							if(data=='true'){
								$('#nickCheck').html('<p class="checkblue">사용할 수 있는 닉네임입니다.<p>');
								$('#uif_nick').css({'border-color':'#1c7cb4'});
							}else{
								$('#nickCheck').html('<p class="checkred">존재하는 닉네임입니다.<p>');
								$('#uif_nick').css({'border-color':'#d04444'});
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
					}
				}
				
				function uif_pwCheck(){
					
					let uif_pw = $('#uif_pw').val().length;
					
					if(uif_pw==0){
						$('#pwCheck').text('비밀번호를 입력하세요!')
						$('#pwCheck').css({'color':'#d04444'});
						$('#uif_pw').css({'border-color':'#d04444'});
						
					}else if(uif_pw<4){
						$('#pwCheck').text('비밀번호를 4자리 이상 입력하세요');
						$('#pwCheck').css({'color':'#d04444'});
						$('#uif_pw').css({'border-color':'#d04444'});
						
					}else{
						$('#pwCheck').text('');
						$('#uif_pw').css({'border-color':'#1c7cb4'});
					}
				}
				
				function uif_pwckCheck(){
					
					let uif_pw = $('#uif_pw').val();
					let uif_pwck = $('#uif_pwck').val();
					
					if(uif_pwck==0){
						$('#pwckCheck').text('비밀번호를 입력하세요!')
						$('#pwckCheck').css({'color':'#d04444'});
						$('#uif_pwck').css({'border-color':'#d04444'});
					}else if(uif_pwck.length<4){
						$('#pwckCheck').text('비밀번호를 4자리 이상 입력하세요');
						$('#pwckCheck').css({'color':'#d04444'});
						$('#uif_pwck').css({'border-color':'#d04444'});
						
					}else if(uif_pw==uif_pwck){
						$('#pwckCheck').text('비밀번호가 같습니다!');
						$('#pwckCheck').css({'color':'#1c7cb4'});
						$('#uif_pwck').css({'border-color':'#1c7cb4'});
					}else{
						$('#pwckCheck').text('비밀번호가 다릅니다!');
						$('#pwckCheck').css({'color':'#d04444'});
						$('#uif_pwck').css({'border-color':'#d04444'});
					}
				}
				
				function joinCheck(){
					let id_tag = $('#idCheck').text();
					let pw_tag = $('#pwCheck').text();
					let pwck_tag = $('#pwckCheck').text();
					let nick_tag = $('#nickCheck').text();
					if(id_tag == '사용할 수 있는 아이디입니다.' && pw_tag == '' && pwck_tag == '비밀번호가 같습니다!' && nick_tag == '사용할 수 있는 닉네임입니다.'){
						$('#joinBtn').prop("disabled",false);
						$('#joinBtn').css({'background-color':'#13547A'})
					}else{
						$('#joinBtn').prop("disabled",true);
					}
				}
				
				
				
				// 개발스텍 부분
				let stackList = []
	            $('input[name="stack"]').click(function(){

	                if($(this).prop('checked')){
	                    
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