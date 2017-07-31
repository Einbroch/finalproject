<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<button type="button" id="login" name="login">login</button>
	
	<!-- jQuery -->
	<script src="/project/resources/js/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			location.href="/project/login/loginPage";
		});
	});
	</script>	
</body>
</html>