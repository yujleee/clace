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
	
	${a.ask_title }<br>
	${a.mem_nickname }<br>
	<br>
	<hr>
	<textarea rows="10" cols="80" readonly="readonly">${a.ask_content }</textarea><br>
	등록일 : ${a.ask_date }<br>
	
	
	<div class="answer_box">
		<label style="margin-bottom:10px;">Answer</label>
		<c:choose>
			<c:when test="${a.ask_status eq '답변예정' }">
			<br><input type="text" class="answer_wait" value="답변을 기다려주세요" readonly>
			</c:when>
			<c:when test="${a.ask_status eq '답변완료' }">
			<textarea class="answer_ok"rows="5" style="resize: none; border:none;" readonly>${an.ans_content }</textarea>
			</c:when>
		</c:choose>
	</div>
	
</body>
</html>

















