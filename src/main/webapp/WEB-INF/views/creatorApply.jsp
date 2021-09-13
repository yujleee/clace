<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/lectureList.js"></script>
    <title>강사 신청</title>
</head>
<body>
	<%@include file ="header.jsp" %>
    <!-- end header-->
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
    <section id="content">
      <div class="wrap">
        <div class="title">
          <h3>강사 신청서</h3>
          <hr>
          <form action="insertCreator.do" method="post">
  		  사업자명<br>
          <input type="text" name="cr_bsname" value="" required="required"><br>
          사업자번호<br>
          <input type="text" name="cr_bsno" value="" required="required"><br>
          본인소개<br>
          <textarea name="cr_info" rows="5" cols="30" placeholder="(경력, 보유자격증, 수상 이력, 언론 활동 등 자유기재)"></textarea><br>
          <input type="submit" value="등록">
		  <input type="reset" value="취소">
	</form>
        </div>
      </div>
    </section>
   <%@include file = "footer.jsp" %>
</body>
</html>