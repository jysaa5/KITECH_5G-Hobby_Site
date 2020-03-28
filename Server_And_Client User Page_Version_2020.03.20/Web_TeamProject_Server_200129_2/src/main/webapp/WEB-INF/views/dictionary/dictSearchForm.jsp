<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>5G 우리말 사전검색</title>

<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp"%>
<!-- 기본 CSS 처리 끝 -->

<style>
img {
	display: block;
	margin: 0px auto;
}

#submit {
	cursor: pointer;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- <script>
	function submitCheck() {
		if (document.f.q.value == "") {
			alert('검색어를 입력해주세요.');
			return false;
		}
		return true;
	}
</script> -->
</head>

<body>
	<!-- 해더 시작 -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<!-- 해더 끝 -->

	<!-- 메인 컨텐트 시작 -->
	<main role="main" class="container my-auto p-3">
	<br><br>
		<div class="p-3 my-3 text-white-50 text-center bg-secondary rounded box-shadow" id="nav">
			<div class="lh-100">
				<h3 class="mb-0 text-white lh-100">함께 만들고 모두 누리는 우리말 사전</h3>
			</div>
		</div>
		<div>
			<br><br><img src="<%=request.getContextPath()%>/images/logo.png" class="img-fluid" alt="logo"> <br> <br>
			<div class="my-3 p-3 bg-white rounded box-shadow">
			
				<form id="searchForm" name="searchForm" method="post" action="#">
					<div class="input-group mb-3" id="searchBox">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">검색 대상</label>
							</div>
							<select class="custom-select" id="select1" name="part">
								<option value="word">어휘</option>
								<option value="exam">용례</option>
							</select>
						</div>
						<div class="input-group-prepend">
							<label class="input-group-text" for="inputGroupSelect01">정렬</label>
						</div>
						<select class="custom-select" id="select2" name="sort">	
							<option value="dict">우리말샘순</option>
							<option value="popular">많이 찾은 순</option>
							<option value="date">새로 올린 순</option>
						</select>
					</div>
					<div class="input-group mb-3">
		<input type="text" id="q" name="q" class="form-control text-center"  autocomplete="off" placeholder="예시: 대한민국" aria-label="검색어 입력" aria-describedby="button-addon2" required>
					<div class="input-group-append">
					<input id="submit" type="submit" value="검색" class="btn btn-outline-secondary bg-secondary text-white align-center">
						</div>
					</div>
				</form>
				<div id="results"></div> 
			</div>
			<div align="center">
			<div class="text-secondary">검색어는 한글, 영문, 숫자 모두 가능합니다.</div>
			</div>
			<br><br><br><br><br><br><br>
			<br><br><br><br><br>
		</div>

		<small class="d-block text-right mt-3 border-top border-gray">
			<br> 출처 : <a href="https://opendict.korean.go.kr/main">국립국어원, 우리말샘</a>
		</small>

	</main>

	<!-- 메인 컨텐트 끝 -->
	
	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
		
	<script>

	

	$(function(){
		$("#searchForm").on("submit", function(e){
			e.preventDefault();
			//prepare the request
		 
		  var part = $("#select1").val(); 
		  var sort = $("#select2").val(); 
		  var q = $("q").val();
		 
		  $.ajax({
              url : 'http://localhost:8080/gz/dictionary/dictSearch',
              data : {                    
            	  serviceKey:'7EDD1EDA2E0D739DA7565168C0C5262E',
            	  certkey_no: 1209,
            	  target_type: search,
            	  part: part,
            	  q: q,
            	  sort: sort,
  				  start: 1,
  				  num: 10
              },
              success : function(res){
            	  console.log('success');
                  var str = '';
                  
                  $(res).find('item').each(function(){
                      
                      var word = $(this).find('word').text();
                     /*  var baseTime = $(this).find('baseTime').text();
                      var category = $(this).find('category').text();
                      var fcstDate = $(this).find('fcstDate').text();
                      var fcstTime = $(this).find('fcstTime').text();
                      var fcstValue = $(this).find('fcstValue').text();
                      var nx = $(this).find('nx').text();
                      var ny = $(this).find('ny').text(); */
                      var cname = '';
                    /*   
                      if(category=='POP'){
                          cname = '강수확률';
                      } else if(category=='PTY'){
                          cname = '강수형태';
                      } else if(category=='R06'){
                          cname = '6시간 강수량';
                      } else if(category=='REH'){
                          cname = '습도';
                      } else if(category=='S06'){
                          cname = '6시간 신적설';
                      } else if(category=='SKY'){
                          cname = '하늘상태';
                      } else if(category=='T3H'){
                          cname = '3시간 기온';
                      } else if(category=='TMN'){
                          cname = '아침 최저기온';
                      } else if(category=='TMX'){
                          cname = '낮 최고기온';
                      } else if(category=='UUU'){
                          cname = '풍속(동서성분)';
                      } else if(category=='VVV'){
                          cname = '풍속(남북성분)';
                      } else if(category=='WAV'){
                          cname = '파고';
                      } else if(category=='VEC'){
                          cname = '풍향';
                      } else if(category=='WSD'){
                          cname = '풍속';
                      }
                       */
                      
                      
                      str += '<div class="box">\n';
                      str += '<div>word : '+word+'</div>\n';
           /*            str += '<div>baseTime : '+baseTime+'</div>\n';
                      str += '<div>category : '+category+' < '+cname+' ></div>\n';
                      str += '<div>fcstDate : '+fcstDate+'</div>\n';
                      str += '<div>fcstTime : '+fcstTime+'</div>\n';
                      str += '<div>fcstValue : '+fcstValue+'</div>\n';
                      str += '<div>nx : '+nx+'</div>\n';
                      str += '<div>ny : '+ny+'</div>\n'; */
                      str += '</div>\n';
                  });
                  
                  
                  $('#results').html(str);
              }                
          });
          
      });
	
	</script>
	
	
	
	
	

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- 푸터 끝 -->

</body>





</html>