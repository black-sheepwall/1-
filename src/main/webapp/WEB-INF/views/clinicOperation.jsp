<!-- 진료내역 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<link href="css/board.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/maicons.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"href="vendor/owl-carousel/css/owl.carousel.css">
<link rel="stylesheet" href="vendor/animate/animate.css">
<link rel="stylesheet" href="css/theme.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="js/theme.js"></script>
<style type="text/css">
@font-face {
    font-family: 'GowunBatang-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunBatang-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
	font-family: 'MaruBuri-Regular';
}
</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
   
    <%@include file="header.jsp" %>
    <jsp:include page="empOperationNav.jsp">
    	<jsp:param name="selectedPage" value="clinicOperation"></jsp:param>
    </jsp:include>
    <table style="width: 70%; margin: 0 auto; margin-bottom: 3%">
		<thead>
			<tr style="font-family: NanumBarunGothic">
				<th>번호</th>
				<th>환자명</th>
				<th>진료내역</th>
				<th>진료일</th>
				<!-- <th>진료 시간</th> -->
				<th><select><option>담당의</option></select></th>
			</tr>	
		</thead>
		<tbody>
		
		<c:forEach items="${clinicList}" var="clinicList" >
		<fmt:formatDate value="${clinicList.cdate }" var="cdate" pattern="yy-MM-dd hh:mm:ss"/>
			<tr style="font-family: NanumBarunGothic">
				<td style="width: 100px;">${clinicList.cnum}</td>
				<td>${clinicList.name }</td>
				<td style="width: 500px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color: black;">${clinicList.ccontent }</a></td>
				 <td style="width: 200px;">${cdate }</td>
				<td style="width: 118px;">${clinicList.ename }</td> 
			</tr>
		</c:forEach>
		
		</tbody>
		<td colspan="4"><button>새 진료 작성</button></td>
		
	</table>
	
    <%@include file="footer.jsp" %>
</body>
</html>