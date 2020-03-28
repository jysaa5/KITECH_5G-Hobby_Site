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
    <title>연금저축상품</title>
 <style>
div.box {
border : 5px solid #DDD;
padding : 10px;
margin : 5px;
line-height: 160%;
width: 300px;
float: left;
}
</style>

<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp"%>
<!-- 기본 CSS 처리 끝 -->

<script>
		
	</script>
</head>
<body>

	<!-- 해더 시작 -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<!-- 해더 끝 -->


	<!-- 메인 컨텐트 시작 -->
	<main role="main" class="container">
		<div
			class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
			<img class="mr-3"
				src="https://getbootstrap.com/assets/brand/bootstrap-outline.svg"
				alt="" width="48" height="48">
			<div class="lh-100">
				<h6 class="mb-0 text-white lh-100">방명록</h6>
				<small>Since 2011</small>
			</div>
		</div>

		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>
			<div class="media text-muted pt-3">

				<p
					class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
					${result3}</p>
			</div>
		</div>


	</main>
	<!-- 메인 컨텐트 끝 -->
 <!-- <script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
  <script>
        $(document).ready(function(){
           
            $.ajax({
                url : 'http://localhost:8080/gz/finance/annuitySavingProductsSearch',
                data : {
                	dataType: "xml",
                	serviceName: 'annuitySavingProductsSearch',
                	auth:'7ca1f03b6f18f09837b676a3f0f2370c',
                	topFinGrpNo: '060000',
                	pageNo: '1'
    				
                },
                
                success : function(res){
                    
                    var str = '';
                    
                    $(res).find('item').each(function(){
                        
                        var fin_co_subm_day = $(this).find('fin_co_subm_day').text();
                        var baseTime = $(this).find('baseTime').text();
                        var category = $(this).find('category').text();
                        var fcstDate = $(this).find('fcstDate').text();
                        var fcstTime = $(this).find('fcstTime').text();
                        var fcstValue = $(this).find('fcstValue').text();
                        var nx = $(this).find('nx').text();
                        var ny = $(this).find('ny').text();
                        var cname = '';
                        
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
                        
                        
                        
                        str += '<div class="box">\n';
                        str += '<div>baseDate : '+baseDate+'</div>\n';
                        str += '<div>baseTime : '+baseTime+'</div>\n';
                        str += '<div>category : '+category+' < '+cname+' ></div>\n';
                        str += '<div>fcstDate : '+fcstDate+'</div>\n';
                        str += '<div>fcstTime : '+fcstTime+'</div>\n';
                        str += '<div>fcstValue : '+fcstValue+'</div>\n';
                        str += '<div>nx : '+nx+'</div>\n';
                        str += '<div>ny : '+ny+'</div>\n';
                        str += '</div>\n';
                    });
                    
                    
                    $('body').html(str);
                }                
            });
            
        });
                
 </script> -->






	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- 푸터 끝 -->









</body>
</html>
