<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.DBConnect" %>
<%@ page import="java.sql.*" %>
<% 
	String sql = "select p.P_NO, p.P_NAME, l.T_NAME, to_char(r.T_SDATE,'yyyy-mm-dd'), case r.T_STATUS when '1' then '검사중' when '2' then '검사완료' end as T_STATUS, to_char(r.T_LDATE,'yyyy-mm-dd'), case r.T_RESULT when 'X' then '미입력' when 'P' then '양성' when 'N' then '음성' end as result from tbl_patient_202004 p, tbl_result_202004 r, tbl_lab_test_202004 l where p.P_NO = r.P_NO and r.T_CODE = l.T_CODE order by p.p_no";
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
		<h2>검사결과조회</h2>
		<table class="table_line">
			<tr bgcolor="#39c5bb">
				<th>환자번호</th>
				<th>환자명</th>
				<th>검사일</th>
				<th>검사시작일</th>
				<th>검사상태</th>
				<th>검사종료일</th>
				<th>검사결과</th>
			</tr>
			<% while(rs.next()){ %>
			<tr>
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
	<footer><jsp:include page="layout/footer.jsp"></jsp:include></footer>
</body>
</html>