<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
	<link rel="stylesheet" href="assets/css/korea-map-font-v1.css">
	<title>Home</title>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript">	
	

	//실행시 무조건 search();실행
// 	$(function(){
// 		search();
// 	});
	
	$(document).ready(function(){
		search();
	})
	
	function search(){
		$.ajax({
			url : '/covid', // 호출할 jsp 파일
	 	    type : 'POST',
	 	    data : '',
	 	    datatype : 'json',
	 	    success : function(data) {
	 	    	//console.log(data.modelAndView.model.res.response.body.items.item);
	 	   		var kor = data.modelAndView.model.res.response.body.items.item;
	 	   		//시도, kor[0].sidoNm
	 	   		
	 	   		//alert(sido);
	 	   		
	 	   		for(var i=0;i<kor.length;i++){
	 	   			document.write(kor[i].sidoNm+kor[i].firstTot+"<br/>");
	 	   		}
	 	   
	 	    },
	 	    error : function(xhr){
	 	    	alert(xhr.status +", "+xhr.statusText);
	 	    }
	 	});
	}
	
</script>
</head>
<body>

	<ul class="korea-map-font-v1">
  <li class="강원">a</li>
  <li class="경기">b</li>
  <li class="경남">c</li>
  <li class="경북">d</li>
  <li class="광주">e</li>
  <li class="대구">f</li>
  <li class="대전">g</li>
  <li class="부산">h</li>
  <li class="서울">i</li>
  <li class="세종">j</li>
  <li class="울산">k</li>
  <li class="인천">l</li>
  <li class="전남">m</li>
  <li class="전북">n</li>
  <li class="제주">o</li>
  <li class="충남">p</li>
  <li class="충북">q</li>
</ul>
	

</body>
</html>
