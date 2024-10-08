<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.DBConnect" %>
<%@ page import = "java.sql.*" %>
<%
	String sql = "select custno, custname, phone, address," 
			+ "to_char(joindate,'yyyy-mm-dd'),"
			+ " grade,"
			+ "city from member_tbl_02"
			+ " where custno = "+Integer.parseInt(request.getParameter("click_custno"));
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "css/style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkValue(){
	if (!document.u_data.custno.value){
		alert("회원번호가 입력되지 않았습니다.");
		data.custname.focus();
		return false;
	}
	else if (!document.u_data.custname.value){
		alert("회원성명이 입력되지 않았습니다.");
		data.custname.focus();
		return false;
	}
	else if (!document.u_data.phone.value){
		alert("전화번호가 입력되지 않았습니다.");
		data.phone.focus();
		return false;
	}
	else if (!document.u_data.address.value){
		alert("주소를 입력하세요.");
		data.address.focus();
		return false;
	}
	else if(!document.u_data.joindate.value){
		alert("가입일자를 입력하세요.");
		data.joindate.focus();
		return false;
	}
	else if(!document.u_data.grade.value){
		alert("고객등급을 입력하세요.");
		data.grade.focus();
		return false;
	}
	else if(!document.u_data.city.value){
		alert("도시코드를 입력하세요.");
		data.city.focus();
		return false;
	}
		alert("회원정보 수정이 완료되었습니다")
		return true;
}

function checkDel(){
	msg = "ㄹㅇ?";
	if(confirm(msg)!=0){
		alert("너가 죽였어")
		location.href = "delete.jsp?clikc_custno=<%=rs.getString(1)%>"
	}else{
		alert("취소")
	}
}
</script>
</head>
<body>
	<header>
	<jsp:include page = "layout/header.jsp"></jsp:include>
</header>
<nav>
	<jsp:include page = "layout/nav.jsp"></jsp:include>
</nav>
<section class = "section">
	<h2>홈쇼핑 회원 정보 수정</h2>
	<form name="u_data" action="update_p.jsp" method="post" onsubmit="checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호</th>
					<td><input type="text" name="custno" value = <%=rs.getString(1) %> readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname" value = <%=rs.getString(2) %>></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone" value = <%=rs.getString(3) %>></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address" value = "<%=rs.getString(4) %>"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" value = <%=rs.getString(5) %>></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input type="text" name="grade" value = <%=rs.getString(6) %>></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city" value = <%=rs.getString(7) %>></td>
				</tr>
				<tr class="center">
					<td colspan="2">
						<input type="submit" value="수정">
						<input type="button" value="조회" onclick = "location.href = 'member_search.jsp'">
						<input type="button" value="삭제" onclick = "checkDel();">
					</td>
				</tr>	
			</table>
			</form>
</section>
<footer>
	<jsp:include page = "layout/footer.jsp"></jsp:include>
</footer>
</body>
</html>