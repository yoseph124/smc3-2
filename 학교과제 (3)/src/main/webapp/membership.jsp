<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body{
            background-color: rgb(148, 216, 216);
        }
        #main{
            width: 800px;
            position: relative;
            margin:0 auto;
            margin-top: -25px;
            height: 1000px;
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
        header h1{
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
        #contener img{
            width: 50px;
            height: 50px;
            float: left;
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
    function chec(){
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
            <li><a href="membership.jsp" onClick="chec()">의료진</a></li>
            <li><a href="membership.jsp" onClick="chec()">봉사활동</a></li>
            <li><a href="membership.jsp" onClick="chec()">예약</a></li>
            <li><a href="membership.jsp" onClick="chec()">병원소개</a></li>
        </ul>
    </nav>
    <div id="login">
        <a href="login.jsp">로그인</a>
        <a href="membership.jsp">회원가입</a>
    </div>
    <div id="contener">
        <img src="img/logo.jpg">
        <h1>회원가입</h1>
        <form name="form1" action='c_membership.jsp'>
            <fieldset>
                
                <table>
                    <tr>
                        <td>아이디</td>
                        <td><input type="text" id="id" name="id"></td>
                    </tr>
                    <tr>
                        <td>비밀번호
                        </td>
                        <td><input type="password" id="pw1" name="pw1">
                            </td>
                    </tr>
                    
                    <tr>
                        <td>성별</td>
                        <td>남<input type="radio"  name="gender" class="gender" value="m">
                            여<input type="radio"  name="gender" class="gender" value="w"></td>
                    </tr>
                    <tr>
                        <td>생년월일</td>
                        <td><input type="date" id="birth" name="birth"></td>
                    </tr>
                    <tr>
                        <td>개인 의료정보</td>
                        <td><input type="text" id="memo" name="memo"></input></td>
                    </tr>
            
                    <tr>
                        <td colspan="2" align="center">
                            <input type="button" id="signup"value="회원가입" onclick="subm()"> 
                            <input type="reset" value="리셋">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <script>
function subm(){
	if(form1.id.value==''){
		alert("아이디가 입력되지 않았습니다.");
		form1.id.focus();
		return false;
	}
	else if(form1.pw1.value==''){
		alert("비밀번호가 입력되지 않았습니다.");
		form1.pw1.focus();
		return false;
	}
	else if(form1.gender.value==''){
		alert("성별이 입력되지 않았습니다.");
		return false;
	}
	
	else if(form1.birth.value==''){
		alert("생년월일이 입력되지 않았습니다.");
		form1.birth.focus();
		return false;
	}
	else if(form1.memo.value==''){
		alert("개인 의료정보가 입력되지 않았습니다.");
		form1.memo.focus();
		return false;
	}
	
}
</script>
    </div>
    <footer>
        <p>COPYRIGHT(C) SMC HOSPITAL.<br> 
            ALL RIGHTS RESERVED.</p>
    </footer>
</div>
</body>
</html>