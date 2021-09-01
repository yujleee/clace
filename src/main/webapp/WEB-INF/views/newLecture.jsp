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
    <link rel="stylesheet" href="css/newClass.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/new.js"></script>
    <title>신규 클래스</title>
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
              <a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="/myPage/myPage.html"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
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
    <section id="content">
      <div class="wrap">
        <div class="title">
          <h3>신규 클래스</h3>
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