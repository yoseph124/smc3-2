<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>

<%
String sql="SELECT * from Professor";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
%>
<h3>의료진</h3>
<table border="1">
<tr>
<td>이름</td>
<td>의학과</td>


</tr>
<%
while(rs.next()){
	%><tr>
	<td><%out.print(rs.getString(1));%></td>
	<td><%out.print(rs.getString(2)+"<br>");%></td>
	</tr><%
}
%>
</table>