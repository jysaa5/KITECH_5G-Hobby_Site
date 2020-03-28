<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- 코어태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Youtube Search Result List</title>

<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp"%>
<!-- 기본 CSS 처리 끝 -->
<script>
</script>

<style>

#idxSize{
width: 50px;
}

#titleSize1{
width:700px;

}

#titleSize2{
  width        : 500px;     /* 너비는 변경될수 있습니다. */
  text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
  white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
  overflow     : hidden;    /* 내용이 길면 감춤니다 */
  display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
}

#channelTitleSize{
  width        : 100px;     /* 너비는 변경될수 있습니다. */
  text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
  white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
  overflow     : hidden;    /* 내용이 길면 감춤니다 */
  display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
}

 table{
 width: 1000px;
/* table-layout: fixed;  */
} 
</style>

</head>
<body>

	<!-- 해더 시작 -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<!-- 해더 끝 -->

	<!-- 메인 컨텐트 시작 -->
	<main role="main" class="container">
		<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
			<div class="lh-100">
				<h6 class="mb-0 text-white lh-100">유튜브 최근 검색 결과</h6>
				<small>Since 2020</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">유튜브 최근 검색 결과</h6>
			<%-- ${listView} --%>
			<table class="table">
				<tr>
					<th>no</th>
					<th>동영상 제목</th>
					<th>채널</th>
					<th>작성 시간</th>
				</tr>

				<!-- 리스트 시작 -->
				<c:forEach items="${youtubeListView.list}" var="boardArticle">
					<tr>
						<td id="idxSize">${boardArticle.idx}</td>
						<td id = "titleSize1"><p id="titleSize2"><a href="<c:url value ="/board/youtubeSearchAgain?search=${boardArticle.search}"/>" id="SearchResult">${boardArticle.title}</a></p></td>
						<td><p id="channelTitleSize">${boardArticle.channelTitle}</p></td>
						<td><fmt:formatDate value="${boardArticle.regdate}" pattern="yyyy. MM. dd" /></td>
				
						<%-- <a href="<c:url value ="/board/edit?idx=${boardArticle.idx}"/>" class="btn btn-primary">수정</a> --%>
						<%-- <a href="<c:url value ="/board/passwordCheck?idx=${boardArticle.idx}"/>" class="btn btn-primary">수정/삭제</a> --%>
						<%-- <a href="<c:url value ="/board/passwordCheck?idx=${boardArticle.idx}"/>" class="btn btn-danger">삭제</a> --%>
						<%-- <a href="<c:url value ="/board/delete?idx=${boardArticle.idx}"/>" class="btn btn-danger">삭제</a> --%>
					
					</tr>
				</c:forEach>
				<!-- 리스트 끝-->
			</table>

			<div>
				<c:forEach begin="1" end="${youtubeListView.totalPageCount}" var="i">
					<a href="<c:url value ="/board/youtubeList?page=${i}"/>">[${i}]</a>
				</c:forEach>	
			</div>
		</div>
		<div id="results"></div> 
		<%-- <div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">게임 추천 게시글</h6>

			<c:forEach items="${listView.list}" var="boardArticle">
			
				<div class="media text-muted pt-3">
					<!--<img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded"> -->
					<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
						<div class="d-flex justify-content-between align-items-center w-100">
						
						<strong class="text-gray-dark">${boardArticle.title}</strong> 
						<a href="#">${boardArticle.writer}</a> 
						
						</div>
						<span class="d-block">${boardArticle.content}</span>
					</div>
				</div>
			</c:forEach>
		</div> --%>
	</main>
	
	<!-- 메인 컨텐트 끝 -->

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- 푸터 끝-->


</body>
</html>