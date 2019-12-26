<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/begin.jspf" %>
<link href="${contextPath}/css/contents.css" rel="stylesheet" type="text/css">
	
	<article>
		<!-- 개시물 내용 섹션 -->
		<section id="contents">
			
			<h3>제목</h3><label>${read.boardTitle }</label>
			<p><b>내용</b></p><p>${read.boardContent }</p>
			<p><b>작성일</b></p><p>${read.boardDate }</p>
			<p><b>조회수</b></p><p>${read.boardViews }</p>
			<p><b>작성자</b></p><p>${read.userId }</p>
			<a href="/TeamProject/hello/board-update?boardId=${read.boardId }">수정하기</a>
		</section> 
		
		<!-- 댓글 섹션 -->
		<section>
			<ul>
				<li>
					<p>작성자</p>
				</li>
				<li>
					<p>댓글내용</p>
				</li>
			</ul>
			<!-- <ul>
				<li>
					<p>작성자1</p>
				</li>
				<li>
					<p>댓글내용</p>
				</li>
			</ul> -->
		</section>
	</article>
	
<%@ include file="/WEB-INF/view/common/end.jspf" %>