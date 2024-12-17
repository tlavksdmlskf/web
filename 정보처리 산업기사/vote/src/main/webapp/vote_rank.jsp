<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="DB.DBConnect" %>
<%@ page import="java.sql.*" %>
<%
		String sql = "select m.m_no, m.m_name, count(v.m_no) as cnno from tbl_member_202005 m, tbl_vote_202005 v where m.m_no = v.m_no and v.v_confirm != 'N' group by m.m_no, m.m_name order by cnno desc, m.m_no asc";
		Connection conn = DBConnect.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery(); 
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header id="header">
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav id="nav">
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<section class="section">
		<h2>후보자등수</h2>
		<table class="table_line">
			<tr>
				<th>후보번호</th>
				<th>성명</th>
				<th>총투표건수</th>
			</tr>
			<%while(rs.next()){%>
			<tr class="center">
				<th><%=rs.getString(1) %></th>
				<th><%=rs.getString(2) %></th>
				<th><%=rs.getString(3) %></th>
				
			</tr>
			<%} %>
		</table>
	</section>
	<footer id="footer">
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>