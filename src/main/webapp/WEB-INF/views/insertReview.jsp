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
    <title>클레이스: 마이 페이지:나의리뷰작성</title>
</head>
<body>
<%@include file="header.jsp" %>
	<h2>리뷰작성</h2>
	<form action="insertReview.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="lec_no" value="${lec_no }">
		<input type="hidden" name="mem_no" value="0">
		
		리뷰제목:<input type="text" name="re_title"><br>
		리뷰내용:<br>
		<textarea rows="10" cols="70" name="re_conent"></textarea><br>
		리뷰평점:<input type="text" name="re_grade"><br>
		리뷰이미지: <input type="file" name="uploadFile"><br>
		<input type="submit" value="작성">
		<input type="reset" value="취소">
	</form>
	<%@include file="footer.jsp" %>
</body>
</html>