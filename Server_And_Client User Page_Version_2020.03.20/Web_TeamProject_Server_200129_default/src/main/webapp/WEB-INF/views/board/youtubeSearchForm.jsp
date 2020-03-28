<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- 코어태그 -->
<%@page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>youtubeSearch</title>

<style>
#youtube{
color: red;
}

#formst{ 
width: 200%;
}
#youtubeicon{
text-align: center;
}

</style>

<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp"%>
<!-- 기본 CSS 처리 끝-->

</head>
<body>

	<!-- 해더 시작 -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<!-- 해더 끝 -->

	<!-- 메인 컨텐트 시작 -->
	<main role="main" class="container">
		<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
			<!-- <img class="mr-3" src="https://getbootstrap.com/assets/brand/bootstrap-outline.svg" alt="" width="48" height="48"> -->
			<div class="lh-100">
				<h6 class="mb-0 text-white lh-100">게임 추천 글 작성 하기</h6>
				<small>Since 2020</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
		<div id="youtubeicon"><img src= "<c:url value="/images/youtube02.gif"/>" width="30%" height="30%" /></div>
			<!-- <h4 class="border-bottom border-gray pb-2 mb-0" id="youtube">YouTube</h4> -->
			<div class="media text-muted pt-3">
				<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">  </p>
			</div>
			<br>
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					
					<form action="#" id="formst" method="post">
					
						<p>
							<input type="text" id="search" name="search" placeholder="게임 트레일러를 검색해보세요." autocomplete="off" class="form-control" value="${searchAgain}" required/>
						</p>
						<p>
							<input type="submit" value="Search" class="btn btn-danger form-control">
						</p>
					</form>
					<div id="results"></div> 
				</div>
			
			</div>
		
		</div>
	
	</main>

	<!-- 메인 컨텐트 끝 -->
	
	
	 <script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<!--<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script> -->
	
	<script>
	function tplawesome(e,t){
		res=e;
		
		for(var n=0;n<t.length;n++){
			res=res.replace(/\{\{(.*?)\}\}/g, function(e,r){
				return t[n][r]
				}
			)}
		return res}

	
	
	
	$(function(){
		$("form").on("submit", function(e){
			e.preventDefault();
			//prepare the request
			
			  var q1 = $("#search").val(); 
			
			var request = gapi.client.youtube.search.list({
				part: "snippet",
				type: "video",
				/* q: encodeURIComponent($("#search").val()).replace(/%20/g,'+'), */
				q: q1,
				maxResults: 3,
				order: "viewCount",
				publishedAfter: "1970-01-01T00:00:00Z",
				regionCode:"KR"
			});
			//execute the request
			
			request.execute(function(response){
				console.log(response)
				var results = response.result;
				$("#results").html("");
				$.each(results.items,function(index, item) {
					console.log(item);
					/* $("#results").append(item.id.videoId+""+item.snippet.title+"<br>"); */
					$.get("<c:url value="/resources/item.html"/>",function(data){
						$("#results").append(tplawesome(data, [{"title":item.snippet.title, "videoid":item.id.videoId}]));
		
						$.ajax({
							
							url: 'youtubeSearch',
							type: 'POST',
							data:{
								title: item.snippet.title,
								channelTitle: item.snippet.channelTitle,
								search: q1
							},
							success: function(){
								console.log("success");
							}
							
						});
						
					});
				});
					resetVideoHeight(); 
				
				
			});
			
		});
		
		 $(window).on("resize", resetVideoHeight); 
		
	});
	
	
		function resetVideoHeight(){
			
			$(".video").css("height", $("#results").width()*9/16);

		} 
	
	
	
	
	function init(){
		gapi.client.setApiKey("AIzaSyD18MC_Xd5-7JjfyufuEX-8SP63WQZzYco");
		gapi.client.load("youtube", "v3", function(){
			//youtube api is ready
		});
	}
	
	</script>
	
	<script src="https://apis.google.com/js/client.js?onload=init"> </script>
	
	
	<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%> 
	<!-- 푸터 끝-->

</body>
</html>