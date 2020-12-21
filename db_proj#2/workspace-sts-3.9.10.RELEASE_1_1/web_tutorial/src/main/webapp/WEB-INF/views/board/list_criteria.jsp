<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>::광운 영화 소개::</title>

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
              <h1><a href= "homepage" style="color:white" >::광운 영화 소개::</a></h1>
              <span class="subheading">광운대생들의 좋은 영화의 공유, 감상을 위한 게시판. ::광운 영화 소개:: </span>
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
                  [공지] :: 광운 영화 소개  :: 
              </h2>
              <h3 class="post-subtitle">
                <img src = "img/KW1.JPG" width = "500" height="350">
              </h3>
            </a>
             </div>
          <hr>
          <div class="post-preview">
            <a href="http://www.cgv.co.kr/movies/">
              <h2 class="post-title">
              실시간 실제 예매율이 궁금하다면 클릭!
              <a href = "http://www.cgv.co.kr/movies/"><img src = "img/movie1.JPG" width ="200" height = "100" align="middle"></a>
              </h2>
            </a>
                  </div>
          <hr>
          <div class="post-preview">
            <a href = "http://www.cgv.co.kr/theaters/?areacode=01&theaterCode=0131&date=20191209">
              <h2 class="post-title">
                   광운대에서 가장 가까운 영화관 - 중계 CGV
              </h2>
              <h3 class="post-subtitle">
              <a href = "http://www.cgv.co.kr/theaters/?areacode=01&theaterCode=0131&date=20191209"><img src = "img/CGV1.JPG" width ="700" height = "250" align="middle"></a>
               </h3>
            </a>
            <p class="post-meta">상영 영화들을 확인하려면 배너를 클릭하세요</p>
          </div>
          <hr>
          <div class="post-preview">
            <a href="post.html">
              <h2 class="post-title">
              <div>
                    <a href= "http://www.cgv.co.kr/">더 많은 상영중 영화정보
             <iframe width="750" height="400" src="https://www.youtube.com/watch?v=TOtPb4yXUtc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                 </div>
                 </h2>
              <h3 class="post-subtitle">
                 <a href= "http://www.cgv.co.kr/"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" width="200" height="60"></a>
              </h3>
            </a>
            <p class="post-meta
            ">영화정보는 하단의 버튼으로 확인하세요!</p>
             </div>
          <hr>
          <!-- Pager -->
          <div class="clearfix">
            <a class="btn btn-primary float-right" href="list">영화 정보 확인하러 가기&rarr;</a>
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
            <p class="copyright text-muted">Copyright &copy; 광운대학교</p>
            <p class="copyright text-muted">전효희, 김태훈</p>
            <p class="copyright text-muted">Tell-010-1234-5678</p>
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