<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>::광운 중고 나라::</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
      
        <a href="http://www.naver.com" class="link_naver">
        <img src="https://ssl.pstatic.net/static/cafe/icon_naver.png" width="56" height="10" alt="NAVER"></a>
       
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="homepage">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1><a href= "homepage">::광운 중고 나라::</a></h1>
              <span class="subheading">어디보다 클린한 중고거래! 광운 중고 나라에서 ^-^~</span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
                  [공지] 광운 중고 나라 이용 규칙 : 
              </h2>
              <h3 class="post-subtitle">
                <img src = "img/rule.JPG" width = "500" height="350">
              </h3>
            </a>
             </div>
          <hr>
          <div class="post-preview">
            <a href="http://weather.naver.com/">
              <h2 class="post-title">
              서울시 노원구 월계동 현재 날씨
              <a href = "http://weather.naver.com/"><img src = "img/weather.JPG" width ="300" height = "100" align="middle"></a>
              </h2>
            </a>
                  </div>
          <hr>
          <div class="post-preview">
            <a href="list">
              <h2 class="post-title">
                   오늘의 추천! 오늘의 특가!
              </h2>
              <h3 class="post-subtitle">
               <img src = "img/special.JPG" width="700" height="150">
               </h3>
            </a>
            <p class="post-meta">거래를 원하면 배너를 클릭!</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
              <div>
                    <a href= "http://police.go.kr/main.html">사이버 범죄 예방 영상
             <iframe width="750" height="400" src="https://www.youtube.com/embed/gFdj1YtFvAs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                 </div>
                 </h2>
              <h3 class="post-subtitle">
                 <a href= "http://police.go.kr/main.html"><img src="img/police.JPG" width="750" height="80"></a>
              </h3>
            </a>
            <p class="post-meta
            ">사이버 범죄 신고 전국 국번 없이 112</p>
             </div>
          <hr>
          <!-- Pager -->
          <div class="clearfix">
            <a class="btn btn-primary float-right" href="list">거래시작하기&rarr;</a>
          </div>
        </div>
      </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <ul class="list-inline text-center">
              <li class="list-inline-item">
                <a href="http://fb.com">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="http://google.com">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-google fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; 광운대 공공기숙사 빛솔재 A동 441호</p>
            <p class="copyright text-muted">정용훈, 홍진혁, 오윤제</p>
            <p class="copyright text-muted">Tell-010-4133-1927~9</p>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
   <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>

  </body>

</html>