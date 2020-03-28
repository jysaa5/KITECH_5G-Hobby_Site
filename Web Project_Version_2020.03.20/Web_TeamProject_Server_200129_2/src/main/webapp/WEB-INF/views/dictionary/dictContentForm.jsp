<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>우리말 사전 표제어 검색</title>

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
/* 	function submitCheck() {
		if (document.f.q.value == "") {
			alert('검색어를 입력해주세요.');
			return false;
		}
		return true;
	} */
</script>
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
			<br><br>
			 <img src="<%=request.getContextPath()%>/images/logo.png" class="img-fluid" alt="logo"><br><br>
			<div class="my-3 p-3 bg-white rounded box-shadow">
			
			<form id="searchContentForm" name="searchContentForm" method="post">
					<div class="input-group mb-3" id="searchBox">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">검색 방식</label>
							</div>
							<select class="custom-select" id="select" name="method">
								<option value="word_info">표제어 정보(표제어+의미 번호)</option>
								<option value="target_code">대상 코드(target_code)</option>
							</select>
						</div>
					<div class="input-group mb-3">
					<input type="text" id = "q" name="q" class="form-control text-center" placeholder="표제어 정보 예시: 나무001 / 대상코드 예시: 121212" aria-label="검색어 입력" aria-describedby="button-addon2" required>
					<div class="input-group-append">
					<button type="submit" id="submit" class="btn btn-outline-secondary bg-secondary text-white align-center">검색</button>
				    </div>
				    </div>
					</div>
				</form>
			
			</div>
			<div align="center">
		    <div class="text-secondary">검색어는 한글, 영문, 숫자 모두 가능합니다.</div>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br>
		</div>
		<small class="d-block text-right mt-3 border-top border-gray">
			<br> 출처 : <a href="https://opendict.korean.go.kr/main">국립국어원, 우리말샘</a>
		</small>
	</main>
	<!-- 메인 컨텐트 끝 -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- 푸터 끝 -->

</body>
</html>