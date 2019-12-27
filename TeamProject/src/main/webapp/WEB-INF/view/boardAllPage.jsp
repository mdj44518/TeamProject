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
			<c:forEach items="${allpage }" var="allpage">
			<tr>
				<td>${allpage.boardId }</td>
				<td><a href="/TeamProject/hello/board-read?boardId=${allpage.boardId}">${allpage.boardTitle }</a></td>
				<td>${allpage.userId }</td>
				<td>${allpage.boardContent }</td>
				<td>${allpage.boardDate }</td>
				<td>${allpage.boardViews }</td>
				<td><a href="/TeamProject/hello/board-delete?boardId=${allpage.boardId }">삭제</a></td>
			</tr>
			</c:forEach>
		</table>
 		<table>
			<tr>
				<c:if test="${pagemaker.prev }">
				<th>
					<a href='<c:url value="/hello/board-allPage?page=${pagemaker.startPage-1 }"/>'>이전</a>
				</th>
				</c:if>
				<c:forEach begin="${pagemaker.startPage }" end="${pagemaker.endPage}" var="idx">
				<th>
					<a href='<c:url value="/hello/board-allPage?page=${idx }"/>'>${idx }</a>
				</th>
				</c:forEach>
				<c:if test="${pagemaker.next && pagemaker.endPage > 0 }">
				<th>
					<a href='<c:url value="/hello/board-allPage?page=${pagemaker.endPage+1 }"/>'>다음</a>
				</th>
				</c:if>
			</tr>
		</table>
<%@ include file="/WEB-INF/view/common/end.jspf" %>