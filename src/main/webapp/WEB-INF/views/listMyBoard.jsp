<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
    <link rel="stylesheet" href="css/myPage.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/inLecture.js"></script>
    <title>클레이스: 마이 페이지:나의 작성글</title>
</head>
<body>
<%@include file="header.jsp" %>
	<br>
	<br>
    <br>
	<h2 id="listMyBoard">나의 게시물</h2>

        <table border="1" width="80%">
          <tr>
            <th width="100">글번호</th>
            <th width="100">제목</th>
            <th width="80">작성일</th>
          </tr>
          
          <c:forEach var="b" items="${list }">
          	<tr>
          		<td>${b.brd_no }</td>
          		<td>
          			<a href="detailMyBoard.do?brd_no=${b.brd_no }">${b.brd_title }</a>
          		</td>
          		<td>${b.brd_date }</td>
          	</tr>
          </c:forEach>

        </table>  
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
       <%@include file = "footer.jsp" %>

</body>
</html>