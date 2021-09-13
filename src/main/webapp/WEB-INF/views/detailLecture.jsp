<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/lecture_detail.css" 
		type="text/css">
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/hd_ft.css" />

<script type="text/javascript">

	function zzim() {
		location.href="/clace_jsp/zzimOk.do?lec_no=${l.lec_no}";	
		}
	
	
	function unZzim() {
		location.href="/clace_jsp/unZzimOk.do?lec_no=${l.lec_no}";	
	}


</script>
</head>
<body>

<header>
      <div class="headerwrap">
        <div id="navTop">
          <h1>
            <a href="index.jsp"><img src="images/main/logo.png" width="120" alt="클레이스" /></a>
          </h1>
          <div class="search">
            <input type="search" placeholder="듣고 싶은 클래스가 있으신가요?" name="search" />
            <span class="ic_search"></span>
          </div>
          <ul class="gnbIcons">
            <li>
              <a href="#"><img src="images/main/ic_home.png" alt="강사홈" /></a>
            </li>
            <li>
              <a href="community.html"><img src="images/main/ic_comu.png" alt="커뮤니티" /></a>
            </li>
            <li>
              <a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="myPage.html"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
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
   
<div id = "wrapper">
	<div id="lectureInfo">
		 <div id="img_box">
			<img src = "images/detail/${l.lec_image}" id="lec_img">
		</div> 
		<div id="detail_box">
			<div id="detail_1">
				<div id="title"><h3>${l.lec_name}</h3></div>
			</div>
			<div id="detail_2">
				<h3 id="lec_price">${l.lec_price}</h3>
			</div>
			<hr>		
			<div id="detail_3">
				<div id="detail_3_profile">
				<input type="image" src="images/detail/profile_cr.png" id="cr_profile">
				</div>
				<div id="cr_nickname">${c.mem_nickname}</div>
				
			</div>	
			<hr>
		<div id="detail_4">

			<select  id="schedule">
			<option>----일정 선택하기----</option>
			
			</select>
		</div>
		
		
		<div id="detail_5">
		<c:choose>
				<c:when test="${empty z.zzim_no }">
				<button id = "zzim_box" onclick="zzim()">
				<input type="image" src="images/detail/ic_zzim.png" id="ic_zzim">
				<span id= "zzim_cnt">${zzimcnt}</span>
				</button>
				</c:when>
				
				<c:when test="${not empty z.zzim_no }">
				<button id = "zzim_box" onclick="unZzim()">
				<input type="image" src="images/detail/ic_zzim_active.png" id="ic_zzim_active" >
				<span id= "zzim_cnt">${zzimcnt}</span>
				</button>
				</c:when>
	
		</c:choose>
			
			
			<button id="apply"><div><h4>클래스 신청하기</h4></div></button>
		</div>
	</div>
 

	<div id="detail_btn">
		<a href="#lec_content"><button>클래스 소개</button></a>
		<a href="#lec_review"><button>리뷰</button></a>
		<a href="#"><button>클래스 문의</button></a>
		<a href="#"><button>취소/환불 규정</button></a>
	</div>
	
	<div id = "lec_content">
		<div>${l.lec_content}</div>
	</div>
	<div id = "lec_review">
		<div>
		<input type="image" src="images/detail/ic_star.png"><span>${l.lec_grade}</span>&nbsp&nbsp&nbsp&nbsp<span>후기(${reviewcnt})</span>
		</div>
		<hr>
	
		<c:forEach var="r" items="${reviewList }">
			<ul>
			<li>${r.mem_nickname }</li>
			<li>
			<c:forEach var="i" begin="1" end="${r.re_grade }">
					<input type="image" src="images/detail/ic_star.png">
			</c:forEach>
			</li>
			<li>${r.re_content }
			</li>			
			<c:set var="review_images" value="${r.re_img }"></c:set>
			<c:choose>
			<c:when test="${not empty review_images}">
				<li><img src="images/review/${r.re_img }"></li>
			</c:when>
			</c:choose>
			<hr>
			</ul>
			
		</c:forEach>

		 
	</div>
	<div id="lec_answer">
	<h2>문의 목록</h2>
	<a href="insertAsk.do">등록</a>
	<hr>
	<table border="1" width="80%">
		<tr>
			<th>문의답변여부</th>
			<th>문의제목</th>
			<th>닉네임</th>
			<th>문의날짜</th>
		</tr>
		<c:forEach var="a" items="${askList }">
			<tr>
				<td>${a.ask_status }</td>
				<c:choose>
				<c:when test="${a.ask_open_close eq '공개' }">
				<td><a href="detailAsk.do?ask_no=${a.ask_no}">${a.ask_title }</a></td>
				</c:when>
				<c:when test="${a.ask_open_close eq '비공개' }">
				<td>비밀글입니다.</td>
				</c:when>
				</c:choose>
				<td>${a.mem_nickname }</td>
				<td>${a.ask_date }</td>
			</tr>
		</c:forEach>
	</table>
	
	</div>
	
</div>


<div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    
    <!-- end buttons-->
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