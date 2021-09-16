<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
  <link rel="stylesheet" href="css/board.css" />

</head>
<body>
   	<%@ include file = "header.jsp" %>


<div id="container">
	<c:if test="${re==1 }">
			회원가입에 성공하였습니다.
		</c:if>
		
		<c:if test="${re!=1 }">
			회원가입에 실패하였습니다.
		</c:if>

		<br>
		<br>
		<a href="index">메인</a><br>
		<a href="login.do">로그인</a>

</div>		
			<%@ include file = "footer.jsp" %>
</body>
</html>