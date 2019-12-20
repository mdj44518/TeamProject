<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<style>
table {
	width: 1000px;
	text-align: center;
	margin: auto;
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}

table th {
	border-bottom: 1px solid black;
}

table td {
	padding: 1px 3px 1px 3px;
}

table td:first-child {
	width: 30px;
}

table td:nth-child(2) {
	text-align: left;
}

table td:nth-child(3) {
	width: 50px;
}

table td:nth-child(4) {
	width: 100px;
}

table td:nth-child(5) {
	width: 60px;
}
</style>
<title>게시판페이지</title>
</head>
<body>
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td>1</td>
				<td><a href="#">안녕</a></td>
				<td>dd0101</td>
				<td>2020-01-01</td>
				<td>1</td>
			</tr>
			<tr>
				<td>2</td>
				<td><a href="#">안녕안녕하세요</a></td>
				<td>dyg9927</td>
				<td>2020-01-01</td>
				<td>2</td>
			</tr>
		</table>
	</section>
</body>
</html>