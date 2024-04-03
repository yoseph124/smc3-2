<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>

<h3>판매등록</h3>
<form name="form1" action="c_dpdir.jsp" method="post">
<input type="hidden" name="task" value="insert">
<table border="1">
	<tr>
		<td>교수이름</td>
		<td><input type="text" name="pname" ></td>
	</tr>
	<tr>
		<td>본인 id</td>
		<td><input type="text" name="myid" ></td>
	</tr>
	<tr>
		<td>본인이름</td>
		<td><input type="text" name="myname" ></td>
	</tr>
	<tr>
		<td>날짜</td>
		<td><input type="date" name="date" ></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="button" value="등록" onclick="subm()">
	<input type="reset" value="다시쓰기">
	</td>
	</tr>
</table>
</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
<script>
function subm(){
	if(form1.pname.value==''){
		alert("교수이름이 입력되지 않았습니다.");
		form1.pname.focus();
		return false;
	}
	else if(form1.myid.value==''){
		alert("본인 id가 입력되지 않았습니다.");
		form1.myid.focus();
		return false;
	}
	else if(form1.myname.value==''){
		alert("본인이름이 입력되지 않았습니다.");
		form1.myname.focus();
		return false;
	}
	else if(form1.date.value==''){
		alert("날짜가 입력되지 않았습니다.");
		form1.date.focus();
		return false;
	}
	
}
</script>