<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> <!-- 가격표시 -->   
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/listClass.css" />
    <title>클레이스: ${keyword } 검색 결과</title>
	<%@include file ="header.jsp" %>
</head>
<body>
    <!-- end header-->
    <section id="content">
      <div class="wrap">
        <div class="title">
          <h3>'${keyword }' 검색 결과</h3>
        </div>
        <div class="lectures">
        	<c:forEach var="l" items="${list }">
        		<div class="lecture">
        			<a href="detailLecture.do?lec_no=${l.lec_no}">
        				<div class="img_lecture">
        					<img alt="${l.lec_name }" width="240" src="images/lecture/${l.lec_image }">
        				</div>
        				<p>${l.lec_name }</p>
        				<h4>
        					 <fmt:formatNumber pattern="#,###">${l.lec_price - (l.lec_price* l.lec_sale)}</fmt:formatNumber>원
        				</h4>
        				<div class="star">
        					<img alt="img_star" src="images/main/ic_star.png">
        					<span class="rw_total">${l.lec_grade }</span>
        				</div>
        			</a>
        		</div>
        	</c:forEach>
        </div>
        <div class="pager">
          	<c:forEach var="i" begin="1" end="${totalPage }">
				<span><a href="searchLecture?pageNum=${i }">${i }</a></span>
			</c:forEach>
        </div>
      </div>
    </section>
</body>
   <%@include file = "footer.jsp" %>
</html>