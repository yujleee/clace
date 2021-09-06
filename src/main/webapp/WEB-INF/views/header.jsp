<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/hd_ft.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>클레이스</title>
</head>
<body>
	<header>
		<div id="nevUser">
			<div class="headerwrap">
				<span class="login"><a href="#">로그인/회원가입</a></span>
			</div>
		</div>
		<div class="headerwrap">
			<div id="navTop">
				<h1>
					<a href="index"><img src="images/main/logo.png" width="120"
						alt="클레이스" /></a>
				</h1>
				<div class="search">
					<input type="search" placeholder="듣고 싶은 클래스가 있으신가요?" name="search" />
					<span class="ic_search"></span>
				</div>
				<ul class="gnbIcons">
					<li><a href="#"><img src="images/main/ic_home.png"
							alt="강사홈" /></a></li>
					<li><a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
					</li>
					<li><a href="#"><img src="images/detail/profile_user.png"
							alt="마이페이지" /></a></li>
				</ul>
			</div>
			<nav>
				<ul>
					<li></li>
					<li><a href="#">추천 클래스</a></li>
					<li><a href="saleLecture">특가 할인</a></li>
					<li><a href="newLecture">신규 클래스</a></li>
					<li><a href="#">커뮤니티</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- end header-->
</body>
</html>