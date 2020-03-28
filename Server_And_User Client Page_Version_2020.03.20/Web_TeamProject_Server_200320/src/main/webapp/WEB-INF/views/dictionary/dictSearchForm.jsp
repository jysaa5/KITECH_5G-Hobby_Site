<%@ page language="java" import="java.io.*,java.net.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
response.setHeader("Access-Control-Max-Age", "3600");
response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
response.setHeader("Access-Control-Allow-Origin", "*");
response.addHeader("Access-Control-Allow-Origin", "*"); 
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<!-- <meta charset="UTF-8"/> -->
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/>
<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE9'/>
<meta http-equiv='cache-control' content='no-cache'/>
<meta http-equiv='pragma' content='no-cache'/>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.ajax-cross-origin.min.js" content="text/html; charset='UTF-8'"></script>

<title>5G 우리말 사전검색</title>

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
    background: #FDF2D3;
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
   /*  white-space: nowrap; */
  }
        

</style>


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
			<br><br><img src="<%=request.getContextPath()%>/images/logo.png" class="img-fluid" alt="logo"> <br> <br>
			<div class="my-3 p-3 bg-white rounded box-shadow">
			
				<form id="searchForm" name="searchForm" method="post" action="#">
					<div class="input-group mb-3" id="searchBox">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">검색 대상</label>
							</div>
							<select class="custom-select" id="select1" name="part">
								<option value="word">어휘</option>
								<option value="exam">용례</option>
							</select>
						</div>
						<div class="input-group-prepend">
							<label class="input-group-text" for="inputGroupSelect01">정렬</label>
						</div>
						<select class="custom-select" id="select2" name="sort">	
							<option value="dict">우리말샘순</option>
							<option value="popular">많이 찾은 순</option>
							<option value="date">새로 올린 순</option>
						</select>
					</div>
					<div class="input-group mb-3">
					<input type="text" id="q1" name="q" class="form-control text-center"  autocomplete="off" placeholder="예시: 대한민국" aria-label="검색어 입력" aria-describedby="button-addon2" required>
					<div class="input-group-append">
					<input id="submit" type="submit" value="검색" class="btn btn-outline-secondary bg-secondary text-white align-center" onclick="input()">
						</div>
					</div>
				</form>
				<div id="results"></div> 
			</div>
			<div align="center">
			<div class="text-secondary">검색어는 한글, 영문, 숫자 모두 가능합니다.</div>
			</div>

		</div>
		 <div id="dict_table"> </div>
		<small class="d-block text-right mt-3 border-top border-gray">
			<br> 출처 : <a href="https://opendict.korean.go.kr/main">국립국어원, 우리말샘</a>
		</small>

	</main>

	<!-- 메인 컨텐트 끝 -->
	
	<script type="text/javascript" charset="UTF-8">
        
        var keyword;

        function input() {
            var temp = document.getElementById("q1").value;
            keyword = temp;
        }

        var part = $('#select1').val();
        var sort = $('#select2').val();
        console.log(keyword);
        </script>

        
        
        <script type="text/javascript" charset="UTF-8">
        $(document).ready(function() {
            $('#searchForm').on("submit", function(e) {
                e.preventDefault();

                $.ajax({
                    charset: "UTF-8",
                    crossOrigin: true,
                    type: "GET",
                    dataType: "xml",
                    url: "https://opendict.korean.go.kr/api/search?certkey_no=1209&key=7EDD1EDA2E0D739DA7565168C0C5262E&target_type=search&part=" + part + "&q=" + keyword + "&sort=" + sort + "&start=1&num=10",
                    //              data: {
                    //                  certkey_no: "1209",
                    //				key : "7EDD1EDA2E0D739DA7565168C0C5262E", 
                    //				target_type: "search",
                    //				part : part,
                    //				q : keyword,
                    //				sort : sort,
                    //				start: 1,
                    //				num: 10
                    //              },
                    success: function(res) {
                        console.log('success')
                        console.log(res)
                        var xmlitem = $(res).find('item')

                        var xml = $(res).find('item').find('sense');
                        var listLength = xml.length;
                        if(listLength == 0){
                        	alert('검색결과가 존재하지 않습니다.');
                        }
                        console.log(listLength)


                        var str = '';
                        str += "<h6>▶  우리말 검색 결과 </h6>"
                        str += "<table class='type10' summary='우리말샘 사전 어휘 검색입니다.'><caption>우리말샘 사전 어휘 검색</caption>";
                        str += "<thead>"
                        str += "<tr>"
                        str += "<th>대상코드</th>";
                        str += "<th>표제어</th>";
                        str += "<th>뜻풀이</th>";
                        str += "<th>품사</th>";
                        str += "<th>범주</th>";
                        str += "</tr>";
                        str += "</thead>"
                        str += "<tbody>"
                        str += "<tr>"
                        
                        var xmlword = new Array();
                        var i = 0;
                        var k = 0;
                        $(xmlitem).each(function(){
                       xmlword[i] = $(this).find('word').text();
                        console.log(xmlword)
                            i += 1;
                    
                          });

                        $(xml).each(function() {
                            var xmltargetcode = $(this).find('target_code').text();
                            console.log(xmltargetcode)
                        

                            var xmldefinition = $(this).find('definition').text();
                            console.log(xmldefinition)

                            var xmlpos = $(this).find('pos').text();
                            console.log(xmlpos)


                            var xmltype = $(this).find('type').text();
                            console.log(xmltype)

                            str += '<th>' + xmltargetcode + '</th>\n';
                            str += '<th>' + xmlword[k] + '</th>\n';
                            str += '<th>' + xmldefinition + '</th>\n';
                            str += '<th>' + xmlpos + '</th>\n';
                            str += '<th>' + xmltype + '</th>\n';
                            str += '</tr>\n';
                            k += 1;
                        });
                        str += '</tbody>'
                        $('#dict_table').html(str);
                    }

                })
            });

        });
    </script>

	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- 푸터 끝 -->

</body>

</html>

