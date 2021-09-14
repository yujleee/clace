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
<%@include file ="header.jsp" %>
    
    <div id="getMemberInfoForm">
		<h2 id="MemberInfo">  회 원 정 보 </h2>
			<img src="resources/profile/${m.mem_profile }" height="80" width="80"><br>
			아이디&nbsp;:&nbsp; ${m.mem_id }<br>
			비밀번호&nbsp;:&nbsp;  ${m.mem_pwd }<br>
			이름&nbsp;:  ${m.mem_name }<br>
			닉네임&nbsp;:  ${m.mem_nickname }<br>
			휴대폰번호&nbsp;:  ${m.mem_phone }<br>
			이메일&nbsp;:  ${m.mem_email }<br>
			성별&nbsp;:  ${m.mem_gender }<br>
			직업&nbsp;:  ${m.job_no }<br>
			(&nbsp;1&nbsp;:&nbsp;학생&nbsp; 2&nbsp;:&nbsp;취준생&nbsp; 3&nbsp;:&nbsp;직장인&nbsp; 
			4&nbsp;:&nbsp;프리랜서&nbsp;5&nbsp;:&nbsp;자영업자&nbsp; 6&nbsp;:&nbsp;주부&nbsp; 7&nbsp;:&nbsp;기타&nbsp;)<br>
			연령대&nbsp;:  ${m.age_no }<br>
			(&nbsp;1&nbsp;:&nbsp;10대&nbsp; 2&nbsp;:&nbsp;20대&nbsp; 3&nbsp;:&nbsp;30대&nbsp; 
			4&nbsp;:&nbsp;40대&nbsp; 5&nbsp;:&nbsp;50대&nbsp;)<br>
			<a href="updateMemberInfo.do?mem_no=${m.mem_no }" id="getupdateInfoBtn">수정하기</a>
			<a href="#" onclick="confirmDelete(${m.mem_no})" id="deleteInfoBtn">탈퇴하기</a>
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>