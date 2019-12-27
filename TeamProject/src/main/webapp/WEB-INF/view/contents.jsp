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
			<form action="/TeamProject/hello/board-reply" method="post">
				<table>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="replyName" id="replyName">
					</tr>
					<tr>
						<td>댓글</td>
						<td><input type="text" name="replyContent" id="replyContent">
					</tr>
					<tr>
						<td colspan = "2">
						<input type="submit" name="submit" id="submit" value="댓글 등록">
					</tr>
				</table>
			</form>
				<table>
					<c:forEach items="${reply }" var="reply">
						<tr>
							<th>작성자</th>
							<th>${reply.replyName }</th>
						</tr>
						<tr>
							<th>댓글</th>
							<th>${reply.replyContent }</th>
						</tr>
					</c:forEach>
				</table>
		</section>
	</article>
	
<%@ include file="/WEB-INF/view/common/end.jspf" %>