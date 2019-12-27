<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/common/begin.jspf" %>
<link href="${contextPath}/css/board.css" rel="stylesheet" type="text/css">
	<section>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
			<c:forEach items="${page }" var="page">
			<tr>
				<td>${page.boardId }</td>
				<td><a href="/TeamProject/hello/board-read?boardId=${page.boardId}">${page.boardTitle }</a></td>
				<td>${page.userId }</td>
				<td>${page.boardContent }</td>
				<td>${page.boardDate }</td>
				<td>${page.boardViews }</td>
				<td><a href="/TeamProject/hello/board-delete?boardId=${page.boardId }">삭제</a></td>
			</tr>
			</c:forEach>
		</table>
	</section>

<%@ include file="/WEB-INF/view/common/end.jspf" %>