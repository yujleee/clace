<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시물 상세</h2>
	<hr>
	글번호 : ${b.brd_no }<br>
	글제목 : ${b.brd_title }<br>
	글내용 : <br>
	<textarea rows="10" cols="80" readonly="readonly">${b.brd_content }</textarea><br>
	등록일 : ${b.brd_date }<br>
	조회수 : ${b.brd_viewc }<br>

	<hr>

	<a href="updateBoard.do?no=${b.brd_no }">수정</a>
	<a href="deleteBoard.do?no=${b.brd_no }">삭제</a>
</body>
</html>