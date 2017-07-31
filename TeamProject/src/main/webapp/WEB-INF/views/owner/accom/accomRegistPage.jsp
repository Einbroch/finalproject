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
<h1>숙박페이지</h1>
 	<form method="post">
		<label>호텔<input type="radio" value="hotel" id="accom_part1" name="accom_part" checked="checked"></label> 
		<label>펜션<input type="radio" value="pension" id="accom_part2" name="accom_part"></label>
		<label>게스트하우스<input type="radio" value="guesthouse" id="accom_part3" name="accom_part"></label>
		<label>모텔<input type="radio" value="motel" id="accom_part4" name="accom_part"></label>
		<label>기타<input type="radio" value="etc" id="accom_part5" name="accom_part"></label>
		<br>
		<label>숙소 이름 :
		<input type="text" id="accom_name" 
			name="accom_name" placeholder="Accommodations Name"></label>
		<p id="check_accom_name"></p>
		
		<label>숙소 전화번호 :
		<input type="tel" id="accom_number"
			name="accom_number" placeholder="Tel ex)010-1234-5678">
		</label>
		<p id="check_accom_number"></p>
		
		<label>숙소 홈페이지 :
		<input type="text" id="accom_link"
			name="accom_link" value="http://">
		</label>
		<p id="check_accom_link"></p>
		
		<label>숙소 옵션 :</label><br>
		<textarea rows="14" cols="50" id="accom_option"
			name="accom_option" placeholder="없으면 없음 기입"></textarea>
		<p id="check_accom_option"></p>
		
		<label>숙소 주소 : 
		<input type="text" id="accom_addr"
			name="accom_addr" placeholder="Address">
		</label>
		<p id="check_accom_addr"></p>
		
		<button id="accom_regist" name="accom_regist" type="button">등록</button>
	</form>
	
	<!-- jQuery -->
	<script src="/project/resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/project/resources/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		var sessionId;
		$("#accom_regist").click(function(){
			if(functionInputCheck(functionAccomLoadData(0))){
				functionRegist();
			} else {
				alert("문제를 해결하고 등록하세요 씨발");
			}
		});
		
		function functionInputCheck(AccomLoadData){
			$("#check_accom_name").text("");
			$("#check_accom_number").text("");
			$("#check_accom_link").text("");
			$("#check_accom_option").text("");
			$("#check_accom_addr").text("");
			
			var boolean = true;
			
			if(!functionWordLength(AccomLoadData.accom_name, 1, 20)){
				$("#check_accom_name").text("숙소 이름 값은 1~20");
				$("#check_accom_name").css("color","red");
				boolean = false;
			}
			if(!functionNumberCheck(AccomLoadData.accom_number)){
				$("#check_accom_number").text("전화번호 형식이 옳지 않습니다.");
				$("#check_accom_number").css("color","red");
				boolean = false;
			}
			if(!functionWordLength(AccomLoadData.accom_link, 7, 30)){
				$("#check_accom_link").text("홈페이지가 없다면 http://로 적용합니다.");
				$("#accom_link").val("http://");
				$("#check_accom_link").css("color","red");
				boolean = false;
			}
			if(!functionWordLength(AccomLoadData.accom_option, 2, 500)){
				$("#check_accom_option").text("옵션은 2~500으로 입력하세요. \n없으면 없음으로 입력하세요");
				$("#check_accom_option").css("color","red");
				boolean = false;
			}
			if(!functionWordLength(AccomLoadData.accom_addr, 10, 30)){
				$("#check_accom_addr").text("주소은 10~30으로 입력하세요. \n없으면 없음으로 입력하세요");
				$("#check_accom_addr").css("color","red");
				boolean = false;
			}
			
			return boolean;
		}
		
		function functionRegist(){
			var AccomLoadData;
			functionGetSession();
			setTimeout(function() {
				AccomLoadData = functionAccomLoadData(sessionId);
				$.ajax({
					url : "/project/owner/accom/accomRegist",
					type : "POST",
					contentType : "application/json;charset=UTF-8",
					data : JSON.stringify(AccomLoadData),
					dataType : "json",
					success : function(data) {
						alert("등록완료");
						location.href="/project/owner/ownerPage";
					},
					error:function(data){
						alert("등록 실패");
					}
				});
			}, 1000);
		}
		
		function functionAccomLoadData(id){
			var part = functionPart();
			var accomRegistData = {
				accom_user_id : id,
				accom_part : part,
				accom_name : $("#accom_name").val(),
				accom_number : $("#accom_number").val(),
				accom_link : $("#accom_link").val(),
				accom_option : $("#accom_option").val(),
				accom_addr : $("#accom_addr").val()
			}
			return accomRegistData;
		}
		
		function functionGetSession(){
			var sessionData = {
					user_id : 0
			};
			$.ajax({
				url : "/project/session/getSession",
				type : "POST",
				contentType : "application/json;charset=UTF-8",
				data : JSON.stringify(sessionData),
				dataType : "json",
				success : function(data) {
					sessionId = data.user_id; 
				}
			});
		}
		
		function functionPart(){
			var part = document.getElementsByName("accom_part");
			if(part[0].checked){
				return part[0].value;
			} else if(part[1].checked){
				return part[1].value;
			} else if(part[2].checked){
				return part[2].value;
			} else if(part[3].checked){
				return part[3].value;
			} else if(part[4].checked){
				return part[4].value;
			}
		}
		
		function functionWordLength(data, min, max){
			if(data.length < min || data.length > max){
				return false;
			} else {
				return true;
			}
		}
	
		function functionNumberCheck(number){
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
	});	
	</script>
</body>
</html>