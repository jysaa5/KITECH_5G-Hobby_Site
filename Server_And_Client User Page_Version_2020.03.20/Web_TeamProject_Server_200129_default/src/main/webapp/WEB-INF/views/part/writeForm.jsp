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
	
	<title>Index</title>
	
	
	<!-- 기본 CSS 처리 시작 -->
	<%@ include file="/WEB-INF/views/include/basic.jsp" %>	
	<!-- 기본 CSS 처리 끝 -->
	
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
          <h6 class="mb-0 text-white lh-100">부품 입력</h6>
          <small>관리자 권한</small>
        </div>
      </div>

      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">부품 입력</h6>
        
        
        <div class=" text-muted pt-3">
          <form method="post">
          
          <div class="form-group">
          	<label for="tpye">종류</label>
          	<input type="text"  class="form-control" id="type" name="type" required>
          </div>
          
          <div class="form-group">
          	<label for="title">품명</label>
          	<input type="text" class="form-control" id="title" name="title" required>          	
          </div>
          
          <div class="form-group">
          	<label for=""content"">내용</label>          	
          	<textarea id="content" class="form-control" name="content" rows="2" cols="10" required></textarea>         	          	
          </div>
          
           <div class="form-group">
          	<label for="price">가격</label>
          	<input type="number" class="form-control" id="price" name="price" required>          	
          </div>
               
          
          <input type="submit" value="작성" class="btn btn-primary">
          </form>
        </div>
      </div>

      
    </main>




	<!-- 메인 컨텐트 끝 -->





	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝 -->
	
	
	
	
	
	
	
	
	
</body>
</html>