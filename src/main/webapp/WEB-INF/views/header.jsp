<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="js/search.js"></script>
<script src="js/category.js"></script>
<script src="js/chat.js"></script>
</head>
<body>
	<header>
<<<<<<< HEAD
		<div id="nevUser">
			<div class="headerwrap">
				
			<!--  	<span class="login"><a href="login.do">로그인/회원가입</a></span>
				<div class="userLogin">
					<span class="currentUser">ㅇㅇ(hi00)님</span> <span class="logout"><a
						href="#">로그아웃</a></span>
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
					<a href="/"><img src="images/main/logo.png" width="120"
						alt="클레이스" /></a>
				</h1>
				<div class="search">
					<form action="searchLecture" method="get" id="searchForm">
						<c:choose>
							<c:when test="${keyword eq null}">
								<input type="search" placeholder="듣고 싶은 클래스가 있으신가요?"
									name="keyword" id="keyword" />
							</c:when>
							<c:otherwise>
								<input type="search" value="${keyword }" autocomplete="name"
									name="keyword" id="keyword" />
							</c:otherwise>
						</c:choose>
						<input type="submit" value="" class="ic_search"></input>
					</form>
				</div>
				<ul class="gnbIcons">
					<li><a href="listBoard.do"><img
							src="images/main/ic_comu.png" alt="커뮤니티" /></a></li>
					<li><a href="listMyZzimLecture.do"><img src="images/main/ic_zzim.png" alt="찜" /></a>
					</li>
					<li>
              <div class="memProfile">
             	<a href="myPage.do"><img src="/resources/profile/${loginM.mem_profile }" 
              						   alt="마이페이지" width="45" height="45"/></a></div> 
            </li>
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
					<li><a href="newLecture">신규 클래스</a></li>
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
	<%@include file ="chat.jsp" %>
</body>
</html>