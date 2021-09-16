<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
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
</head>
  <body>

   <%@include file ="header.jsp" %>

    <div id="updateMemberInfoForm">
		<h2 id="updateMemberInfo">회 원 정 보 수 정</h2>
		<form action="updateMemberInfo.do" method="post" enctype="multipart/form-data">
			  <input type="hidden" name="mem_no" value="${loginM.mem_no }"><br>
			  <input type="hidden" name="mem_profile" value="${loginM.mem_profile }">
			<div id="updateProfileImg"><img  src="/resources/profile/${loginM.mem_profile }" name="mem_profile" 
					width="80" height="80" id="profileImg"><br>
			</div>
			<table>
				<tr>
					<td>
						<label for="mem_pwd">비밀번호</label>
					</td>
					<td>
						<input type="text" name="mem_pwd" id="mem_pwd" value="${m.mem_pwd }">
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="mem_nickname">닉네임</label>
					</td>
					<td>
						<input type="text" name="mem_nickname" id="mem_nickname" value="${m.mem_nickname }">

					</td>
				</tr>
				
				<tr>
					<td>
						<label for="mem_profile">프로필사진&nbsp;</label>
					</td>
					<td>
						<input type="file" name="uploadProfileFile" id="mem_profile" value="${m.mem_profile }">
					</td>
				</tr>
				
				<tr>
					<td>
						<label for="mem_phone">휴대폰번호&nbsp;</label>
					</td>
					<td>
						<input type="text" name="mem_phone" id="mem_phone" value="${m.mem_phone }">

					</td>
				</tr>
				
				<tr>
					<td>
						<label for="mem_email">이메일</label>
					</td>
					<td>
						<input type="text" name="mem_email" id="mem_email" value="${m.mem_email }">

					</td>
				</tr>
				<tr>
					<td>
						<label for="mem_gender">성별</label>
					</td>
					<td>
					<input type="hidden" name="mem_gender" value="${m.mem_gender }">
					<select id="mem_gender_data" name="mem_gender_data" class="option">
						<option  value="0">성별선택</option>
						<option value="male">male</option>
						<option value="female">female</option>
					</select>
					</td>
				</tr>
					<tr>
						<td>
							<label for="job_no">직업</label>
						</td>
						<td>
						<input type="hidden" name="job_no" value="${m.job_no }">
						<select id="job_no_data" name="job_no_data" class="option">
							<option value="0">직업선택</option>
							<option value="1" <c:if test="${m.job_no == 1}">selected</c:if>>학생</option>
							<option value="2" <c:if test="${m.job_no == 2}">selected</c:if>>취준생</option>
							<option value="3" <c:if test="${m.job_no == 3}">selected</c:if>>직장인</option>
							<option value="4" <c:if test="${m.job_no == 4}">selected</c:if>>프리랜서</option>
							<option value="5" <c:if test="${m.job_no == 5}">selected</c:if>>자영업자</option>
							<option value="6" <c:if test="${m.job_no == 6}">selected</c:if>>주부</option>
							<option value="7" <c:if test="${m.job_no == 7}">selected</c:if>>기타</option>
						</select><br>
					</td>
					</tr>
					<tr>
						<td>
							<label for="age_no">연령대</label>
						</td>
						<td>
							<input type="hidden" name="age_no" value="${m.age_no }">
							<select id="age_no_data" name="age_no_data" class="option">
								<option value="0">연령대선택</option>
								<option value="1" <c:if test="${m.age_no == 1}">selected</c:if>>10대</option>
								<option value="2" <c:if test="${m.age_no == 2}">selected</c:if>>20대</option>
								<option value="3" <c:if test="${m.age_no == 3}">selected</c:if>>30대</option>
								<option value="4" <c:if test="${m.age_no == 4}">selected</c:if>>40대</option>
								<option value="5" <c:if test="${m.age_no == 5}">selected</c:if>>50대 이상</option>
							</select><br>
						</td>
					</tr>
			</table>
			<input type="submit" value="수정하기" id="updateInfoBtn">
			</div>
	</form>

	 <%@include file="footer.jsp" %>

</body>
</html>