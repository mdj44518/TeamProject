<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/begin.jspf" %>
<link href="${contextPath}/css/board.css" rel="stylesheet" type="text/css">
<form action="/TeamProject/hello/board-update" method="post">
	<table>
		<input type="hidden" name="boardId" value="${update.boardId }">
		<tr>
			<td>작성자</td>
			<td><input type="text" name="userId" value="${update.userId }"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="boardTitle" value="${update.boardTitle }"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="boardContent" value="${update.boardContent }"></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><input type="text" name="boardDate" value="${update.boardDate }"></td>
		</tr>
		<tr>
			<td colspan = "2"><input type="submit" value="수정"></td>
		</tr>
	</table>
</form>
<%@ include file="/WEB-INF/view/common/end.jspf" %>