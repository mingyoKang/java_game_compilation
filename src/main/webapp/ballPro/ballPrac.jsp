<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

        #ball{
            width: 100px;
            height: 100px;
            border: 3px solid black;
            background-color: orange;
            border-radius: 50%;
            opacity: 0.5;

            position: relative;
            top: 0px;
            left: 0px;

            animation-name: bounce;
            animation-duration: 3s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
        }

        @keyframes bounce {
            0%{top: 0px;}
            25%{top: 400px;}
            50%{top: 800px;}
            75%{top: 400px;}
            100%{top: 0px;}
        }
</style>

</head>
<body style = "background-image: url(stadium.jpg); background-repeat: no-repeat; background-size: cover;">

    <div id="ball"></div>
    
    <div id="boundary" style = "border: 1px solid yellow; width: 100px; height:100px; margin:100px auto;">
    	<p style = "color:tomato; font-weight:bolder;text-align:center; line-height:45px;">GOAL</p>
    </div>

    <script>
        var pos = 0;

        document.addEventListener("keydown", function(){
            console.log(event.keyCode);
            // keyboard code
            // up: 38, down: 40, right:39, left:37, space_bar:32

            var ball = document.getElementById("ball");
            

            if(event.keyCode == 39){
                pos += 100;
                ball.style.transform = "translate("+pos+"px, 0px)";
                ball.style.transition = "2s";
            }else if(event.keyCode == 37){
                pos -= 100;
                ball.style.transform = "translate("+pos+"px, 0px)";
                ball.style.transition = "2s";
            }else if(event.keyCode == 32){
                ball.style.animationPlayState = "paused";
                
            }else if(event.keyCode == 13){
            	ball.style.animationPlayState = "running";
            }
        });
    </script>

</body>
</html>