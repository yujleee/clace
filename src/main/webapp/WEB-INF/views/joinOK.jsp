<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${re==1 }">
			회원가입에 성공하였습니다.
		</c:if>
		
		<c:if test="${re!=1 }">
			회원가입에 실패하였습니다.
		</c:if>
		<hr>
		<a href="index.do">메인</a>
		<a href="login.do">로그인 하러 가기</a>
</body>
</html>