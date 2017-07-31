<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="/project/resources/vendor/jquery/jquery.js"></script>	
<title>JSP</title>
</head>
<body>
<div align="center">
	<table border="1">
      <tr align="center">
         <td width="500px" colspan="2">
         <h1>숙박</h1>
         </td>
         <td width="500px" colspan="2">
         <h1>렌트</h1>
         </td>
         <td width="500px">
         <h1>레져</h1>
         </td>
      </tr>
      <tr>
         <td width="350px">
         <p id="accomlist" align="center"><img width="100%" height="100%" 
         src="https://travelblog.expedia.co.kr/wp-content/uploads/2016/06/0.jpg" 
         border="1" align="middle"></p>
         </td>
         <td width="150px">
         	평화 펜션<br>
         	방 10개<br>
         	주소 124-123<br>
         	옵션 : 풀옵션
         </td>
         <td width="350px">
         <p id="accomlist1" align="center"><img width="100%" height="100%" 
         src="http://dimg.donga.com/wps/ECONOMY/IMAGE/2013/07/19/56539096.2.jpg" 
         border="1" align="middle"></p>
         </td>
         <td width="150px">
         	평화 펜션<br>
         	방 10개<br>
         	주소 124-123<br>
         	옵션 : 풀옵션
         </td>
         <td>
         <p>레져</p>
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <a href="/project/owner/accom/accomRegistPage">숙소등록하기</a>
         </td>
         <td>
            <a>렌트 등록하기</a>
         </td>
         <td>
            <a>레져 등록하기</a>
         </td>
      </tr>
   </table>
</div>
</body>
</html>