<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
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
	 	    	console.log(data.modelAndView.model.res.response.body.items.item);
	 	   		var sido = data.modelAndView.model.res.response.body.items.item;
	 	   		
	 	   		alert(sido[0].sidoNm);
	 	   
	 	    },
	 	    error : function(xhr){
	 	    	alert(xhr.status +", "+xhr.statusText);
	 	    }
	 	});
	}
	
</script>
</head>
<body>
<%-- 	<div id="result">${res}</div> --%>
	

</body>
</html>
