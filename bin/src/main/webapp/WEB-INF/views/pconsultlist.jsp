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
<!-- <script src="js/pconsultList.js"></script> -->
<script src="js/bootstrap.bundle.min.js"></script>
<script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="js/theme.js"></script>
<style type="text/css">

@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
 font-family: 'NanumBarunGothic';
 font-style: normal;
 font-weight: 400;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
}
body{
	font-family: 'MaruBuri-Regular';
}
</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  <title>One Health - Medical Center HTML5 Template</title>
  <script type="text/javascript">
	$(function () {
		$('#writeclick').click(function () {
			location.href="pCousultInsertForm?id=${id}";
		});
		
		$('#noclick').click(function() {
			var answer;
			answer = confirm("회원만 가능한 기능입니다. 로그인 하시겠습니까?");
			if(answer == true){
				location.href="pConsultCount";//1대1게시판 목록화면 회원가입창으로 이동되게 해야함.
			}
		});
		
		
	});
   </script>
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
  <%@include file="header.jsp" %>
	
	<div class="row" style=" margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">

            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; background-color: #5396E4"><a href="/board/101" style="color: white;">온라인상담</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="/board/102">공개상담</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="/board/103">치료후기</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="/board/103">강연&방송</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="/board/103">공지사항</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; color: black"><a href="/board/103">소식</a></div>

    </div>
	
	<table style="width: 68%; margin: 0 auto; margin-bottom: 1%">
	<%-- <div>Pconsult(1대1상담) 게시물 개수 : ${totalCnt}</div> --%>
		<thead>
			<tr style="font-family: NanumBarunGothic">
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>	
		</thead>
		<tbody>
		
		<c:forEach items="${pList}" var="plist" >
		<fmt:formatDate value="${plist.pdate }" var="pdate" pattern="yy-MM-dd"/>
			<tr style="font-family: NanumBarunGothic">
				<td style="width: 100px;">${plist.pnum}</td>
				<td>${plist.id }</td>
				<!-- 제목 -->
				<td style="width: 500px; text-align: left;">
					<a href="pCosultDetail?pnum=${plist.pnum}&id=${id}" style="color: black;">${plist.ptitle }</a>
					<!-- 비밀번호 아이콘 -->
					<div id="dropdown" style="display: inline-block;">
						<div class="input-group input-group-sm mb-3" style="width: 100%;">
             				 <span class="input-group-text" id="basic-addon1">
               			 	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
 						 	<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"></path>
							 </svg>
              		 		</span>
             				 	<input type="password" class="form-control" placeholder="Input group example" aria-label="Input group example" aria-describedby="basic-addon1">
            			</div>
            				
					
					</div>
					
				</td>
				<!-- 제목 끝 -->
				<td style="width: 180px;">${pdate }</td>
				<td style="width: 100px;">${plist.pcount }</td>
			</tr>
		</c:forEach>
		</tbody>		
	</table>
	<c:if test="${id!=null }">
		<div style="text-align: right; width: 68%; margin: 0 auto; margin-top: 2%; " >
			<button id="writeclick" type="submit"  style="font-family: NanumBarunGothic;" class="btn btn-info btn-sm">글쓰기</button>
		</div>
	</c:if>
	<c:if test="${id == null }">
		<div style="text-align: right; width: 68%; margin: 0 auto; margin-top: 2%; " >
			<button id="noclick" type="submit" style="font-family: NanumBarunGothic;" class="btn btn-info btn-sm">글쓰기</button>
		</div>
	</c:if>
	<%-- <c:if test="${pg.startPage > pg.pageBlock}">
		<a href="empList?currentPage=${pg.startPage - pg.pageBlock }">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
		<a href="empList?currentPage=${i}">[${i}]</a>
	</c:forEach>
	<c:if test="${pg.endPage > pg.totalPage }">
		<a href="empList?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
	</c:if> --%>


	<%@include file="footer.jsp" %>
	
</body>
</html>