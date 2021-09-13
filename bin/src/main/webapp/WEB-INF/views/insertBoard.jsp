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
	<form action="insertBoard.do" method="post" enctype="multipart/form-data">
	

	<input type="hidden" name="mem_no" value="0"><br>

	<input type="hidden" name="brd_no" value="0"><br>
	글제목 : <input type="text" name="brd_title"><br>
	글암호 : <input type="password" name="brd_pwd"><br>	

	글내용 : <br>
	<textarea rows="10" cols="80" name="brd_content"></textarea><br>

	<input type="submit" value="등록">
	<input type="reset" value="취소">
</form>
</body>
</html>