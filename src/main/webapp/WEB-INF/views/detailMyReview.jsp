<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>클레이스: 마이 페이지:나의리뷰상세</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<h3>리뷰 상세</h3>
    리뷰번호:${r.re_no }<br> 
	리뷰제목:${r.re_title }<br>
	리뷰내용:${r.re_conent }<br>
	리뷰평점:${r.re_grade }<br>
	<img src="resources/profile/${r.re_img }" width="200" height="200"><br>
	<a href="listMyReview.do">리뷰 목록</a>
	<a href="updateMyReview.do?re_no=${r.re_no }">리뷰 수정</a>
	<%@include file="footer.jsp" %>
</body>
</html>