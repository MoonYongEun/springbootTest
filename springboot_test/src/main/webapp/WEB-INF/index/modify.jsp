<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<li><label>수정 할 이름 입력</label><input type="text" id="name" size="8"><input type="button" id="nameSearch" value="입력"></li>
</ul>
<table border="1" id="table">
<tr>
	<th>번호</th>
	<th>이름</th>
	<th>국어</th>
	<th>수학</th>
	<th>영어</th>
</tr>
</table>
<br><br>

<form method="post" action="/modify3">
<table id="table2">
<tr>
	<th colspan="4" align="center">성적을 입력 하시오</th>
</tr>
<tr>
	<td>
		<label>이름</label>
		<input type="text" size="8" name="name" id="nameT" readonly>
	</td>
</tr>
<tr>
	<td>
		<label>국어</label>
		<input type="text"  size="8" name="kor" id="korT">
	</td>
</tr>
<tr>
	<td>
		<label>수학</label>
		<input type="text"  size="8" name="math" id="mathT">
	</td>
</tr>
<tr>
	<td>
		<label>영어</label>
		<input type="text"  size="8" name="eng" id="engT">
	</td>
</tr>
<br><br>
<tr>
	<td colspan="4" align="center">
		<input type="submit" id="insert" value="수정"  size="8">
		<input type="reset" value="취소"  size="8">
	</td>

</tr>

</table>

</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#table , #table2').hide();
	
	$('#nameSearch').click(function(){
		$.ajax({
			type:'POST',
			url:'/modify2',
			data:'name='+$('#name').val(),
			dataType:'json',
			success:function(data){
					$('#table').append(
							'<tr>'
							+'<td>'+data.dto.seq+'</td>'
							+'<td>'+data.dto.name+'</td>'
							+'<td>'+data.dto.kor+'</td>'
							+'<td>'+data.dto.math+'</td>'
							+'<td>'+data.dto.eng+'</td>'
							+'</tr>');
					
					$('#nameT').val(data.dto.name);
					$('#korT').val(data.dto.kor);
					$('#mathT').val(data.dto.math);
					$('#engT').val(data.dto.eng);
					
					
			}
		});
		$('#table , #table2').show();
		
	});
	
});

</script>
</html>