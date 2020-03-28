<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>부품 목록</title>
	
	
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
        
        <div class="lh-100">
          <h6 class="mb-0 text-white lh-100">부품 목록</h6>
          <small>-----</small>
        </div>
      </div>

      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">부품 목록</h6>
        <%-- ${listView} --%>
        <table class="table">
        	<tr>
        		<th>no</th>
        		<th>종류</th>
        		<th>품명</th>
        		<th>성능</th>
        		<th>가격</th>
        		<th>날짜</th>
        		<th>장바구니담기</th>
        	</tr>
        	
        	<!-- 리스트 시작 -->
        	<c:forEach items="${listView.list}" var="article" >
        	<tr>
        		<td>${article.idx}</td>
        		<td>${article.type}</td>
        		<td>${article.title}</td>
        		<td>${article.content}</td>
        		<td>${article.price}</td>
        		<td><fmt:formatDate value="${article.regdate}" pattern="yyyy. MM. dd"/>
        		</td>
        		<td>
        			<a href="select?idx=${article.idx}" class="btn btn-primary">선택</a>
        		</td>
        		
          	</tr>
        	
        	</c:forEach>
        	<!-- 리스트 끝 -->
        	
        	
        </table>
				
        <div>
        	<c:forEach begin="1" end="${listView.totalPageCount}" var="i">
        	<a href="listclient?page=${i}">[${i}]</a> 
        	</c:forEach>
        </div>
      </div>

    </main>




	<!-- 메인 컨텐트 끝 -->





	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝 -->
	
	
	
	<script>
	
		function del(idx){
			
			if(confirm('삭제하시겠습니까?')) {
				location.href='delete?idx='+idx;
			}
			
		}
	
	</script>
	
	
	
	
	
</body>
</html>