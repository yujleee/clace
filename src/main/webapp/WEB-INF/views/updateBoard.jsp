<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@ include file = "header.jsp" %>

	<h2>게시물 수정</h2>
	<hr>
	<form action="updateBoard.do" method="post" enctype="multipart/form-data">
	

	<input type="hidden" name="mem_no" value="${b.mem_no }"><br>
	<input type="hidden" name="brd_no" value="${b.brd_no }"><br>
	
	글제목 : <input type="text" name="brd_title"><br>
	글암호 : <input type="password" name="brd_pwd"><br>	

	글내용 : <br>
	<textarea rows="10" cols="80" name="brd_content"></textarea><br>

	<input type="submit" value="수정">
	<input type="reset" value="취소">
</form>

 <%@ include file = "footer.jsp" %>	
</body>
</html>