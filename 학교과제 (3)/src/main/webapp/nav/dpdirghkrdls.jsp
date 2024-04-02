<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>

<%
String sql="SELECT re.pname,pr.Department,id,name,redate from reservation re,Professor pr where re.pname=pr.pname";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
%>
<h3>예약확인</h3>
<table border="1">
<tr>
<td>교수이름</td>
<td>의학과</td>
<td>id</td>
<td>날짜</td>

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