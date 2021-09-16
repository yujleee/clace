<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 삭제</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/board.css" />
</head>
<body>
	<%@ include file = "header.jsp" %>

	<section>
		<div id="container">
			
		<h2>게시물 삭제</h2>

		<form action="deleteBoard.do" method="post">
			<input type="hidden" name="brd_no" value="${b.brd_no }">
			글암호 : <input type="password" name="brd_pwd">
			
			<div class="update_button">
			<input type="submit" value="삭제">
			</div>
		</form>
	
		</div>
	</section> 
	
	<%@ include file = "footer.jsp" %>	
</body>
</html>