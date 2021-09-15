<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="css/main.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="js/main.js"></script>
<script src="js/search.js"></script>
<script src="js/category.js"></script>
<script src="js/chat.js"></script>
<title>클레이스</title>
</head>
<body>

	<header>
		<div id="nevUser">
			<div class="headerwrap">
			<!-- 			
				<span class="login"><a href="login.do">로그인/회원가입</a></span>
				<div class="userLogin">
					<span class="currentUser">ㅇㅇ(hi00)님</span>
					<span class="logout"><a href="#">로그아웃</a></span>
				</div>				
				 -->
				<c:choose>
			<c:when test="${empty loginM }">
				<span class="login"><a href="login.do">로그인/회원가입</a></span>	
			</c:when>
				
			<c:when test="${not empty loginM }">
				<div class="userLogin">
					<span class="currentUser">${loginM.mem_name }(${loginM.mem_id })님 환영합니다.</span>
					<span class="logout"><a href="logout.do">로그아웃</a></span>				
				</div>	
			</c:when>	
			</c:choose>	 
				  
			</div>
		</div>
		<div id="recentKeyword">
			<div class="headerwrap">
				<div class="top">
					<h4>최근 검색어</h4>
					<span class="deleteAll">모두 삭제</span>
				</div>
				<ul class="recent"></ul>
			</div>
		</div>
		<div class="headerwrap">
			<div id="navTop">
				<h1>
					<a href="index"><img src="images/main/logo.png" width="120"
						alt="클레이스" /></a>
				</h1>
				<div class="search">
					<form action="searchLecture" method="get" id="searchForm">
								<input type="search" placeholder="듣고 싶은 클래스가 있으신가요?"  name="keyword"
									id="keyword" />
						<input type="submit" value="" class="ic_search"></input>
					</form>
				</div>
				<ul class="gnbIcons">
					<li><a href="#"><img src="images/main/ic_home.png"
							alt="강사홈" /></a></li>
					<li><a href="listBoard.do"><img
							src="images/main/ic_comu.png" alt="커뮤니티" /></a></li>
					<li><a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
					</li>
					<li><a href="myPage.do"><img src="images/detail/profile_user.png"
							alt="마이페이지" /></a></li>
				</ul>
			</div>
			<div id="category">
				<ul></ul>
			</div>
			<nav>
				<ul>
					<li class="menu"></li>
					<li><a href="recommandLecture">추천 클래스</a></li>
					<li><a href="saleLecture">특가 할인</a></li>
					<li><a href="bestLecture">핫한 클래스</a></li>
					<li><a href="newLecture">새로운 클래스</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- end header-->
	<div id="fixed">
		<img src="images/main/btn_talk.png" alt="실시간 채팅" />
	</div>
	<div id="btn_top">
		<a href="#navTop" class="topBtn"><img
			src="images/main/btn_top.png" alt="top" /></a>
	</div>
	<!-- end buttons-->
	<div id="chat">
		<div class="chatTop">
			<h4>실시간 채팅</h4>
			<button class="btnClose"><img src="images/main/btn_chatClose.png" width="80%" alt="창닫기" /></button>
		</div>
		<div class="showMsg"></div>
		<div class="inputMsg">
			<input type="text" id="msg" placeholder="보낼 메세지를 입력해주세요" />
			<button class="btnSend">전송</button>
		</div>
		<input type="hidden" value="3" id="sessionUserId">
	</div>
	<!-- end chat -->
	<section id="visual">
		<ul class="slider">
			<li><img src="images/main/vi1.jpg" alt="배너1" /></li>
			<li><img src="images/main/vi3.jpg" alt="배너2" /></li>
		</ul>
	</section>
	<main>
		<section id="recommand">
			<div class="title">
				<h3>지금 핫한 클래스</h3>
				<span><a href="bestLecture">더보기</a></span>
			</div>
			<div class="lectures"></div>
		</section>
		<!--- end recommand-->
		<section id="sale">
			<div class="title">
				<h3>특가 할인 클래스</h3>
				<span><a href="saleLecture">더보기</a></span>
			</div>
			<div class="lectures"></div>
		</section>
		<!-- end sale-->
		<section id="bnr"></section>
		<section id="new">
			<div class="title">
				<h3>새로운 클래스</h3>
				<span><a href="newLecture">더보기</a></span>
			</div>
			<div class="lectures"></div>
		</section>
		<!-- end new-->
		<section id="aroundMe">
			<h3>내 주변 클래스</h3>
			<div class="lectures"></div>
			<div class="around">
				<div></div>
				<h3>위치정보 권한이 필요합니다</h3>
				<p>클릭하여 위치정보 권한 허용시 내 주변의 클래스들을 볼 수 있어요!</p>
			</div>
		</section>
		<!-- end aroundMe-->
	</main>
	<!-- end main -->
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