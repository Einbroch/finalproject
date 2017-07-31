<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Qqu</title>

<!-- Bootstrap Core CSS -->
<link href="/project/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/project/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link href="/project/resources/css/grayscale.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- �׺���̼� �� -->
	<!-- <nav class="navbar navbar-custom navbar-fixed-top" role="navigation"> -->
		<div class="container">
			<!--bootstrap.css�� ���� ������ ������ ���� ���� 768������ �������� �ٿ�����.-->
			<!-- <div class="navbar-header">
				bootstrap.css ������ ������ 768���ϸ� �ٿ���
				<a class="navbar-brand page-scroll"> �ּҴ� body ���̵��� page-top�� ��ũ
					<span class="light">��</span> grayscale.css �� ���� ��Ʈ ũ�� ����
				</a>
			</div> -->

			<!-- ������ �� �ִ� �޴� â-->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<!-- bootstrap.css�� �ִ� hidden Ŭ����-->
					<li><a href="" data-toggle="modal" data-target="#myModal">�α���</a> <!----></li>
					<li><a href="" data-toggle="modal" data-target="#myBook">�� å��</a></li>
					<li><a href="" data-toggle="modal" data-target="#myExperience">���� �ı�</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	<!-- </nav> -->

	<!-- Intro Header -->
	<header class="intro">
		<div class="intro-body">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="brand-heading"></h1>
						<p class="intro-text">���� ���� ����</p>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container1 text-center">
		<p align="center"><font color=white>Copyright &copy; Programing and Design by Qqu</font></p>
	</div>

	
	<!-- �α��� -->
	<div class="modal fade bs-example-modal-sm" tabindex="-1" id="myModal" role="dialog" aria-labelledby="mySmallModalLabel">
		<!-- <div class="modal modal-center fade" id="mySmallCenterModal"
			tabindex="-1" role="dialog" aria-labelledby="mySmallCenterModalLabel"> -->
			<div class="modal-dialog modal-sm" role="document">
			<!-- <div class="modal-dialog modal-sm modal-center" role="document"> -->
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">�α���</h4>
					</div>
					<div class="modal-body" align="center">
						<form action="" method="post">
							<input type="text" id="user_userid" name="user_userid"
								placeholder="ID"><br> <input type="password"
								id="user_password" name="user_password" placeholder="Password">
						</form>
					</div>
					<div class="modal-footer" align="center">
						<button type="button" id="login" class="btn btn-default">Login</button>
						<button type="button" id="regist" class="btn btn-success">Regist</button>
					</div>
				</div>
			</div>
		</div>

		<!-- �� å�� -->
		<div class="modal fade" id="myBook" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">�� å��</h4>
					</div>
					<div class="modal-body">
						<form action="" method="post">
							<p>�� å��</p>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- ���� �ı� -->
		<div class="modal fade" id="myExperience" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">���� �ı�</h4>
					</div>
					<div class="modal-body">
						<form action="" method="post">
							<p>���� �ı�</p>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>


		<!-- jQuery -->
		<script src="/project/resources/vendor/jquery/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="/project/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

		<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
		<script type="text/javascript"
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

		<!-- Theme JavaScript -->
		<script src="/project/resources/js/grayscale.min.js"></script>

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
					if(data.user_part=="�����"){
						location.href="/project/owner/ownerPage";	
					} else if (data.user_part=="�����"){
						location.href="/project/user/userPage";
					}
					
				},
				error : function(data) {
					alert("�α��� ����");
				}
			});
		}
	});
	</script>
</body>

</html>
