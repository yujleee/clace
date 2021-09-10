<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시물 등록</h2>
	<hr>
	<form action="insertCommunity.do" method="post"
	enctype="multipart/form-data">
	
	<input type="hidden" name="brd_no" value="${brd_no }">
	글제목 : <input type="text" name="brd_title"><br>
	<input type="hidden" name="mem_no" value="${mem_no }"><br>
	작성일 : <input type="text" name="brd_date"><br>
	추천 :<input type="text" name="brd_rec"> <br>
	조회 :<input type="text" name="brd_viewc"> <br>
	<textarea rows="10" cols="80" name="content"></textarea><br>

	<input type="submit" value="등록">
	<input type="reset" value="취소">
</form>
</body>
</html>