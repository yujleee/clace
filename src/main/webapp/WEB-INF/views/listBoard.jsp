<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판</title>
  <link rel="stylesheet" href="css/commu.css" />
  <link rel="stylesheet" href="css/board.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".detail").click(function(){
		let no = $(this).attr("no");
		//alert(no);
		location.href = "detailBoard.do?no="+no;
	});
});
</script>
</head>
<body>
	 <%@ include file = "header.jsp" %>
	 <section>
     	<div class="commuWrap">

	<h2>커뮤니티 자유게시판</h2>

	<table border="1" width="80%">
	<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성일</th>
			<!--  <th>추천</th>-->
			<th>조회</th>
	</tr>
	
	<c:forEach var="b" items="${list }">
		<tr class="detail" no=${b.brd_no }>
		
		<td>${b.brd_no }</td>	
		<td>${b.brd_title }</td>		
			<!--  <td>${b.brd_date }</td>	-->
			<td><fmt:formatDate value="${b.brd_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<!--  <td>${b.brd_rec }</td> -->
			<td>${b.brd_viewc }</td>
		</tr>	
	</c:forEach>
	</table>
	
	<!-- 페이징 기능 추가 -->
	  <div class="btnWrap">		      
			<div class="Page_view">
				<c:forEach var="i" begin="1" end="${totalPage }">
					<a href="listBoard.do?pageNUM=${i }">${i }</a>&nbsp; 
				</c:forEach><br>
			</div>	
				<button><a href="insertBoard.do">글쓰기</a></button>		
	     </div>
	    </div>	     
    </section>
 <%@ include file = "footer.jsp" %>	
</body>
</html>