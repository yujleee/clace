<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> <!-- 가격표시 -->   
<!DOCTYPE html>
<html>
<head>
  	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
    <link rel="stylesheet" href="css/listClass.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>클레이스: 추천 클래스</title>
</head>
<body>
	<%@include file ="header.jsp" %>
    <!-- end header-->
    <section id="content">
      <div class="wrap">
        <div class="title">
          <h3>추천 클래스</h3>
          <form>
            <select name="sort" id="sort">
              <option value="popular">인기순</option>
              <option value="maxr">최고가순</option>
              <option value="popular">최저가순</option>
              <option value="review">후기순</option>
            </select>
          </form>
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
				<!-- 상태유지한 TotalPage까지 페이지번호 출력-->
				<span><a href="recommandLecture?pageNum=${i }">${i }</a>&nbsp;</span>
			</c:forEach>
        </div>
      </div>
    </section>
   <%@include file = "footer.jsp" %>
</body>
</html>