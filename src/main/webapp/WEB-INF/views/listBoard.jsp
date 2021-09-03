<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>커뮤니티 자유게시판</h2>
	<a href="insertCommunity.do">등록</a>
	<hr>
	<table border="1" width="80%">
	<tr>
			<th>제목</th>
			<th>글쓴이</th>
			<th>작성일</th>
			<th>추천</th>
			<th>조회</th>
	</tr>
	
	<c:forEach var="b" items="${list }">
		<tr><a href="detailBoard.do?no=${b.brd_no }">
		<td>${b.brd_title }</td>	
		<td>${b.writer }</td>		
			<td>${b.brd_date }</td>
			<td>${b.brd_rec }</td>
			<td>${b.brd_viewc }</td>
		</a></tr>	
	</c:forEach>
	</table>
</body>
</html>