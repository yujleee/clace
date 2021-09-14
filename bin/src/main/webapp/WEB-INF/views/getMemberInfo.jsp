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
<%@include file="header.jsp" %>
    
    <div id="getMemberInfoForm">
		<h2 id="MemberInfo">  회 원 정 보 </h2>
			<img src="resources/profile/${m.mem_profile }" height="80" width="80"><br>
			아이디: ${m.mem_id }<br>
			비밀번호:  ${m.mem_pwd }<br>
			이름:  ${m.mem_name }<br>
			닉네임:  ${m.mem_nickname }<br>
			휴대폰번호:  ${m.mem_phone }<br>
			이메일:  ${m.mem_email }<br>
			성별:  ${m.mem_gender }<br>
			직업:  ${m.job_no }<br>
			연령대:  ${m.age_no }<br>
			<a href="updateMemberInfo.do?mem_no=${m.mem_no }" id="updateInfoBtn">수정하기</a>
			<a href="#" onclick="confirmDelete(${m.mem_no})" id="deleteInfoBtn">탈퇴하기</a>
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>