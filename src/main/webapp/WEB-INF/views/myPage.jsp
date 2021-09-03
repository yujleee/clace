<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="css/myPage.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/inLecture.js"></script>
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
              <a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="myPage.do"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
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
            <img src="images/mypage/profile_mypage.png" alt="프로필 사진" />
          </span>
          <div id="notification">
            <a href="#" class="noti_btn"> <img src="images/mypage/ic_noti.png" alt="알람" /></a>
          </div>
          <h3 class="nickname">
            <label for="nickname">홍홍님</label>
          </h3>
          <div class="modify">
           <!--   <a href="getMemberInfo.do?mem_no=${m.mem_no }"> --> <!-- 상태유지시키면 이걸로 바꾸기 -->
           <a href="getMemberInfo.do?mem_no=1"> 
            <button id="modify_btn">
                <span>수정</span>
              </button></a
            >
          </div>
          <h2 class="email">
            <label for="email">hong123@naver.com</label>
          </h2>
        </div>
        <div>
          <div id="tabwrap">
            <div class="tab 1">
              <a href="#myPage.html"><button id="btn1">수강중인 클래스</button></a>
              <a href="listMyBoard.do?mem_no=1"><button id="btn2">나의 게시물</button></a>
              <a href="/listMyZzimLecture.do?mem_no=1"><button id="btn3">찜한 클래스</button></a>
            </div>
            <div class="tab 2">
              <a href="#myPage_coupon.html"><button id="btn4">쿠폰</button></a>
              <a href="/listMyReview.do?mem_no=3"><button id="btn5">나의 리뷰</button></a>
              <a href="#creator_home"><button id="btn6">강사</button></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <section id="content">
      <div class="wrap">
        <div class="title">
          <h3>수강중인 클래스</h3>
          <form>
            <select name="sort" id="sort">
              <option value="popular">인기순</option>
              <option value="maxr">최고가순</option>
              <option value="popular">최저가순</option>
              <option value="review">후기순</option>
            </select>
          </form>
        </div>
        <div class="lectures"></div>
        <div class="pager">
          <span><</span>
          <span>1</span>
          <span>></span>
        </div>
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