<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="DB.DBConnect" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String sql = "insert into TBL_RESULT_202004 values(?, ?, ?, ?, ?, ?)";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("num"));
	pstmt.setString(2, request.getParameter("code"));
	pstmt.setString(3, request.getParameter("s_date"));
	pstmt.setString(4, request.getParameter("state"));
	pstmt.setString(5, request.getParameter("e_date"));
	pstmt.setString(6, request.getParameter("rs"));
	pstmt.executeUpdate();
	
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>