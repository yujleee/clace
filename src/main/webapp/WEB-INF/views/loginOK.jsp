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
	<c:if test="${not empty loginM }">
		${loginM.mem_name }(${loginM.mem_id })님 로그인 하였습니다.
		<a href="/logout.do">로그아웃</a>
	</c:if>	
	
	<c:if test="${empty loginM }">
		<a href="/login.do">로그인</a>
	</c:if>
	<h2>clace </h2>
	<a href="/index.do">메인으로 돌아가기</a>
	<hr>


</body>
</html>





