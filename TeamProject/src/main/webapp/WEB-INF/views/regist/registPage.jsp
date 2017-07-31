<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="/project/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<head>
<meta charset="UTF-8">
<title>JSP</title>

</head>
<body>
	<form method="post">
		<a href="/project/login/loginPage">login</a>
		<br>
		<label>개인<input type="radio" value="사용자" id="user_part1" name="user_part" checked="checked"></label> 
		<label>사업자<input type="radio" value="사업자" id="user_part2" name="user_part"></label>
		<br>
		<label>아이디 : 
		<input type="text" id="user_userid" 
			name="user_userid" placeholder="ID"></label>
		<p id="check_user_userid"></p>
		<label>비밀번호 : 
		<input type="password" id="user_password" 
			name="user_password" placeholder="Password"></label>
		<p id="check_user_password"></p>
		<label>이름 : 
		<input type="text" id="user_name" 
			name="user_name" placeholder="Name"></label>
		<p id="check_user_name"></p>
		<label>전화번호 : 
		<input type="tel" id="user_phonenumber" 
			name="user_phonenumber" placeholder="Tel ex)010-1234-5678"></label>
		<p id="check_user_phonenumber"></p>
		<label>이메일 : 
		<input type="email" id="user_email" 
			name="user_email" placeholder="E-mail"></label>
		<p id="check_user_email"></p>
		<button id="user_regist" name="user_regist" type="button">회원가입</button>
	</form>

	<!-- jQuery -->
	<script src="/project/resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/project/resources/js/bootstrap.min.js"></script>
	
	
	<script type="text/javascript">
	$(function(){
		$("#user_userid").blur(function(){
			functionIdCheck(functionLoadData());
		});
		
		$("#user_regist").click(function(){
			if(functionInputCheck(functionLoadData())){
				functionRegist(functionLoadData());
			} else {
				alert("회원가입 실패 씨벌");
			}
		});
		
		function functionLoadData(){
			var part = functionPart();
			var registData = {
					user_part : part,
					user_userId : $("#user_userid").val(),
					user_password : $("#user_password").val(),
					user_name : $("#user_name").val(),
					user_phoneNumber : $("#user_phonenumber").val(),
					user_email : $("#user_email").val()
			};
			return registData;
		}
		
		function functionInputCheck(registData){
			$("#check_user_password").text("");
			$("#check_user_name").text("");
			$("#check_user_phonenumber").text("");
			$("#check_user_email").text("");
			var boolean = true;
			if(!functionIdCheck(registData)){
				boolean = false;
			}
			if(!functionWordLength(registData.user_password, 6, 20)){
				$("#check_user_password").text("패스워드값 6~20");
				$("#check_user_password").css("color","red");
				boolean = false;
			}
			if(!functionWordLength(registData.user_name, 2, 6) || 
					!functionSpecialWord(registData.user_name)){
				$("#check_user_name").text("실제 이름 입력");
				$("#check_user_name").css("color","red");
				boolean = false;
			}
			if(!functionNumberCheck(registData.user_phoneNumber)){
				$("#check_user_phonenumber").text("전화번호 형식이 옳지 않습니다.");
				$("#check_user_phonenumber").css("color","red");
				boolean = false;
			}
			if(!functionEmailCheck(registData.user_email)){
				$("#check_user_email").text("E-mail 형식이 옳지 않습니다.");
				$("#check_user_email").css("color","red");
				boolean = false;
			}
			
			return boolean;
		}
		
		function functionIdCheck(registData){
			$("#check_user_userid").css("color", "red");
			var id = registData.user_userId;
			var boolean = true;
			if(functionSpecialWord(id) && functionWordLength(id, 5, 14)){
				$.ajax({
					url : "/project/regist/userIdCheck",
					type : "POST",
					contentType : "application/json;charset=UTF-8",
					data : JSON.stringify(registData),
					dataType : "json",
					success : function(data) {
						$("#check_user_userid").css("color", "green");
						$("#check_user_userid").text("사용가능");
					},
					error : function(data) {
						$("#check_user_userid").text("중복된 ID");
						boolean = false;
					}
				});
			} else {
				$("#check_user_userid").text("ID값 5~14 / 특수문자 사용 금지");
				boolean = false;
			}
			return boolean;
		}
		
		function functionNumberCheck(registData){
			var number = registData;
			var numberCheck;
			var boolean = true;
			var i;
			
			for (i = 0 ; i < number.length ; i++){
				numberCheck =number.charAt(i).charCodeAt();
				if (numberCheck==45 || (numberCheck>=48 && numberCheck<=57)) {
					/* alert("숫자맞음"); */
				} else {
					boolean = false;
				}
			}
			
			if(functionWordLength(number, 11, 13)){
				if(number.charAt(2)=='-' && number.charAt(6)=='-'){
					if(number.length != 11){
						boolean = false;
					} 
				} else if(number.charAt(3)=='-' && number.charAt(8)=='-'){
					if(number.length != 13){
						boolean = false;
					} 
				} else {
					boolean = false;
				}
			} else {
				boolean = false;
			}
			return boolean;
		}
		
		function functionEmailCheck(registData){
			var emailCheck;
			var boolean = false;
			var i;
			if(functionWordLength(registData, 15, 25)){
				for (i = 0 ; i < registData.length ; i++){
					emailCheck =registData.charAt(i).charCodeAt();
					if (emailCheck==64) {
						boolean = true;
					}
				}	
			}
			return boolean
		}
		
		function functionWordLength(data, min, max){
			if(data.length < min || data.length > max){
				return false;
			} else {
				return true;
			}
		}
	
		function functionSpecialWord(data){
			var idCheck;
			var boolean = true;
			var i;
			for (i = 0 ; i < data.length ; i++){
				idCheck = data.charAt(i).charCodeAt();
				if ((idCheck >= 32 && idCheck <= 47) ||
						(idCheck >= 58 && idCheck <= 64) ||
						(idCheck >= 91 && idCheck <= 96) ||
						(idCheck >= 123 && idCheck <= 126)) {
						boolean = false;
				}
			}
			return boolean;
		}
		
		function functionPart(){
			var part = document.getElementsByName('user_part');
			if(part[0].checked){
				return part[0].value;
			} else {
				return part[1].value;
			}
		}
		
		function functionRegist(registData){
			$.ajax({
				url : "/project/regist/userRegist",
				type : "POST",
				contentType : "application/json;charset=UTF-8",
				data : JSON.stringify(registData),
				dataType : "json",
				success : function(data) {
					alert("회원가입 성공");
					location.href = "/project/login/loginPage";
				},
				error : function(data) {
					alert("회원가입 실패:\n"+data);
				}
			});
		}
	});
	</script>
</body>
</html>