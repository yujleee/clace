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
	<h2>리뷰 목록</h2>
	<table border="1" width="80%">
		<tr>
			<th>리뷰번호</th>
			<th>클래스이름</th>
			<th>리뷰제목</th>
			<th>리뷰내용</th>
		</tr>
		<tr>
			<c:forEach var="r" items="${list }">
				<tr>
					<td>${r.re_no }</td>
					<td>${r.lec_name }</td>
					<td>${r.re_title }</td>
					<td>${r.re_conent }</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>