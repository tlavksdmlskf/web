<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="DB.DBConnect" %> 

<%
	String sql = "SELECT V_NAME, CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' END AS birth_date, '만' || TO_CHAR(TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TO_DATE(CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 6) WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 6) END, 'YYYYMMDD')) / 12)) || '세' AS full_age, case when substr(v_jumin,7,1) in (1, 3) then '남' when substr(v_jumin, 7, 1) in (2, 4) then '여' end as gender, m_no, substr(v_time,1,2)||':'||substr(v_time,3,2) as v_time, case v_confirm when 'Y' then '확인' when 'N' then '미확인' end as v_confirm FROM tbl_vote_202005 where v_area = '제1투표장' order by m_no, v_time desc";
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
	<jsp:include page="/layout/header.jsp"></jsp:include>
	<jsp:include page="/layout/nav.jsp"></jsp:include>
	<section class="section">
		<h2>후보검수조회</h2>
		<div >		
			<table class="table_line">
				<tr class="center">
					<th>성명</th>
					<th>생년월일</th>
					<th>나이</th>
					<th>성별</th>
					<th>후보번호</th>
					<th>투표시간</th>
					<th>유권자확인</th>
				</tr>
				<% while(rs.next()){ %>
					<tr class="center">
						<td><%= rs.getString(1) %></td>
						<td><%= rs.getString(2) %></td>
						<td><%= rs.getString(3) %></td>
						<td><%= rs.getString(4) %></td>
						<td><%= rs.getString(5) %></td>
						<td><%= rs.getString(6) %></td>
						<td><%= rs.getString(7) %></td>
					</tr>
				<%} %>
			</table>
		</div>
	</section>
	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>