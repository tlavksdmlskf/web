<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="DB.DBConnect"%>
<%@ page import="java.sql.*"%>
<%
	String sql = "select M_NO, M_NAME, P_NAME, case P_SCHOOL when '1' then '고졸' when '2' then '학사' when '3' then '석사' when '4' then '박사' end as school, substr(M_JUMIN, 1, 6)||'-'||substr(M_JUMIN, 7, 7) as M_JUMIN, M_CITY, P_TEL1||'-'||P_TEL2||'-'||P_TEL3 as P_TEL from TBL_MEMBER_202005 M, TBL_PARTY_202005 P where M.P_CODE = P.P_CODE";
	Connection conn = DB.DBConnect.getConnection();
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
	<jsp:include page="layout/header.jsp"></jsp:include>
	<jsp:include page="layout/nav.jsp"></jsp:include>
	<section class="section">
		<h2>후보조회</h2>
		<table class="table_line">
			<tr class="center">
				<th>후보번호</th>
				<th>성명</th>
				<th>소속정당</th>
				<th>학력</th>
				<th>주민번호</th>
				<th>지역구</th>
				<th>대표전화</th>
			</tr>
			<% while(rs.next()){ %>
				<tr class="center">
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
				</tr>
			<%} %>
		</table>
	</section>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>