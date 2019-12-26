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
			<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.boardId }</td>
				<td><a href="/TeamProject/hello/board-read?boardId=${list.boardId}">${list.boardTitle }</a></td>
				<td>${list.userId }</td>
				<td>${list.boardContent }</td>
				<td>${list.boardDate }</td>
				<td>${list.boardViews }</td>
				<td><a href="/TeamProject/hello/board-delete?boardId=${list.boardId }">삭제</a></td>
			</tr>
			</c:forEach>
		</table>
	</section>

<%@ include file="/WEB-INF/view/common/end.jspf" %>