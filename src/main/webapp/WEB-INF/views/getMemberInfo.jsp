<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%@include file ="header.jsp" %>
    
    <div id="getMemberInfoForm">
		<h2 id="MemberInfo">  회 원 정 보 </h2>
			<img src="resources/profile/${m.mem_profile }" height="80" width="80"><br>
			<p class="updateMember">아이디 &nbsp;&nbsp; ${m.mem_id }</p>
			<p class="updateMember">비밀번호 &nbsp;&nbsp; ${m.mem_pwd }</p>
			<p class="updateMember">이름 &nbsp;&nbsp;  ${m.mem_name }</p>
			<p class="updateMember">닉네임 &nbsp;&nbsp;  ${m.mem_nickname }</p>
			<p class="updateMember">휴대폰번호 &nbsp;&nbsp;  ${m.mem_phone }</p>
			<p class="updateMember">이메일 &nbsp;&nbsp;  ${m.mem_email }</p>
			<p class="updateMember">성별 &nbsp;:&nbsp; ${m.mem_gender }</p>
			<c:choose>
				<c:when test="${m.job_no == 1}">
					<p class="updateMember">직업&nbsp;&nbsp; 학생</p>	
				</c:when>	
				<c:when test="${m.job_no == 2}">
					<p class="updateMember">직업&nbsp;&nbsp; 취준생</p>	
				</c:when>
				<c:when test="${m.job_no == 3}">
					<p class="updateMember">직업&nbsp;&nbsp; 직장인</p>		
				</c:when>
				<c:when test="${m.job_no == 4}">
					<p class="updateMember">직업&nbsp;&nbsp; 프리랜서</p>
				</c:when>
				<c:when test="${m.job_no == 5}">
					<p class="updateMember">직업&nbsp;&nbsp; 자영업자</p>
				</c:when>
				<c:when test="${m.job_no == 6}">
					<p class="updateMember">직업&nbsp;&nbsp; 주부</p>	
				</c:when>
				<c:when test="${m.job_no == 7}">
					<p class="updateMember">직업&nbsp;&nbsp; 기타</p>	
				</c:when>
			</c:choose>
			
			<c:choose>
				<c:when test="${m.age_no == 1}">
					<p class="updateMember">연령대&nbsp;: 10대</p>
				</c:when>	
				<c:when test="${m.age_no == 2}">
					<p class="updateMember">연령대&nbsp;: 20대</p>	
				</c:when>
				<c:when test="${m.age_no == 3}">
					<p class="updateMember">연령대&nbsp;: 30대</p>		
				</c:when>
				<c:when test="${m.age_no == 4}">
					<p class="updateMember">연령대&nbsp;: 40대</p>
				</c:when>
				<c:when test="${m.age_no == 5}">
					<p class="updateMember">연령대&nbsp;: 50대이상</p>
				</c:when>
			</c:choose>
			<a href="updateMemberInfo.do?mem_no=${m.mem_no }" id="getupdateInfoBtn">수정하기</a>
			<a href="#" onclick="confirmDelete(${m.mem_no})" id="deleteInfoBtn">탈퇴하기</a>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>