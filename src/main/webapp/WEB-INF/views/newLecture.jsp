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
    <link rel="stylesheet" href="css/newClass.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/lectureList.js"></script>
    <title>신규 클래스</title>
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
          <h3>신규 클래스</h3>
          <form>
            <select name="sort" id="sort">
              <option value="popular">인기순</option>
              <option value="maxr">최고가순</option>
              <option value="popular">최저가순</option>
              <option value="review">후기순</option>
            </select>
          </form>
        </div>
        <div class="lectures"></div>
        <div class="pager">
          <span><</span>
          <span>1</span>
          <span>></span>
        </div>
      </div>
    </section>
   <%@include file = "footer.jsp" %>
</body>
</html>