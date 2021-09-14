<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <title>클레이스: 에러 발생</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
    <link rel="stylesheet" href="css/error.css" />
</head>
<body>
	<%@ include file = "header.jsp" %>
	<section id="content">
		<div class="wrap">
			<h4>죄송합니다. 오류가 발생하였습니다.</h4>
			<p>${msg }</p>
			<div class="img">
				<img src="images/main/img_error.png" width="200px"  alt="에러" />
			</div>
		</div>
	</section>
		<%@ include file = "footer.jsp" %>
</body>
</html>