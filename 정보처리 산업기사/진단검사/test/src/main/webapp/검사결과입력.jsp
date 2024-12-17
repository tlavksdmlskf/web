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
		if(!document.data.num.value){
			alert("번호");
			data.num.focus();
			return false;
		}
		else if(document.data.code.value == "default"){
			alert("코드");
			return false;
		}
		else if(!document.data.s_date.value){
			alert("초일");
			data.s_date.focus();
			return false;
		}
		else if(!document.data.state.value){
			alert("상태");
			return false;
		}
		else if(!document.data.e_date.value){
			alert("종일");
			return false;
		}
		else if(!document.data.rs.value){
			alert("결과");
			return false;
		}
		alert("성공");
		return true;
	}
	
	function reWrite(){
		alert("정보를 지우고 처음부터 다시 입력합니다!");
		data.reset();
		data.num.focus();
	}
</script>
</head>
<body>
	<header><jsp:include page="layout/header.jsp"></jsp:include></header>
	<nav><jsp:include page="layout/nav.jsp"></jsp:include></nav>
	<section class="section">
		<h2>검사결과입력</h2>
		<form action="검사결과입력_p.jsp" method="post" onsubmit="return checkValue()" name="data">
			<table class="table_line">
				<tr>
					<th>환자번호</th>
					<td><input type="text" name="num"></td>
				</tr>
				<tr>
					<th>검사코드</th>
					<td>
						<select name="code">
							<option value="default">검사명</option>
							<option value="T001">[T001]결핵</option>
							<option value="T002">[T002]장티푸스</option>			
							<option value="T003">[T003]수두</option>			
							<option value="T004">[T004]홍역</option>			
							<option value="T005">[T005]콜레라</option>			
						</select>
					</td>
				</tr>
				<tr>
					<th>검사시작일자</th>
					<td><input type="text" name="s_date">예>20200101</td>
				</tr>
				<tr>
					<th>검사상태</th>
					<td>
						<input type="radio" name="state" value="1">검사중
						<input type="radio" name="state" value="2">검사완료
					</td>
				</tr>
				<tr>
					<th>검사완료일자</th>
					<td><input type="text" name="e_date">예>20200101</td>
				</tr>
				<tr>
					<th>검사결과</th>
					<td>
						<input type="radio" name="rs" value="X">미입력
						<input type="radio" name="rs" value="P">양성
						<input type="radio" name="rs" value="N">음성
					</td>
				</tr>
				<tr class="center">
					<td colspan=2 >
						<input type="submit" value="검사결과등록">
						<input type="button" value="다시쓰기" onclick="reWrite()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer><jsp:include page="layout/footer.jsp"></jsp:include></footer>
</body>
</html>