<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/error.css" />
<%@ include file="header.jsp"%>
</head>
<body>
	<section id="content">
		<div class="wrap">
			<h4>죄송합니다. 오류가 발생하였습니다.</h4>
			<p>${msg }</p>
			<div class="img">
				<img src="images/main/img_error.png" width="200px" alt="에러" />
			</div>
		</div>
	</section>
</body>
<%@ include file="footer.jsp"%>
</html>