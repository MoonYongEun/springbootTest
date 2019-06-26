<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" id="table">

<tr>
	<th>번호</th>
	<th>이름</th>
	<th>국어</th>
	<th>수학</th>
	<th>영어</th>
</tr>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type:'GET',
		url:'/select2',
		dataType:'json',
		success:function(data){
			//alert(data.list);
			$.each(data.list,function(index,item){
				$('table').append(
						'<tr>'
						+'<td>'+item.seq+'</td>'
						+'<td>'+item.name+'</td>'
						+'<td>'+item.kor+'</td>'
						+'<td>'+item.math+'</td>'
						+'<td>'+item.eng+'</td>'
						+'</tr>');
			});
		}
	});
});

</script>

</html>