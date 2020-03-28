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

<title>PasswordCheckForm</title>
<style>

/* 여기 폼만의 스타일 */
input{ 

width: 1000px; 

}

</style>


<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp" %>
<!-- 기본 CSS 처리 끝-->

<script>
</script>

</head>
<body>

	<!-- 해더 시작 -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<!-- 해더 끝 -->


	<!-- 메인 컨텐트 시작 -->
	<main role="main" class="container">
		<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
			<!-- <img class="mr-3" src="https://getbootstrap.com/assets/brand/bootstrap-outline.svg" alt="" width="48" height="48"> -->
			<div class="lh-100">
				<h6 class="mb-0 text-white lh-100">게시글을 수정하거나 삭제하려면 비밀번호를 입력해주세요.</h6>
				<small>Since 2020</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">게시글을 수정하거나 삭제하려면 비밀번호를 입력해주세요.</h6>
			<div class="media text-muted pt-3">
				
				<form method ="post">
				<div class="form-group" >
				<input type="hidden" name ="idx" value="${Checkidx.idx}" id= "idx">
				 <label for="password">비밀번호</label>
				 <input type="password" class="form-control" id="gpw" name ="gpw" required>
				</div>
	
				<input type="submit" value="확인" class="btn btn-primary">
			
				</form>
				</div>
			</div>
	</main>
	
	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>

	
	<c:if test="${pwChk ne true}">
	<script>
	alert('수정 또는 삭제를 하시려면 비밀번호를 올바르게 입력해 주세요.');
	//location.href='<c:url value="/member/login"/>';
</script>
</c:if>
<script>
	
/* 	
	$(function(){
	
	$("form").on("submit", function(e){
		e.preventDefault();
		
		var gpw = $("#gpw").val(); 
		var idx = $("#idx").val();
		
	$.ajax({
		
		url: 'pwChk',
		type: 'post',
		data:{
			gpw: gpw
		},
		success: function(data){
			//console.log("success");
			
			if(data){
				alert('비밀번호가 맞습니다.');
				
			}else {
				alert('비밀번호가 맞지 않습니다.111');
				//location.href = '/board/passwordCheck?idx='idx;
			}
			
		}
		
	});
	
	return false;
	
	});
	
	}); */
	
	/* $(function(){
		$("form").on("submit", function(e){
			e.preventDefault();
			${pwCheck} != 2;
			alert('비밀번호를 다시 입려해주세요.');
			
		});
		
	}); */
	
	
	</script>

	<!-- 메인 컨텐트 끝 -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝-->
	
	
</body>
</html>