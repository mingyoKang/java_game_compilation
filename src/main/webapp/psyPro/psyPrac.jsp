<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script>
	function nextPage(){
		
		//alert("Are you Ready!!");
		window.location.href = "nextPage.jsp";
	};
</script>

</head>
<body>

<h1 style = "text-align:center; font-family:cursive; font-size:60px;">Would you rather?</h1>
<div style = "text-align:center;">
	<img src = "astro-mona (2).webp" width = "500px" height = "500px">
</div>

<div style = "margin-top:10px; text-align:center;">
	<button onclick = "nextPage()"style = "width: 300px; height:100px; border-radius:100px; font-size:40px; font-weight:bold;">START!</button>	
</div>

</body>
</html>