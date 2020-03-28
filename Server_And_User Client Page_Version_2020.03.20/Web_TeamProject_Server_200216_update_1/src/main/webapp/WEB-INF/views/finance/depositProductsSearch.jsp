<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%response.addHeader("Access-Control-Allow-Origin", "*"); %>
<%response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko"> 
<head>
<meta charset='euc-kr'>
<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>
<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE9'>
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='pragma' content='no-cache'>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.ajax-cross-origin.min.js"></script>

<title>정기예금상품 조회 결과</title>
<style>

table.type10 {
    border-collapse: collapse;
    text-align: center;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
}
table.type10 thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: black;
    background: #E9CBD1;
    margin: 20px 10px;
}
table.type10 tbody th {
    width: 150px;
    padding: 10px;
}
table.type10 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}

table {
    width: 100%;
   border-top: 1px solid #444444; 
    border-collapse: collapse;
    margin: auto;
    text-align: center;
  }
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    white-space: nowrap;
  }
</style>

<!-- 기본 CSS 처리 시작 -->
<%@ include file="/WEB-INF/views/include/basic.jsp"%>
<!-- 기본 CSS 처리 끝 -->

</head>
<body>

<!-- 해더 시작 -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<!-- 해더 끝 -->

<!-- 메인 컨텐트 시작 -->
<main role="main" class="container">
		<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow" style ="width:200%;">
			<!-- <img class="mr-3" src="https://getbootstrap.com/assets/brand/bootstrap-outline.svg" alt="" width="48" height="48"> -->
			<div class="lh-100">
				<h6 class="mb-0 text-white lh-100">정기예금상품 조회 결과</h6>
				<small>Since 2020</small>
			</div>
		</div>
		<div class="my-3 p-3 bg-white rounded box-shadow">
			<h6>▶  정기예금상품 조회 결과</h6>
			<div>
				<!-- <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray"></p> -->
				  <div id="bank_table"> </div>
			</div>
		</div>
		<!-- <div id="bank_table"> </div> -->
	</main>
	<!-- 메인 컨텐트 끝 -->
	<script type="text/javascript" charset="euc-kr">
        $(document).ready(function() {
            $.ajax({
            	crossOrigin: true,
                charset: "euc-kr",
                type: "GET",
                dataType: "xml",
                url: "http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.xml?auth=7ca1f03b6f18f09837b676a3f0f2370c&topFinGrpNo=020000&pageNo=1",
               //url : 'http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.xml',
               //		data : {
               // 			auth : '7ca1f03b6f18f09837b676a3f0f2370c',
               //			topFinGrpNo : '020000',
               // 			pageNo : '1'
               // 		}, 
               
                success: function(res) {
                    console.log('success');
                    console.log(res);
                    
                    var xml = $(res).find('product');
                    var xmlData = $(res).find('product').find('baseinfo');
                    console.log(xmlData);
                    var xmlOption = $(res).find('product').find('options').find('option');
                    console.log(xmlOption);
                    var listLength = xmlData.length;
                    console.log(listLength);

                    var str = '';
                    str += "<table class='type10' summary='금융회사 정보표입니다.'><caption>금융회사 정보표</caption>";
                    str += "<thead>"
                    str += "<tr>"
                    str += "<th>공시제출월</th>";
                    str += "<th>금융회사 코드</th>";
                    str += "<th>금융회사명</th>";
                    str += "<th>금융상품 코드</th>";
                    str += "<th>금융상품명</th>";
                    str += "<th>가입방법</th>";
                    str += "<th>저축금리유형명</th>";
                    str += "<th>저축기간</th>";
                    str += "<th>저축금리</th>";
                    str += "</tr>";
                    str += "</thead>"
                    str += "<tbody>"
                    str += "<tr>"

                    $(xml).each(function() {
                        var dcls_month = $(this).find('baseinfo').find('dcls_month').text();
                        var fin_co_no = $(this).find('baseinfo').find('fin_co_no').text();
                        var kor_co_nm = unescape($(this).find('baseinfo').find('kor_co_nm').text());
                        var fin_prdt_cd = $(this).find('baseinfo').find('fin_prdt_cd').text();
                        var fin_prdt_nm = $(this).find('baseinfo').find('fin_prdt_nm').text();
                        var join_way = $(this).find('baseinfo').find('join_way').text();
                        var intr_rate_type_nm = $(this).find('options').find('option').find('intr_rate_type_nm').text().substring(0, 2);
                        var save_trm_Data = $(this).find('options').find('option').find('save_trm').text().substring(0, 1);
                        var save_trm = '';
                        
                        if (save_trm_Data == '6') {
                            save_trm = save_trm_Data;
                        } else if(save_trm_Data == '1') {
                            save_trm = '12';
                        }
                        
                        var intr_rate_Data = $(this).find('options').find('option').find('intr_rate').text().substring(0, 3);
                        var intr_rate = '';
                        
                        if(intr_rate_Data[2]=='.'){
                            intr_rate = $(this).find('options').find('option').find('intr_rate').text().substring(0, 2);
                        }else{
                            intr_rate = intr_rate_Data;
                        }

                        str += '<th>' + dcls_month + '</th>\n';
                        str += '<th>' + fin_co_no + '</th>\n';
                        str += '<th>' + kor_co_nm + '</th>\n';
                        str += '<th>' + fin_prdt_cd + '</th>\n';
                        str += '<th>' + fin_prdt_nm + '</th>\n';
                        str += '<th>' + join_way + '</th>\n';
                        str += '<th>' + intr_rate_type_nm + '</th>\n';
                        str += '<th>' + save_trm + '</th>\n';
                        str += '<th>' + intr_rate + '</th>\n';
                        str += '</tr>\n';
                    });
                    str += '</tbody>'
                    $('#bank_table').html(str);
                }
            });

        });
        
</script>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- 푸터 끝 -->
</body>
</html>