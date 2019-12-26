<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			</tr>
			<tr>
				<td>${add.boardId }</td>
				<td><a href="#">${add.boardTitle }</a></td>
				<td>${add.userId }</td>
				<td>${add.boardContent }</td>
				<td>${add.boardDate }</td>
				<td>${add.boardViews }</td>
			</tr>
		</table>
	</section>

<%@ include file="/WEB-INF/view/common/end.jspf" %>