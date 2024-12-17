<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="DB.DBConnect" %>
<% 
	String sql = "select P.P_CITY, case P.P_CITY when '10' then '서울' when '20' then '경기' when '30' then '강원' when '40' then '대구' end as p_name, count(P.P_CITY) from tbl_patient_202004 P, tbl_result_202004 r where P.P_NO = r.P_NO group by P.P_CITY order by P.P_CITY";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header><jsp:include page="layout/header.jsp"></jsp:include></header>
	<nav><jsp:include page="layout/nav.jsp"></jsp:include></nav>
	<section class="section">
		<h2>(지역별)검사건수통계</h2>
		<table class="table_line">
			<tr bgcolor="#39c5bb">
				<th>지역코드</th>
				<th>지역명</th>
				<th>검사건수</th>
			</tr>
			<% while(rs.next()){%>
			<tr class="center">
				<td><%=rs.getString(1) %>
				<td><%=rs.getString(2) %>
				<td><%=rs.getString(3) %>
			</tr>
			<%} %>
		</table>
	</section>
	<footer><jsp:include page="layout/footer.jsp"></jsp:include></footer>
</body>
</html>