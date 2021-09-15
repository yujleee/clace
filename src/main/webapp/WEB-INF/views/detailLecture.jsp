<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!-- 가격표시 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/detailClass.css" />
<%@include file="header.jsp"%>
<title>클레이스: ${l.lec_name }</title>

<script type="text/javascript">
	function zzim() {
		location.href = "zzimOk.do?lec_no=${l.lec_no}";
	}

	function unZzim() {
		location.href = "unZzimOk.do?lec_no=${l.lec_no}";
	}
	
	function order(){
		location.href = "order.do?lec_no=${l.lec_no}&selectDate=${l.lec_start }";			
	}
	
	function login(){		
		location.href = "login.do";			
	}
	if ($("#schedule").val()== '') {
		alert("일정을 선택해주세요");
		console.log("dd");
	}
	
</script>
</head>
<body>
	<!-- end header-->
	<section id="detail">

		<div class="wrapper">
			<section id="lectureInfo">
				<div class="img_box">
					<img src="images/lecture/${l.lec_image}" width="420px"
						alt="${l.lec_name}" id="lec_img">
				</div>
				<div class="detailBox">
					<h3>${l.lec_name}</h3>
					<h3 class="price">
						<fmt:formatNumber pattern="#,###">${l.lec_price - (l.lec_price* l.lec_sale)}</fmt:formatNumber>원
					</h3>
					<ul class="detailCreator">

						<li><img src="images/detail/profile_cr.png" alt="강사프로필" /></li>
						<li><p>${c.mem_nickname}</p></li>
					</ul>				
						<div class="scheduleBox">
							<select id="schedule">
								<option value="">----일정 선택하기----</option>
								<option value="${l.lec_start }" >${l.lec_start }</option>
							</select>
						</div>
					<div class="btnBox">
						<div class="zzim">
							<c:choose>
								<c:when test="${empty z.zzim_no }">
									<button id="btnZzim" onclick="zzim()">
										<img src="images/detail/ic_zzim.png" id="ic_zzim"> <span
											id="zzim_cnt">${zzimcnt}</span>
									</button>
								</c:when>

								<c:when test="${not empty z.zzim_no }">
									<button id="btnZzim" onclick="unZzim()">
										<img src="images/detail/ic_zzim_active.png"
											id="ic_zzim_active"> <span id="zzim_cnt">${zzimcnt}</span>
									</button>
								</c:when>
							</c:choose>
						</div>
						<c:if test="${value }"></c:if>
						<c:choose>
							<c:when test="${empty loginM }">
								<button id="btnApply" onclick="login()">
									<h4>클래스 신청하기</h4>
								</button>							
							</c:when>
							<c:when test="${not empty loginM }">
								<button id="btnApply" onclick="order()">
									<h4>클래스 신청하기</h4>
								</button>							
							</c:when>
						</c:choose>
					</div>
				</div>
			</section>

			<ul id="tab">
				<li class="on"><a href="#lec_content">클래스 소개</a></li>
				<li><a href="#lec_review">리뷰</a></li>
				<li><a href="#lec_ask">문의</a></li>
				<li><a href="#">취소/환불규정</a></li>
			</ul>

			<article id="lec_content">
				<div>${l.lec_content }</div>
			</article>

			<ul id="tab">
				<li><a href="#lec_content">클래스 소개</a></li>
				<li class="on"><a href="#lec_review">리뷰</a></li>
				<li><a href="#lec_ask">문의</a></li>
				<li><a href="#">취소/환불규정</a></li>
			</ul>
			<article id="lec_review">
				<h4>
					수강생들의 만족도
					<c:choose>
						<c:when test="${l.lec_grade > 0}">
							<c:forEach var="i" begin="1" end="${l.lec_grade }">
								<img src="images/detail/ic_star_on.png">
							</c:forEach>
							<c:forEach var="i" begin="${5 - r.re_grade }" end="${5 - r.re_grade }">
								<img src="images/detail/ic_star.png">
							</c:forEach>
						</c:when>
						<c:when test="${l.lec_grade == 5 or l.lec_grade == 0}">						
							<c:forEach var="i" begin="1" end="5">
								<img src="images/detail/ic_star_on.png">
							</c:forEach>						
						</c:when>
					</c:choose>

					<span class="cntReview">후기(${reviewcnt})</span>
				</h4>

				<ul>
					<c:forEach var="r" items="${reviewList }">
						<li>
							<div class="reviewTop">
								<h4>${r.mem_nickname }</h4> 
								<span class="star"> 
									<c:forEach var="i" begin="1" end="${r.re_grade }">
										<img src="images/detail/ic_star_on.png">
									</c:forEach> 
									<c:forEach var="j" begin="${r.re_grade }" end="4">
										<img src="images/detail/ic_star.png">
									</c:forEach>
								</span>
							</div>
							<div class="reviewContent">
								<h4>${r.re_title }</h4>
								<p>${r.re_conent }</p> 							
								<c:choose>
									<c:when test="${not empty r.re_img}">
										<div class="reviewImg">
											<img src="resources/profile/${r.re_img }" width="200px">
										</div>
									</c:when>
								</c:choose>
							</div>
						</li>
					</c:forEach>
				</ul>
			</article>

			<ul id="tab">
				<li><a href="#lec_content">클래스 소개</a></li>
				<li><a href="#lec_review">리뷰</a></li>
				<li class="on"><a href="#lec_ask">문의</a></li>
				<li><a href="#lec_cancle">취소/환불규정</a></li>
			</ul>

			<article id="lec_ask">
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
			</article>

		</div>
	</section>

</body>
	<%@include file="footer.jsp"%>
</html>