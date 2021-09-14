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
    <title>클레이스: 마이 페이지:나의리뷰목록</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<h2 id="listMyReview">리뷰 목록</h2>
	<table border="1" width="80%">
		<tr>
			<th>리뷰번호</th>
			<th>클래스이름</th>
			<th>리뷰제목</th>
		</tr>
		<tr>
			<c:forEach var="r" items="${list }">
				<tr>
					<td>${r.re_no }</td>
					<td>
					<a href="detailMyReview.do?re_no=${r.re_no }">${r.lec_name }</a>
					</td>
					<td>${r.re_title }</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<%@include file="footer.jsp" %>
</body>
</html>