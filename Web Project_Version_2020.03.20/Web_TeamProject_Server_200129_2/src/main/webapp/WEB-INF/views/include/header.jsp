<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function btn(){
	alert('준비중입니다.');
}
</script>
    <style>
    .nav-link{
    margin: 0 30px
    }
    
    .navbar-brand{
    font-size: 2em;
    font-style: italic;
    padding: 0 10px;
    }
    </style>
	 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	 <img src= "<c:url value="/images/homeIcon.png"/>" width="2%" height="2%"/>
  <a class="navbar-brand" href="<c:url value="/"/>">5G</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/"/>">홈<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">사전</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
        <a class="dropdown-item" href="<c:url value="/dictionary/dictSearch"/>">우리말 사전 검색</a>
          <a class="dropdown-item" href="<c:url value="/dictionary/dictContent"/>">사전 내용 보기</a>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="#" onclick="javascript:btn()">가계부</a>
      </li>
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">금융</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="<c:url value="/finance/savingProductsSearch"/>">적금상품</a>
          <a class="dropdown-item" href="<c:url value="/finance/depositProductsSearch"/>">예금상품</a>
          <a class="dropdown-item" href="<c:url value="/finance/annuitySavingProductsSearch"/>">연금저축상품</a>
          <a class="dropdown-item" href="<c:url value="/finance/rentHouseLoanProductsSearch"/>">주택담보대출</a>
          <a class="dropdown-item" href="<c:url value="/finance/mortgageLoanProductsSearch"/>">전세자금대출</a>
          <a class="dropdown-item" href="<c:url value="/finance/creditLoanProductsSearch"/>">개인신용대출</a>
        </div>
      </li>
      
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">쇼핑</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="<c:url value="/part/listclient"/>">부품 목록</a>
          <a class="dropdown-item" href="<c:url value="/part/selectlist"/>">내 장바구니</a>
          <a class="dropdown-item" href="<c:url value="/part/write"/>">관리자메뉴: 부품 입력</a>
          <a class="dropdown-item" href="<c:url value="/part/list"/>">관리자메뉴: 부품 목록</a>
        </div>
      </li>
      
     <!--  <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li> -->
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="<c:url value="/board/write"/>">게임 추천 글 작성하기</a>
          <a class="dropdown-item" href="<c:url value="/board/list"/>">게임 추천 글 리스트</a>
          <a class="dropdown-item" href="<c:url value="/board/youtubeSearch"/>">게임 트레일러</a>
          <a class="dropdown-item" href="<c:url value="/board/youtubeList"/>">유튜브 최근 기록</a>
        </div>
      </li>
    </ul>
   <!--  <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
    </form> -->
  </div>
</nav>