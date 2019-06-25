<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/insert2">
<table>
<tr>
	<th colspan="4" align="center">성적을 입력 하시오</th>
</tr>
<tr>
	<td>
		<label>이름</label>
		<input type="text" size="8" name="name">
	</td>
</tr>
<tr>
	<td>
		<label>국어</label>
		<input type="text"  size="8" name="kor">
	</td>
</tr>
<tr>
	<td>
		<label>수학</label>
		<input type="text"  size="8" name="math">
	</td>
</tr>
<tr>
	<td>
		<label>영어</label>
		<input type="text"  size="8" name="eng">
	</td>
</tr>
<br><br>
<tr>
	<td colspan="4" align="center">
		<input type="submit" id="insert" value="입력"  size="8">
		<input type="reset" value="취소"  size="8">
	</td>

</tr>

</table>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
/* $('#insert').click(function(){
	location.href="/insert2";
	
}); */
</script>
</html>