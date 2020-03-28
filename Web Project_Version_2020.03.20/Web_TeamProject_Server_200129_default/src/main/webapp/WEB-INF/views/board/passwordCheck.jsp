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
	<c:if test="${pwChk eq true}">
	<script>
	alert('올바른 비밀번호 입력입니다.');
	//location.href='<c:url value="/member/login"/>';
</script>
</c:if>

<title>writeForm</title>
<style>

/* 여기 폼만의 스타일 */
input{ 

width: 1000px; 

}

.buttonTable{
 width: 30%;
 text-align: center; 
/*  border: 1px solid #333333; */
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
				<h6 class="mb-0 text-white lh-100">게임 추천하기</h6>
				<small>Since 2020</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">비밀번호가 일치합니다.<br><br> 게시글 수정 또는 삭제 하시려면, 아래 수정 버튼 또는 삭제 버튼을 눌러 주세요.</h6>
			<div class="media text-muted pt-3">
				
				<form method ="post">
				<div class="form-group" >
				<input type="hidden" name ="idx" value="${Checkidx.idx}">
				</div>
				</form>
				<table class=buttonTable><tr>
				<td>
				<a href="<c:url value ="/board/edit?idx=${pwCheck.idx}"/>" class="btn btn-primary">수정</a>
				</td>
					<td>
					<a href="<c:url value ="/board/delete?idx=${pwCheck.idx}"/>" class="btn btn-danger">삭제</a>
				</td>
				</tr>
				</table>
				
				</div>
			</div>
	</main>

	<!-- 메인 컨텐트 끝 -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝-->
	
	
</body>
</html>