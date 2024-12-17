<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	function checkValue(){
		if(!document.data.v_jumin.value){
			alert("주민번호가 없음");
			data.v_jumin.focus();
			return false;
		}else if(!document.data.v_name.value){
			alert("이름이 없음");
			data.v_name.focus();
			return false;
		}else if(!document.data.v_time.value){
			alert("투표시간이 없음");
			data.v_time.focus();
			return false;
		
		}else if(document.data.number.value == "default"){
			alert("투표후보가 없음");
			return false;
		
		}else if(!document.data.v_area.value){
			alert("투표장소가 없음");
			data.v_area.focus();
			return false;
		
		}else if(!document.data.check.value){
			alert("유권자 확인이 없음");
			return false;
		}
		alert("성공적");
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
		<h2>투표하기</h2>
		<form action="vote_p.jsp" method="post" onsubmit="return checkValue()" name="data">
			<table class="table_line">
				<tr>
					<th>주민번호</th>
					<td><input type="text" name="v_jumin">예)890101200021</td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="v_name"></td>
				</tr>
				<tr>
					<th>후보번호</th>
					<td>
					<select name="number">
						<option value="default">후보번호</option>
						<option value="1">[1]김후보</option>
						<option value="2">[2]이후보</option>
						<option value="3">[3]박후보</option>
						<option value="4">[4]조후보</option>
						<option value="5">[5]최후보</option>
					</select>
					</td>
				</tr>
				<tr>
					<th>투표시간</th>
					<td><input type="text" name="v_time">예) 0930 (09시30분)</td>
				</tr>
				<tr>
					<th>투표장소</th>
					<td><input type="text" name="v_area"></td>
				</tr>
				<tr>
					<th>유권자확인</th>
					<td><input type="radio" name="check" value="Y">확인
					<input type="radio" name="check" value="N">미확인</td>
				</tr>
				<tr class="center">
					<td colspan=2>
						<input type="submit" value="투표하기">
						<input type="button" value="다시쓰기" onclick="location.href = 'vote.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>	
	</footer>

</body>	
</html>