
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
<title>침 그리고 찌르다.</title>
	<c:set var="varSessionId" value="${sessionId }" scope="session" />

	<nav class="navbar navbar-expand-lg navbar-light shadow-sm">
		<div class="container">
			<a class="navbar-brand" href="#"><span>침, 그리고 찌르다</span></a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupport" aria-controls="navbarSupport"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>



			<div class="collapse navbar-collapse" id="navbarSupport">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index.html">병원소개</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="about.html">자가진단</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="doctors.html">치료후기</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="blog.html">온라인상담</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.html">강연&방송</a>


					</li>
					<c:choose>
					<c:when test="${varSessionId=='admin'}">
                	varSessionId = ${varSessionId} 
                	 <li class="nav-item"><a
								class="btn btn-primary ml-lg-3"
								style="background-color: #5F5F5F" href="empOperation">관리자</a></li>
						</c:when>
						<c:when test="${empty varSessionId }">
							<li class="nav-item">varSessionId = ${varSessionId} <a
								class="btn btn-primary ml-lg-3"
								style="background-color: #5F5F5F" href="#">로그인 / 회원가입</a>

							</li>
						</c:when>

						<c:when test="${!empty varSessionId}">
                	varSessionId = ${varSessionId} 
                	 <li class="nav-item"><a
								class="btn btn-primary ml-lg-3"
								style="background-color: #5F5F5F" href="#">로그아웃</a></li>
						</c:when>
						
					</c:choose>



				</ul>
			</div>
			<!-- .navbar-collapse -->
		</div>
		<!-- .container -->
	</nav>
</header>
