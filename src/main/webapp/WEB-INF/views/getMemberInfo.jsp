<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>클레이스: 마이 페이지</title>
<script type="text/javascript">
	function confirmDelete(mem_no){
		if(confirm('탈퇴하시겠습니까?')){
			location.href="deleteMemberInfo.do?mem_no="+mem_no;
		}
	}
</script>
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
	<h2>회원정보</h2>
	프로필이미지: ${m.mem_profile }
	<img src="resources/profile/${m.mem_profile }"><br>
	아이디: ${m.mem_id }<br>
	비밀번호:  ${m.mem_pwd }<br>
	이름:  ${m.mem_name }<br>
	닉네임:  ${m.mem_nickname }<br>
	휴대폰번호:  ${m.mem_phone }<br>
	이메일:  ${m.mem_email }<br>
	성별:  ${m.mem_gender }<br>
	직업:  ${m.job_no }<br>
	연령대:  ${m.age_no }<br>
	<a href="updateMemberInfo.do?mem_no=${m.mem_no }">수정하기</a>
	<a href="#" onclick="confirmDelete(${m.mem_no})">탈퇴하기</a>
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