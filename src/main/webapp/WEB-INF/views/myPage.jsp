<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="css/myPage.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <!--   <script src="js/inLecture.js"></script>-->
    <title>클레이스: 마이 페이지</title>
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
              <a href="listMyZzimLecture.do"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="myPage.do"><img src="/resources/profile/${loginM.mem_profile }" 
              						alt="마이페이지" width="45" height="45"/></a>
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
    <!-- end header-->
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
    <!-- wrapper -->
    <div id="wrapper">
      <!-- content-->
      <div id="contentheader">
        <div>
          <span id="profile">
            <img src="/resources/profile/${loginM.mem_profile }" alt="프로필 사진" width="80" height="80"/>
          </span>
          <div id="notification">
            <a href="#" class="noti_btn"> <img src="images/mypage/ic_noti.png" alt="알람" /></a>
          </div>
          <h3 class="nickname">
            <label for="nickname">${loginM.mem_nickname }</label>
          </h3>
          <div class="modify">
           <!--   <a href="getMemberInfo.do?mem_no=${m.mem_no }"> --> <!-- 상태유지시키면 이걸로 바꾸기 -->
           <a href="getMemberInfo.do"> 
            <button id="modify_btn">
                <span>수정</span>
              </button></a>
          </div>
          <h2 class="email">
            <label for="email">${loginM.mem_email }</label>
          </h2>
        </div>
        <div>
          <div id="tabwrap">
            <div class="tab 1">
              <a href="/listMyLecture.do"><button id="btn1">수강중인 클래스</button></a>
              <a href="/listMyBoard.do"><button id="btn2">나의 게시물</button></a>
              <a href="/listMyZzimLecture.do"><button id="btn3">찜한 클래스</button></a>
            </div>
            <div class="tab 2">
              <a href="#myPage_coupon.html"><button id="btn4">쿠폰</button></a>
              <a href="/listMyReview.do"><button id="btn5">나의 리뷰</button></a>
              <a href="#creator_home"><button id="btn6">강사</button></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <section id="content">
      <div class="wrap">
      <h2 id="listMyLecture">나의 수강중인 클래스</h2>
	<table border="1" width="80%">
		<tr>
			<th>클래스번호</th>
			<th>클래스이름</th>
			<th>클래스가격</th>
			<th>&nbsp;</th>
		</tr>
		
		<c:forEach var="l" items="${list }">
			<tr>
				<td>${l.lec_no }</td>
				<td>
					<a href="#">${l.lec_name }</a>
				</td>
				<td>${l.lec_price }</td>
				<td><a href="insertReview.do?lec_no=${l.lec_no }">리뷰작성</a></td>
			</tr>
		</c:forEach>
	</table>
      </div>
    </section>

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
    <!-- end footer -->
</body>
</html>