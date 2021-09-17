<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료창</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="css/board.css" />
        
</head>
<body>
	<%@ include file = "header.jsp" %>

	<section>
		<div id="container">
			
		<h3>결제가 완료되었습니다.</h3>
		<div class="update_button">
			<button><a href="/index">메인으로</a></button>
		</div>
		</div>
		</section> 


	<%@ include file = "footer.jsp" %>
</body>
</html>