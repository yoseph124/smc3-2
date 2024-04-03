<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String pname = request.getParameter("pname");
String myid = request.getParameter("myid");
String myname = request.getParameter("myname");
String date = request.getParameter("date");
%>
<%
try{
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO reservation VALUES (?,?,?,"+"TO_DATE(?,'YYYY-MM-DD')"+")");
		pstmt.setString(1,pname);
		pstmt.setString(2,myid);
		pstmt.setString(3,myname);
		pstmt.setString(4,date);
		pstmt.executeUpdate();
		conn.close();
	
}
catch(Exception e){
	e.printStackTrace();
}
response.sendRedirect("index.jsp?section=enroll");

%>