<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%response.addHeader("Access-Control-Allow-Origin", "*"); %>
<%response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<html>
<head>
<meta charset='UTF-8'>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE9'>
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='pragma' content='no-cache'>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.ajax-cross-origin.min.js" content="text/html; charset='UTF-8'"></script>

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
							<select class="custom-select" id="select2" name="method">
								<option value="word_info">표제어 정보(표제어+의미 번호)</option>
								<option value="target_code">대상 코드(target_code)</option>
							</select>
						</div>
					<div class="input-group mb-3">
					<input type="text" id = "q2" name="q" class="form-control text-center" placeholder="표제어 정보 예시: 나무001 / 대상코드 예시: 121212" aria-label="검색어 입력" aria-describedby="button-addon2" required>
					<div class="input-group-append">
					<button type="submit" id="submit" class="btn btn-outline-secondary bg-secondary text-white align-center" onclick="input()">검색</button>
				    </div>
				    </div>
					</div>
				</form>
			
			</div>
			<div align="center">
		    <div class="text-secondary">검색어는 한글, 영문, 숫자 모두 가능합니다.</div>
			</div>
    <div id="dict_table"> </div>
    
		</div>
		<small class="d-block text-right mt-3 border-top border-gray">
			<br> 출처 : <a href="https://opendict.korean.go.kr/main">국립국어원, 우리말샘</a>
		</small>
	</main>
	<!-- 메인 컨텐트 끝 -->

<script type="application/javascript" charset="UTF-8">
        
      var keyword ='';
      var method = '';
      
      function input() {
            var temp = document.getElementById("q2").value;
            keyword = temp;
            var temp1 = document.getElementById("select2").value
            method = temp1;
        }

      
      $(document).ready(function() {
            $('#searchContentForm').on("submit", function(e) {
                e.preventDefault();
                console.log(keyword)
                console.log(method)

                $.ajax({
                    charset: "UTF-8",
                    crossOrigin: true,
                    type: "GET",
                    dataType: "xml",
                    url: "https://opendict.korean.go.kr/api/view?certkey_no=1209&key=7EDD1EDA2E0D739DA7565168C0C5262E&target_type=view&method="+method+"&q="+keyword,
                    //data: {
                    //certkey_no: "1209",
                    //key : "7EDD1EDA2E0D739DA7565168C0C5262E", 
                    //target_type: "search",
                    //part : part,
                    //q : keyword,
                    //},
                    
                    success: function(res) {
                        console.log('success')
                        console.log(res)
                        
                        var xmlitem = $(res).find('item')
                        var xmlwordInfo = $(res).find('item').find('wordInfo');
                        var xmlsenseInfo = $(res).find('item').find('senseInfo');
                        var xmlexaInfo = $(res).find('item').find('senseInfo').find('example_info');
                        var listLength = xmlwordInfo.length;
                        
                        if(listLength == 0){
                            alert('해당하는 결과가 존재하지 않습니다.');
                        }
                        
                        console.log(listLength)


                        var str = '';
                        str += "<h6>▶  우리말 사전 표제어 검색 </h6>"
                        str += "<table class='type10' summary='우리말 사전 표제어 검색입니다.'><caption>우리말 사전 표제어 검색</caption>";
                        str += "<thead>"
                        str += "<tr>"
                        str += "<th>대상코드</th>";
                        str += "<th>표제어</th>";
                        str += "<th>구성단위</th>";
                        str += "<th>고유어여부</th>";
                        str += "<th>발음</th>";
                        str += "<th>품사</th>";
                        str += "<th>범주</th>";
                        str += "<th>뜻풀이</th>";
                        str += "<th>용례</th>"
                        str += "</tr>";
                        str += "</thead>"
                        str += "<tbody>"
                        str += "<tr>"
                        
                        //대상코드
                        var xmltagetcode = '';
                        xmltargetcode = $(res).find('item').find('target_code').text();
                        console.log(xmltargetcode)
                        console.log($(res).find('item').find('target_code'))
                 
                        
                        //품사
                        var xmlpos = new Array();
                        //범주
                        var xmltype = new Array();
                        //뜻풀이
                        var xmldef = '';
                        var k = 0;
                        
                        $(xmlsenseInfo).each(function(){
                            xmlpos[k] = $(this).find('pos').text();
                            xmltype[k] = $(this).find('type').text().substring(0,3);
                            k += 1;
                            console.log(xmlpos)
                            console.log(xmltype)
                        });
                        
                        xmldefData= $(res).find('item').find('senseInfo').find('definition').html();
                        var numsc1 = xmldefData.indexOf(']');
                        console.log(xmldefData)
                        xmldef = xmldefData.substring(11, numsc1);
                        console.log(xmldef)
                        
                        //용례
                        var xmlexample = new Array();
                        var xmlexampleData = '';
                        var l = 0;
                        var numsc3  = '';
                        $(xmlexaInfo).each(function(){
                            xmlexampleData= $(this).find('example').html();
                            console.log(xmlexampleData)
                            numsc3 = xmlexampleData.indexOf(']');
                            xmlexample[l] = xmlexampleData.substring(11, numsc3);
                            l += 1;
                        });
                        
                        
                        var m = 0;
                        

                        $(xmlwordInfo).each(function() {
                            var xmlwordData = $(this).find("word").html();
                            console.log(xmlwordData)
                            console.log(xmlwordData.indexOf(']'))
                            var xmlword ='';
                            var numsc2 =xmlwordData.indexOf(']');
                            
                            xmlword = xmlwordData.substring(11,numsc2);
            
                           
                            console.log(xmlword)
                            
                            var xmlwordUnit = $(this).find('word_unit').text();
                            console.log(xmlwordUnit)
                            
                            var xmlwordType = $(this).find('word_type').text();
                            console.log(xmlwordType)
                            
                            var xmlproun = $(this).find('pronunciation_info').find('pronunciation').text();
                            console.log(xmlproun)
                            
                            
                        

                            str += '<th>' + xmltargetcode + '</th>\n';
                            str += '<th>' + xmlword + '</th>\n';
                            str += '<th>' + xmlwordUnit + '</th>\n';
                            str += '<th>' + xmlwordType + '</th>\n';
                            str += '<th>' + xmlproun[m] + '</th>\n';
                            str += '<th>' + xmlpos[m] + '</th>\n';
                            str += '<th>' + xmltype[m] + '</th>\n';
                            str += '<th>' + xmldef + '</th>\n';
                            str += '<th>' + xmlexample[m] + '</th>\n';
                            str += '</tr>\n';
                            m += 1;
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