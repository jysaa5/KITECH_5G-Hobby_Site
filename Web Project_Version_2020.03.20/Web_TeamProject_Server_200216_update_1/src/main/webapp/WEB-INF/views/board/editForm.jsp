<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- 코어태그 -->
<%@page trimDirectiveWhitespaces="true"%>
<%-- <c:if test="${pwCheck ne 2}">
	<script>
	alert('게시글 비밀번호를 입력해주세요.');
	location.href='<c:url value="/board/passwordCheck?idx=${boardEdit.idx}"/>';
</script> 

</c:if> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>BoardEditForm</title>

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
				<h6 class="mb-0 text-white lh-100">게임 추천 게시글 수정</h6>
				<small>Since 2020</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">게임 추천 게시글 수정</h6>
			<div class="media text-muted pt-3">
				
				<form method ="post" enctype="multipart/form-data">
				<input type="hidden" name ="idx" value="${boardEdit.idx}">
 				<div class="form-group" >
				 <label for="writer"> 작성자</label>
				  <input type="text" class="form-control" id="writer" name ="writer" value="${boardEdit.writer}" readonly>
				</div>
				
					<div class="form-group" >
				 <label for="title"> 제목</label>
				  <input type="text" class="form-control" id="title" name ="title" required value="${boardEdit.title}">
				</div>
			
			<div class="form-group" >
				 <label for="content">내용</label>
				 <textarea id="content" class="form-control" name ="content" rows="15" cols="10" required>${boardEdit.content}</textarea>
				</div>
				
			<div class="form-group" >
				 <label for="photo">사진</label>
				 <input type="file" id="photo" name ="photo" class="form-control" disabled>
				</div>
				
				<div class="form-group" >
				 <label for="password">비밀번호</label>
				 <input type="password" class="form-control" id="gpw" name ="gpw" readonly>
				</div>
				
				
				<input type="submit" value="수정" class="btn btn-primary">
				</form>
			</div>
		</div>
	</main>

	<!-- 메인 컨텐트 끝 -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝-->
	
</body>
</html>