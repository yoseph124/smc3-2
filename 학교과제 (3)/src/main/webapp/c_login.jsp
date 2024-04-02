<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
    <%
   	 	request.setCharacterEncoding("UTF-8");
    	String logid = request.getParameter("logid");
    	String logpw = request.getParameter("logpw");
		String sql="SELECT * FROM MEMBER";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	%>
<%
while(rs.next()){
if (logid==rs.getString(1)&&logpw==rs.getString(2)){
	if(logid=="admin"){
		response.sendRedirect("admin.jsp");
	}
	else{
		response.sendRedirect("member.jsp?logid="+logid+"");
	}
}
}
%>
<script>
alert("아이디 비밀번호가 일치하지 않습니다.");
<%response.sendRedirect("login.jsp");%>
</script>