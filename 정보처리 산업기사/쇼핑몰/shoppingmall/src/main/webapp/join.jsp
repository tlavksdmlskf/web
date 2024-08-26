<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.DBConnect" %>    
<%@ page import="java.sql.*" %>    
<% 
	String sql = "select max(custno) from member_tbl_02"; // 쿼리문 형식의 문자열이 변수명sql에 저장
	
	Connection conn = DBConnect.getConnection(); // DB 연결 기능을 객체변수 conn에 저장 -> DB연결
	PreparedStatement pstmt = conn.prepareStatement(sql);// sql변수에 저장되어있는 문장이 쿼리문이 됨
	ResultSet rs = pstmt.executeQuery();// 변수 pstmt에 저장되어있는 SQL문을 실행하여 객체변수 rs에 저장
	rs.next();//변수 rs에 결과값이 저장되는 경우 next()를 호출하여 마지막 값을 확인
	int num = rs.getInt(1)+1; //num에 오라클 member 테이블의 마지막 회원번호 +1 값이 변수에 저장
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkValue(){
		if (!document.data.custname.value){
			alert("회원성명이 입력되지 않았습니다.");
			data.custname.focus();
			return false;
		}
		else if (!document.data.phone.value){
			alert("전화번호가 입력되지 않았습니다.");
			data.phone.focus();
			return false;
		}
		else if (!document.data.address.value){
			alert("주소를 입력하세요.");
			data.address.focus();
			return false;	
		}
		else if(!document.data.joindate.value){
			alert("가입일자를 입력하세요.");
			data.joindate.focus();
			return false;
		}
		else if(!document.data.grade.value){
			alert("고객등급을 입력하세요.");
			data.grade.focus();
			return false;
		}
		else if(!data.city.value){
			alert("도시코드를 입력하세요.");
			data.city.focus();
			return false;
		}
		alert("회원가입이 완료 되었습니다.")
		return true;
		
	}
</script>
</head>
<body>
<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<section class="section">
		<h2>홈쇼핑 회원 등록</h2>
		<form name="data" action="join_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>회원번호</th>
					<td><input type="text" name="custno" value = "<%= num %>"  readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city"></td>
				</tr>
				<tr class="center">
					<td colspan="2">
						<input type="submit" value="등록">
						<input type="button" value="취소" onclick="location.href=join.jsp">
						<input type="button" value="조회">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>