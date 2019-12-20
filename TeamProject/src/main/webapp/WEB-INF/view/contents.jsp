<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/common/begin.jspf" %>
<link href="${contextPath}/css/contents.css" rel="stylesheet" type="text/css">

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
				</li>
				<li>
					<p>댓글내용</p>
				</li>
			</ul>
			<ul>
				<li>
					<p>작성자1</p>
					<p>작성일1</p>
				</li>
				<li>
					<p>댓글내용</p>
				</li>
			</ul>
		</section>
	</article>
	
<%@ include file="/WEB-INF/view/common/end.jspf" %>