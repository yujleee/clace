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
    <title>클레이스: 마이 페이지:게시물상세</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<h2>나의 작성글상세</h2>
	게시물번호:${b.brd_no }<br>
	게시물제목:${b.brd_title }<br>
	게시물내용<br>
	<textarea rows="10" cols="80" readonly="readonly">${b.brd_content }</textarea><br>
	게시물작성일자: ${b.brd_date }<br>
	게시물해시태그: ${b.brd_hashtag }<br>
	<button><a href="myPage.do">마이페이지로 돌아가기</a></button>
	<%@include file="footer.jsp" %>
</body>
</html>