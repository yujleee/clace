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
<header>
      <div class="headerwrap">
        <div id="navTop">
          <h1>
            <a href="index.html"><img src="images/main/logo.png" width="120" alt="클레이스" /></a>
          </h1>
          <div class="search">
            <input type="search" placeholder="듣고 싶은 클래스가 있으신가요?" name="search" />
            <span class="ic_search"></span>
          </div>
          <ul class="gnbIcons">
            <li>
              <a href="creator_home.html"><img src="images/main/ic_home.png" alt="강사홈" /></a>
            </li>
            <li>
              <a href="community.html"><img src="images/main/ic_comu.png" alt="커뮤니티" /></a>
            </li>
            <li>
              <a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="myPage.do?mem_no=1"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
            </li>
          </ul>
        </div>
        <nav>
          <ul>
            <li></li>
            <li><a href="#">추천 클래스</a></li>
            <li><a href="#">특가 할인</a></li>
            <li><a href="new_lectures.html">신규 클래스</a></li>
            <li><a href="community.html">커뮤니티</a></li>
          </ul>
        </nav>
      </div>
    </header>
	<h2>나의 게시물</h2>
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
        
        <footer>
      <div class="ftWrap">
        <h1></h1>
        <ul class="ft_info clear">
          <li>클레이스</li>
          <li>contact@clace.com</li>
          <li>TEL 02-123-124</li>
          <li>clace All rights reserved</li>
        </ul>
      </div>
    </footer>
</body>
</html>