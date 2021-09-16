<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/board.css" />
</head>
<body>
	 <%@ include file = "header.jsp" %>
	
	<section>
		<div id="container">
			<div id="inner">

			<h2>게시물 등록</h2>
	
			<form action="insertBoard.do" method="post" enctype="multipart/form-data">
			
				<input type="hidden" name="mem_no" value="0"><br>
				<input type="hidden" name="brd_no" value="0"><br>
				글제목 : <input type="text" name="brd_title"><br>
				글암호 : <input type="password" name="brd_pwd"><br>	
			
				글내용 : <br>
				<textarea rows="10" cols="80" name="brd_content"></textarea><br>
		
			<div class="update_button">
				<input type="submit" value="등록">
				<input type="reset" value="취소">	
			</div>
			</form>
			</div>
	</div>
	</section> 
	
 <%@ include file = "footer.jsp" %>	
</body>
</html>