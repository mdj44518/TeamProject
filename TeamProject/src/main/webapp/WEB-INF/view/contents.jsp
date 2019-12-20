<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 내용</title>
<style>
article {
	width: 1200px;
	margin: auto;
}

h3 {
	padding: 10px;
}

section p {
	padding: 5px;
}

article section:nth-child(1) {
	background-color: rgb(177, 202, 230);
}

article section:nth-child(2) {
	background-color: rgb(177, 230, 218);
}

section:first-child p:nth-child(2) {
	height: 300px;
}
</style>
</head>
<body>
	<article>
		<!-- 개시물 내용 섹션 -->
		<section id="contents">
			<h3>제목</h3>
			<p>내용ㄴㅁㅇㄴㅁㅇㅁㄴㅇ</p>
			<p>2020-02-02</p>
			<p>조회수 1</p>
			<p>작성자</p>

		</section>
		<!-- 댓글 섹션 -->
		<section>
			<ul>
				<li>
					<p>작성자</p>
					<p>작성일</p>
					<p>댓글내용</p>
				</li>
			</ul>
		</section>
	</article>
</body>
</html>