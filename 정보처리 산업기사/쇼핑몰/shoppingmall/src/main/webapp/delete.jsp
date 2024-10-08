<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.DBConnect" %>
<%@ page import = "java.sql.*" %>
    
    <% 
    	String sql = "delete from member_tbl_02 where custno = " + request.getParameter("clikc_custno");
	    Connection conn = DBConnect.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="member_list.jsp"/>
</body>
</html>