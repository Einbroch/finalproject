<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="/project/resources/css/bootstrap.min.css" rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>JSP</title>

</head>
<body>
	<form method="post">
		<a href="/project/regist/registPage">regist</a>
		<br> 
		<input type="text"
			id="user_userid" name="user_userid" placeholder="ID"><br>
		<input type="password" id="user_password" name="user_password"
			placeholder="Password">
		<button id="login" type="button">로그인</button>
	</form>

	<!-- jQuery -->
	<script src="/project/resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/project/resources/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			var loginData = {
				user_userId : $("#user_userid").val(),
				user_password : $("#user_password").val()
			};
			functionLogin(loginData);
		});
		
		function functionLogin(loginData){
			$.ajax({
				url : "/project/login/userLogin",
				type : "POST",
				contentType : "application/json;charset=UTF-8",
				data : JSON.stringify(loginData),
				dataType : "json",
				success : function(data) {
					alert(data.user_part);
					if(data.user_part=="사업자"){
						location.href="/project/owner/ownerPage";	
					} else if (data.user_part=="사용자"){
						location.href="/project/user/userPage";
					}
					
				},
				error : function(data) {
					alert("로그인 실패");
				}
			});
		}
	});
	</script>
</body>
</html>