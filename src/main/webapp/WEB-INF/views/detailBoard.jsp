<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세페이지</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/board.css" />
</head>
<body>
 <%@ include file = "header.jsp" %>
 	
 	<section>
		<div id="container">
		
			<h2>게시물 상세</h2>			
			글번호 : ${b.brd_no }<br>
			글제목 : ${b.brd_title }<br>
			글내용 : <br>
			<textarea rows="10" cols="80" readonly="readonly">${b.brd_content }</textarea><br>
			
			등록일 : <fmt:formatDate value="${b.brd_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
			<!--  등록일 : ${b.brd_date }--> <br>
			조회수 : ${b.brd_viewc }<br>

			<div class="update_button">
				<button><a href="updateBoard.do?no=${b.brd_no }">수정</a></button>
				<button><a href="deleteBoard.do?no=${b.brd_no }">삭제</a></button>
			</div>
	
	</div>
	</section> 
			
	 <%@ include file = "footer.jsp" %>	
</body>
</html>