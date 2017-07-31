<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<!-- Bootstrap Core CSS -->
<link href="/project/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/project/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<!-- <link href="/project/resources/css/grayscale.min.css" rel="stylesheet"> -->

<title>JSP</title>
</head>
<body>

	<table>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	
	</table>




		<!-- jQuery -->
		<script src="/project/resources/vendor/jquery/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="/project/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

		<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
		<!-- <script type="text/javascript"
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script> -->

		<!-- Theme JavaScript -->
		<!-- <script src="/project/resources/js/grayscale.min.js"></script> -->

		<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			var loginData = {
				user_userId : $("#user_userid").val(),
				user_password : $("#user_password").val()
			};
			functionLogin(loginData);
		});
		
		$("#regist").click(function(){
			location.href="/project/regist/registPage";
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