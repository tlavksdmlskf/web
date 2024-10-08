<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.DBConnect"%>
<%@ page import = "java.sql.*"%>
<% 
	String sql = "select m.custno, custname, sum(price) price,"
				 + "case grade when 'A' then 'VIP' when 'B' then '일반' else '직원' end grade " 
				 + "from member_tbl_02 m, money_tbl_02 n " 
				 + "where m.custno = n.custno and price is not null " 
				 + "group by m.custno, custname, grade "
				 + "order by price desc";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int sum = 0;
%>
<link rel="stylesheet" href="css/style.css"> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<section class="section">
		<h2>회원매출조회</h2>
		<table class="table_line">
			<tr>
				<th>회원번호</th>
				<th>회원이름</th>
				<th>고객등급</th>
				<th>매출</th>
			</tr>
			<% while(rs.next()){ %>
			<tr class="center">
				<td><%=rs.getString("custno")%></td>
				<td><%=rs.getString("custname")%></td>
				<td><%=rs.getString("grade")%></td>
				<td><%=rs.getString("price")%></td>
				<% sum += rs.getInt("price"); %>
			</tr>
			<%} %>
			<tr class="center">
				<th colspan="3">총합</th>
				<td><%= sum%></td>
			</tr>
			
		</table>
	</section>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>



</body>
</html>