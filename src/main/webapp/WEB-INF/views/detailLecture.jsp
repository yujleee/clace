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
		if ($("#schedule").val()== '') {
			alert("일정을 선택해주세요");
			console.log("dd");
			return false;
		}
		location.href = "order.do?lec_no=${l.lec_no}&selectDate=${l.lec_start }";			
	}
	
	function login(){		
		location.href = "login.do";			
	}
	
	function askCheck(obj){
		let checked = obj.checked;
		if(checked){
			obj.value = "close";
		}
	}
	
	function clipBoard(){
		let dummy = document.createElement("input");
		const url = location.href;
		
		document.body.appendChild(dummy);
		dummy.value = url;
		dummy.select();
		document.execCommand("copy");
		alert("URL을 클립보드에 복사했습니다.");
		document.body.removeChild(dummy);
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
					<div class="infoTop">
						<div class="lectureInfo">
							<h3>${l.lec_name}</h3>
							<h3 class="price"><fmt:formatNumber pattern="#,###">${l.lec_price - (l.lec_price* l.lec_sale)}</fmt:formatNumber>원</h3>
						</div>
						<div class="clipboard" onclick="clipBoard()"><img src="images/detail/ic_share.png" alt="공유하기" /></div>
					</div>
						
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
									<button id="btnZzim" class="activeZzim" onclick="unZzim()">
							 
											<span id="zzim_cnt"><img src="images/detail/ic_zzim_active.png"
											id="ic_zzim_active"> ${zzimcnt}</span>
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
			<div class="avgReview">
				<h3>
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
				</h3>
				<span class="cntReview">후기(${reviewcnt})</span>
			</div>

				<ul>
					<c:forEach var="r" items="${reviewList }">
						<li>
						<div class="reviewContent">
							<div class="reviewTop">
								<div class="mem">
									<div class="memProfile"><img src="/resources/profile/${r.mem_profile }" width="100%" alt="프로필" /></div>
									<h4>${r.mem_nickname }</h4> 
								</div>
								<span class="star"> 
									<c:forEach var="i" begin="1" end="${r.re_grade }">
										<img src="images/detail/ic_star_on.png">
									</c:forEach> 
									<c:forEach var="j" begin="${r.re_grade }" end="4">
										<img src="images/detail/ic_star.png">
									</c:forEach>
								</span>
							</div>
							
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
				<form action="insertAsk" method="post">
				<input type="hidden" value="${l.lec_no }" name="lec_no">
					<div class="inputAsk">
						<textarea rows="3" cols="118" class="ask" name="ask_content" placeholder="문의사항을 입력해주세요."></textarea>
						<div class="applyBox">
							<input type="checkbox" name="ask_open_close" value="open" onclick="askCheck(this)"><label>비밀글</label>
							<input type="submit" value="등록">
						</div>
					</div>
				</form>
				<p>${m.mem_no }</p>	
				<ul class="listAsk">
					<c:forEach var="a" items="${askList }">
						<li>
							<div class="userInfo">
							<c:choose>
								<c:when test="${a.ask_open_close eq 'open'}">
									<h4>${a.mem_nickname }</h4>
								</c:when>
								<c:when test="${a.ask_open_close eq 'close' }">
									<h4>비밀글</h4>
								</c:when>
							</c:choose>
								
								<p>${a.ask_date }</p>
							</div>
							<c:choose>
								<c:when test="${a.ask_open_close eq 'open'}">
									<p class="askContent">${a.ask_content }</p>
								</c:when>
								<c:when test="${a.mem_no eq m.mem_no}">
									<p class="askContent">${a.ask_content}</p> 
									<button class="btnDelete">삭제</button>
								</c:when>
								<c:when test="${a.ask_open_close eq 'close' }">
									<p class="askContent">비밀글입니다.</p>
								</c:when>
							</c:choose>
						</li>
					</c:forEach>
				</ul>
				
			</article>
			
			<ul id="tab">
				<li><a href="#lec_content">클래스 소개</a></li>
				<li><a href="#lec_review">리뷰</a></li>
				<li><a href="#lec_ask">문의</a></li>
				<li class="on"><a href="#lec_cancle">취소/환불규정</a></li>
			</ul>
			<article id="lec_cancle">
			
				<p>클래스 구매 후 2주 이내 : 100% 환불<br>
				클래스 구매 후 2주 후 : 환불 불가</p>
			</article>

		</div>
	</section>

</body>
	<%@include file="footer.jsp"%>
</html>