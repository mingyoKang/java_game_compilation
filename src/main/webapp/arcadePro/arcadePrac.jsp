<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
var xPos = 0;
var yPos = 0;


document.addEventListener("keydown", function(){
    console.log(event.keyCode);
    // keyboard code
    // up: 38, down: 40, right:39, left:37, space_bar:32

    var pacMan = document.getElementById("pacMan");
    

    if(event.keyCode == 39){ // right
        xPos += 100;
        pacMan.style.transform = "translate("+xPos+"px, "+yPos+"px)";
        pacMan.style.transition = "1s";
        
    }else if(event.keyCode == 37){ // left
        xPos -= 100;
        pacMan.style.transform = "translate("+xPos+"px, "+yPos+"px)";
        pacMan.style.transition = "1s";
        
    }else if(event.keyCode == 38){ // up
        yPos -= 100;
        pacMan.style.transform = "translate("+xPos+"px, "+yPos+"px)";
        pacMan.style.transition = "1s";  
        
    }else if(event.keyCode == 40){ // down
    	yPos += 100;
    	pacMan.style.transform = "translate("+xPos+"px, "+yPos+"px)";
    	pacMan.style.transition = "1s";
    }
});


</script>


<body>

<div id = "pacMan" style = "width: 100px; height:100px;">
	<img src = "pacMan.png" width = "100px" height = "100px">
</div>



</body>
</html>