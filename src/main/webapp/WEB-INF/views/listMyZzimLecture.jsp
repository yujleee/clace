<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
    <link rel="stylesheet" href="css/myPage.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/inLecture.js"></script>
    <title>클레이스: 마이 페이지:찜</title>
</head>
<body>
<%@include file ="header.jsp" %>
	<h2 id="myZzimLecture">찜한 클래스</h2>
	<table border="1" width="80%">
		<tr>
			<th>클래스이름</th>
			<th>클래스가격</th>
			<th>클래스장소</th>
		</tr>
		
		<c:forEach var="l" items="${list }">
			<tr>
				<td>
					<a href="#">${l.lec_name }</a>
				</td>
				<td>${l.lec_price }</td>
				<td>${l.lec_place }</td>
			</tr>
		</c:forEach>
	</table>
	<%@include file="footer.jsp" %>
</body>
</html>