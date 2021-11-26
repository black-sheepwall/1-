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
  
  <title>One Health - Medical Center HTML5 Template</title>
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
   
    <%@include file="header.jsp" %>
    

  
   <!-- 정지훈 / 1대1 상담 -->
  <div class="page-hero bg-image" style="background-image: url(img/main_vimg01.png);">
    <div class="hero-section">
      <div class="container text-center wow zoomIn" style="font-family: GowunBatang-Regular">
        <h3 class="display-5" >아픔과 비밀을 공유하는 </h3>
        <div class="display-4" >마음의 주치의가 되어드리겠습니다.</div>
        
        <a href="pConsultCount?id=${id }" class="btn btn-primary" style="margin-top: 30px; color: white; background-color: black">진료예약</a>
      </div>
    </div>
  </div>


  <div class="bg-light">
    <div class="page-section py-3 mt-md-n5 custom-index" style="align-content: center;">
      <div class="container">
        <div class="row" style="margin-left: 57px;">
          <div class="col-sm">
            <div class="card-service wow fadeInUp">
              <div class="circle-shape bg-secondary text-white">
                <span class="mai-chatbubbles-outline"></span>
              </div>
              <p>온라인 상담</p>
            </div>
          </div>
          <div class="col-sm">
            <div class="card-service wow fadeInUp">
              <div class="circle-shape bg-primary text-white">
                <span class="mai-shield-checkmark"></span>
              </div>
              <p>치료후기</p>
            </div>
          </div>
          <div class="col-sm">
            <div class="card-service wow fadeInUp">
              <div class="circle-shape bg-accent text-white">
                <span class="mai-basket"></span>
              </div>
              <p>한방치료제</p>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .page-section -->
    
    <!-- 공지사항(한의원이야기) -->
	<div class="page-section bg-light">
    <div class="container">
      <h1 class="text-center wow fadeInUp">한의원 이야기</h1>
      <div class="row mt-5">
        <div class="col-lg-4 py-2 wow zoomIn">
          <div class="card-blog">
            <div class="header">
              <div class="post-category">
                <a href="#">Covid19</a>
              </div>
              <a href="blog-details.html" class="post-thumb">
                <img src="img/blog/blog_1.jpg" alt="">
              </a>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="blog-details.html">양금희 선생님 SCI 저널 논문 게재</a></h5>
              <div class="site-info">
                <div class="avatar mr-2">
                 
                  <span>관리자</span>
                </div>
                <span class="mai-time"></span> 21-09-12
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 py-2 wow zoomIn">
          <div class="card-blog">
            <div class="header">
              <div class="post-category">
                <a href="#">Covid19</a>
              </div>
              <a href="blog-details.html" class="post-thumb">
                <img src="img/blog/blog_2.jpg" alt="">
              </a>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="blog-details.html"> 2021년 10월 부터 진료시간이 변경됩니다. 목요일 휴진. 화요일만 9시까지 야간진료 </a></h5>
              <div class="site-info">
                <div class="avatar mr-2">
                 
                  <span>관리자</span>
                </div>
                <span class="mai-time"></span> 21-10-18
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 py-2 wow zoomIn">
          <div class="card-blog">
            <div class="header">
              <div class="post-category">
                <a href="#">Covid19</a>
              </div>
              <a href="blog-details.html" class="post-thumb">
                <img src="img/blog/blog_3.jpg" alt="">
              </a>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="blog-details.html">안녕하세요.2021년 한의원 추석 연휴 휴진 안내해드립니다^^</a></h5>
              <div class="site-info">
                <div class="avatar mr-2">
                
                  <span>관리자</span>
                </div>
                <span class="mai-time"></span> 21-11-01
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 text-center mt-4 wow zoomIn">
          <a href="blog.html" class="btn btn-primary">더보기</a>
        </div>

      </div>
    </div>
  </div> 
  <!-- end of 공지사항 -->
   
  </div> <!-- .bg-light -->

  <div class="page-section">
    <div class="container">
      <h2 class="text-center mb-5 wow fadeInUp">강연&방송</h2>

      <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
        <div class="item">
          <div class="card-doctor">
            <div class="header">
              <img src="img/doctors/doctor_1.jpg" alt="">
            </div>
            <div class="body">
              <p class="text-xl mb-0">강연방송1</p>
              <span class="text-sm text-grey">조회수 : 1</span>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="card-doctor">
            <div class="header">
              <img src="img/doctors/doctor_2.jpg" alt="">
            </div>
            <div class="body">
              <p class="text-xl mb-0">강연방송2</p>
              <span class="text-sm text-grey">조회수 2</span>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="card-doctor">
            <div class="header">
              <img src="img/doctors/doctor_3.jpg" alt="">
            </div>
            <div class="body">
              <p class="text-xl mb-0">강연방송3</p>
              <span class="text-sm text-grey">조회수3</span>
            </div>
              
          </div>
        </div>
        <div class="item">
          <div class="card-doctor">
            <div class="header">
              <img src="img/doctors/doctor_3.jpg" alt="">
             
            </div>
            <div class="body">
              <p class="text-xl mb-0">강연방송3</p>
              <span class="text-sm text-grey">조회수3</span>
            </div>
              
          </div>
        </div>
        
      </div>
    </div>
  </div>

  
 <%@include file="footer.jsp" %>
 
 


  
</body>
</html>