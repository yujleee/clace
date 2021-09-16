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
    <title>클레이스: 마이 페이지:나의리뷰수정</title>
</head>
<body>
<%@include file ="header.jsp" %>
<div id="updateMyReviewForm">
	<h2 id="updateMyReview">리뷰수정</h2>
	<form action="updateMyReview.do" method="post" enctype="multipart/form-data">
		<!--  <input type="hidden" name="lec_no" value="${lec_no }">
		<input type="hidden" name="mem_no" value="0">-->
		
		<input type="hidden" name="re_no" value="${r.re_no }">
		<input type="hidden" name="re_img" value="${r.re_img }">
		
		리뷰제목 : <input type="text" name="re_title" value="${r.re_title }" id="re_title"><br>
		리뷰내용 : <br>
		<textarea rows="10" cols="70" name="re_conent">${r.re_conent }</textarea><br>
		리뷰평점 : <input type="text" name="re_grade" value="${r.re_grade }" id="re_grade"><br>
		리뷰사진 : <input type="file" name="uploadFile"><br>
		<img src="resources/profile/${r.re_img }" width="80" height="80"><br>
		<input type="submit" value="수정" id="updateReviewBtn">
		<input type="reset" value="취소" id="resetReviewBtn">
	</form>
</div>
	<%@include file = "footer.jsp" %>
</body>
</html>