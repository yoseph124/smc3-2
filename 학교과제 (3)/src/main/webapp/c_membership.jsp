<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw1");
String birth = request.getParameter("birth");
String memo = request.getParameter("memo");
String gender = request.getParameter("gender");
%>
<%
try{
	
		PreparedStatement pstmt = conn.prepareStatement("INSERT INTO MEMBER VALUES (?,?,?,"+"TO_DATE(?,'YYYY-MM-DD')"+",?)");
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		pstmt.setString(3,gender);
		pstmt.setString(4,birth);
		pstmt.setString(5,memo);
		pstmt.executeUpdate();
		conn.close();
	
}
catch(Exception e){
	e.printStackTrace();
}
response.sendRedirect("login.jsp");

%>