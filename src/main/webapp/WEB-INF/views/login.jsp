<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/Clais_style.css" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
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
              <a href="login.html"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
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
    <div class="main-container">
    <form action="login.do" method="post">
      <section class="login_section">
        <div class="login_input">
          <input placeholder="아이디(이메일)" type="text" name="mem_id"/>
        </div>
        <div class="login_input">
          <input placeholder="비밀번호" type="password" name="mem_pwd"/>
        </div>
     

        <div class="find_id_password">
          <span><a href="joinPage.html">회원가입</a></span>
          <span>아이디찾기/비밀번호 찾기</span>
        </div>

        <div class="login-button">
         <input type="submit" value="로그인">
        </div>
      </section>
     </form>

      <section class="Easy_login">
        <h2>다른방식으로 로그인</h2>
        <button class="kakao"><img src="images/login/kakao.png" height="60" alt="" /></button>
        <button class="naver"><img src="images/login/naver.png" height="60" alt="" /></button>
        <button class="google"><img src="images/login/google.png" height="60" alt="" /></button>
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
    </div>
</body>
</html>