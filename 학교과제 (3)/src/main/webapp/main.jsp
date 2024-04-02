<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>병원관리 프로그램</title>
    <style>
        body{
            background-color: rgb(148, 216, 216);
        }
        #main{
            width: 800px;
            position: relative;
            margin:0 auto;
            margin-top: -25px;
            height: 1800px;
            background-color: white;
        }
        header img{
            width: 100px;
            height: 100px;
            position:absolute;
            
            left: 0;
            top: 0;
            margin-right: 10px;
        }
        h1{
            font-family: '굴림';
            font-size: 75px;
            margin-left: 100px;
        }
        h1 a{
            color:black;
            text-decoration-line: none;
        }
        #loop img{
            margin-top: 50px;
            margin-bottom: -20px;
        }
        ul{
            background-color: cadetblue;
            height: 85px;
        }
        li{
            list-style: none;
            float: left;
            text-align: center;
            
        }
        li a{
            color:white;
            text-decoration-line: none;
            display: block;
            width: 125px;
            margin:20px;
            padding:10px;
            font-size: 20px;
        }
        #login a{
            background-color: cadetblue;
            color:white;
            text-decoration-line: none;
            display: block;
            width: 100px;
            margin-left:20px;
            padding:10px;
        }
        li a:hover{
            background-color: cornflowerblue;
            
        }
        #login a:hover{
            background-color: cornflowerblue;
            
        }
        #login{
            position:absolute;
            right: 0;
            top: 0;
        }
        footer{
            text-align: center;
            background-color: rgb(3, 63, 63);
            color: white;
            width: 800px;
            position:absolute;
            bottom:0;
        }
        #conti{
            width: 800px;
            margin: 0 auto;
        }
        #conti div{
            width: 300px;
            height: 300px;
            margin: 48px;
            text-align: center;
            border:mediumaquamarine 1px solid;
        }
        
        #conti div:hover{
            transform: perspective(150px) translateZ(30px);
            font-size: 30px;
        }
        #conti div p{
            margin: 40% auto;
            background-color: rgb(247, 194, 234);
            border-top:10px rgb(243, 116, 255) solid;
            border-bottom:10px rgb(243, 116, 255) solid;
            height: 50px;
            opacity: 0.7;
            font-size: 30px;
        }
        #box1{
            float: left;
            background-image: url(img/흉부외과.jpg);
            background-size: 300px 300px;
        }
        #box2{
            float: right;
            background-image: url(img/응급의학과.JPG);
            background-size: 300px 300px;
        }
        #box3{
            float: left;
            background-image: url(img/정형외과.JPG);
            background-size: 300px 300px;
        }
        #box4{
            float: right;
            background-image: url(img/소아외과.jpg);
            background-size: 300px 300px;
        }
        #box5{
            float: left;
            background-image: url(img/산부인과.jpg);
            background-size: 300px 300px;
        }
        #box6{
            float: right;
            background-image: url(img/신경.JPG);
            background-size: 300px 300px;
        }
    </style>
    <script>
        var index = 0;   
        window.onload = function(){
            slideShow();
        }
        
        function slideShow() {
        var i;
        var x = document.getElementsByClassName("slide1");  
        for (i = 0; i < x.length; i++) {
           x[i].style.display = "none";   
        }
        index++;
        if (index > x.length) {
            index = 1;  
        }   
        x[index-1].style.display = "block";  
        setTimeout(slideShow, 4000);  
     
    }
    function check(){
                alert('로그인후 사용하실수 있습니다');
        }
    </script>
</head>
<body>
    <div id="main">
    <header>
        <img src="img/logo.jpg">
        <h1><a href="main.jsp">세명 병원</a></h1>
    </header>
    <div id="loop">
        <img class="slide1" src="img/세명컴퓨터고등학교.png" style="width: 800px; height: 200px;">
        <img class="slide1" src="img/잔디.jpg" style="width: 800px; height: 200px;">
    </div>
    <nav>
        <ul>
            <li><a href="main.jsp" onClick="check()">의료진</a></li>
            <li><a href="main.jsp" onClick="check()">봉사활동</a></li>
            <li><a href="main.jsp" onClick="check()">예약</a></li>
            <li><a href="main.jsp" onClick="check()">병원소개</a></li>
        </ul>
    </nav>
    <div id="login">
        <a href="login.jsp">로그인</a>
        <a href="membership.jsp">회원가입</a>
    </div>
    <div id="conti">
        <div id="box1"><p>흉부외과</p></div>
        <div id="box2"><p>응급의학과</p></div>
        <div id="box3"><p>정형외과</p></div>
        <div id="box4"><p>소아외과</p></div>
        <div id="box5"><p>산부인과</p></div>
        <div id="box6"><p>신경외과</p></div>
    </div>
    <footer>
        <p>COPYRIGHT(C) SMC HOSPITAL.<br> 
            ALL RIGHTS RESERVED.</p>
    </footer>
</div>
</body>
</html>