<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>

<%
String sql="SELECT * from member";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
%>
<h3>회원정보</h3>
<table border="1">
<tr>
<td>id</td>
<td>pw</td>
<td>성별</td>
<td>생년월일</td>
<td>개인의료정보</td>

</tr>
<%
while(rs.next()){
	%><tr>
	<td><%out.print(rs.getString(1));%></td>
	<td><%out.print(rs.getString(2));%></td>
	<td><%out.print(rs.getString(3));%></td>
	<td><%out.print(rs.getString(4));%></td>
	<td><%out.print(rs.getString(5)+"<br>");%></td>
	</tr><%
}
%>
</table>