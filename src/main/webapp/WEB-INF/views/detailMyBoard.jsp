<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
     <%@include file ="header.jsp" %>
<div id="myBoardForm">
	<h2 id="writeMyBoard">나의 작성글</h2>
	<p class="myboard">게시물번호 &nbsp; ${b.brd_no }</p>
	<p class="myboard">게시물제목 &nbsp;${b.brd_title }</p>
	<p id="brd_content">게시물내용<br><br>
	<textarea rows="10" cols="80" readonly="readonly">${b.brd_content }</textarea></p>
	<p class="myboard">게시물작성일자 &nbsp;<fmt:formatDate value="${b.brd_date}" pattern="yyyy-MM-dd"/></p>
	<p class="myboard">게시물해시태그 &nbsp; ${b.brd_hashtag }</p>
	<a href="myPage.do?mem_no=1" id="backMyPageBtn">마이페이지로 돌아가기</a>
</div>
	<%@include file = "footer.jsp" %>

</body>
</html>