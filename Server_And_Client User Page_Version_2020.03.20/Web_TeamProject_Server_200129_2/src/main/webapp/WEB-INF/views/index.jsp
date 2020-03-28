<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
    <style>
    .ptitle{
     font-style: italic;
    }
    
    </style>
    <title>5G</title>
    
    <!-- 기본 CSS 처리 시작 -->
    <%@ include file="/WEB-INF/views/include/basic.jsp" %>
    
  <%--   <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/jumbotron/">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- mm: context 경로: 배포도중에 context 경로가 변경될수 있으므로 core태그를 사용함. -->
    <!-- /mm/css/default.css -->
    <c:url value ="/css/default.css/"/> 
    <!-- 절대경로임. 맨 앞에 슬래시 앞에 context 경로가 들어감 -->
    <link rel="stylesheet" href="<c:url value ="/css/default.css/"/>"> 


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
    
    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet"> --%>
    <!-- 기본 CSS 처리 끝-->
    
    <script>
    </script>
    
  </head>
  
  
  <body>
  <!-- 해더 시작 -->
  <%@ include file="/WEB-INF/views/include/header.jsp" %>
   <!--  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav> -->
	<!-- 해더 끝 -->
	
	
<!-- 메인 컨텐트 시작 -->
<main role="main">

  <!-- Main jumbotron for a primary marketing message or call to action -->
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">안녕하세요, 환영합니다!</h1><br>
     <div><img src= "<c:url value="/images/homeImg01.png"/>" width="10%" height="10%"/></div><br>
      <p>2020년 재테크 투자 전략, 전문가들이 추천하는 '절대 안 망하는 제1원칙'으로 5G 금융과 가계부를 알아보자!</p>
      <p><a class="btn btn-primary btn-lg" href="<c:url value="/finance/annuitySavingProductsSearch"/>" role="button">Learn more &raquo;</a></p>
    </div>
  </div>

  <div class="container">
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-md-4"  style="background-color: #BFE6FF">
       <br>
        <h2>5G 사전  <img src= "<c:url value="/images/homeImg02.png"/>" width="20%" height="20%"/></h2>
        <p class="ptitle">“NO 인터넷, OK” 5G 지지고, ‘오프라인 번역’ 출시</p>
        <p>5G가 통번역 서비스 지지고(Geegeego) ‘오프라인 번역’ 기능을 출시한다. 네트워크 환경이 원활하지 않은 해외에서도 지지고를 활용할 수 있도록 지원하는 기능이다.</p>
        <p><a class="btn btn-secondary" href="<c:url value="/dictionary/dictSearch"/>" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4" style="background-color: #AEE1E8">
      <br>
        <h2>5G 쇼핑  <img src= "<c:url value="/images/homeImg03.png"/>" width="20%" height="20%"/></h2>
        <p class="ptitle">가치있는 소비하려면? '5G 쇼핑'으로</p>
        <p>다양한 상품을 편리하고 합리적으로 구입할 수 있고 맞춤형 상품을 추천받을 수 있는 온라인 전자제품 전문 쇼핑몰. AI기술로 새롭게 달라진 IoT세계을 경험하세요.</p>
        <p><a class="btn btn-secondary" href="<c:url value="/part/listclient"/>" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4" style="background-color: #BFFFD1">
      <br>
        <h2>5G 게임  <img src= "<c:url value="/images/homeImg04.png"/>" width="20%" height="20%"/></h2>
        <p class="ptitle">새해 기대작! 2020년 신작 게임 경쟁 후끈</p>
        <p>2020년 새해에도 다양한 신작이 쏟아질 전망이다. 블리자드, 넥슨, 넷마블, 컴투스 등이 잇따라 기대작을 예고하면서 연초부터 치열한 각축전이 예상된다.</p>
        <p><a class="btn btn-secondary" href="<c:url value="/board/list"/>" role="button">View details &raquo;</a></p>
      </div>
    </div>

    <hr>

  </div> <!-- /container -->

</main>
<!-- 메인 컨텐트 끝 -->

<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- <footer class="container">
  <p>&copy; Company 2017-2019</p>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script> -->
<!-- 푸터 끝-->

</body>
</html>
