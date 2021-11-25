<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<script src="https://use.fontawesome.com/160d97aefa.js"></script>
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
<script type="text/javascript">
function pconsultdel() {
	var check;
	check = confirm("정말 삭제하시겠습니까?");
	if(check == true){
		location.href="pCosultDelete?pnum=${pdetail.pnum}";
	}else if(check == false){
		return false;
	}
	
	return true;
}
</script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
	<%@include file="header.jsp" %>
	<body>

	<article>

		<div class="container" style="margin: 5% auto;">
			<h2>1대1 상담</h2>
			<hr style="border-top: 3px solid #000000">
			<fmt:formatDate value="${pdetail.pdate }" var="pdate"
				pattern="yy-MM-dd" />

			<div class="row" style="margin: 5% auto; margin-bottom: 2%">
				<div class="col">
					<h4>제목 : ${pdetail.ptitle }</h4>
				</div>
			</div>
			<div class="row" style="margin: 0 auto;">
				<div class="col">작성자 : ${pdetail.id }</div>
			</div>
			<div class="row row-cols-auto" style="margin: 0 auto;">

				<div class="col">날짜 : ${pdate }</div>
				<div class="col">조회수 : ${pdetail.pcount }</div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col"></div>
			</div>
			<hr style="background-color: #fff; border-top: 2px dotted #bbb;">
			<div class="row" style="margin: 2% auto;">
				<div class="col-8">${pdetail.pcontent }</div>
			</div>

			<div style="margin: 3% auto; float: right;">
				<c:if test="${id == pdetail.id }">
					<button
						onclick="location.href='pConsultUpdateForm?pnum=${pdetail.pnum}'"
						class="btn btn-sm btn-primary">수정</button>
					<button onclick="return pconsultdel()"
						class="btn btn-sm btn-primary">삭제</button>
					<!-- location.href='pCosultDelete?pnum=${pdetail.pnum}' -->
				</c:if>
				<button onclick="location.href='pConsultCount?id=${id}'"
					class="btn btn-sm btn-primary">목록</button>
			</div>
			<br> <br>
			<!------------- 댓글------------- -->
		
			<c:if test="${id!=null }">
				<form action="insertReplyFormAction.do?pid=${pid }" name="frm"
					onsubmit="return chk()">
					<div class="card-body" style="width: 100%; padding-right: 0px;">
						<ul class="list-group list-group-flush"
							style="width: 100%; padding-right: 0px;">
							<li class="list-group-item">
								<div class="form-inline mb-2">
									<label for="replyId"><i class="fa fa-user-circle fa-lg"></i></label>
									&nbsp;&nbsp;${id} <label for="replyPassword" class="ml-4"><i
										class="fa fa-lock fa-lg"></i> </label> 
										<input type="password"
										class="form-control-sm" placeholder="Enter password"
										name="passwd2" style="margin-left: 8px;"> 
										<input
										type="hidden" name="passwd" value="${member.passwd }">
										<input type="hidden" name="pid" value="${pid }">
								</div> <textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" name="reply"></textarea>
								<button type="submit" class="btn btn-primary btn-sm "
									style="margin-top: 10px;">댓글입력</button>
							</li>
						</ul>
					</div>
				</form>
			</c:if>
			<!------------ 댓글 리스트 -------------->
			<c:forEach var="reply" items="${replys }">
				<c:if test="${pdetail.pnum == reply.pnum }">
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">
								<div class="form-inline mb-2">
									<fmt:formatDate value="${reply.replydate }" var="replydate" pattern="yy-MM-dd"/>
									<label for="replyId"><i class="fa fa-user-circle fa-lg"></i></label>
									&nbsp;&nbsp;${reply.id }&nbsp;&nbsp;${replydate }
									<c:if test="${id==reply.id }">&nbsp;&nbsp;&nbsp;&nbsp; 
							 	<span><a onclick="location.href='replyUpdateForm.do?id=${id }&replynum=${reply.replynum}&pnum=${pdetail.pnum}';"
											class="btn btn-sm btn-primary" style="color: white;">댓글수정</a></span>
											&nbsp;
										<form action="replyDeleteAction.do" onsubmit="return chk2()">
											<input type="hidden" name="pid" value="${pid }"> <input
												type="hidden" name="prseq" value="${list.prseq }"> <input
												type="submit" value="댓글삭제"
												class="btn btn-sm btn-primary">

										</form>
									</c:if>
								</div>
								<div class="form-control" id="exampleFormControlTextarea1">${reply.reply }</div>
							</li>
						</ul>
					</div>
				</c:if>
			</c:forEach>
			
		</div>
	</article>


	<%@include file="footer.jsp" %>
</body>
</html>