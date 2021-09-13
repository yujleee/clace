<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> <!-- 가격표시 -->   
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
    <link rel="stylesheet" href="css/creator_home.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>클레이스: 강사 홈</title>
</head>
<body>
	<%@include file ="header.jsp" %>
    <!-- end header-->
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
	<div id="wrapper">
    	<div id="contentwrapper">
    		<div id="creator">
    			<span id="mem_profile">
    				<img alt="강사 프로필" src="${c.mem_profile }" width="80px" height="80px">
    			</span>
    			<div id="like_box">
    				<img alt="강사 즐겨찾기" src="./images/detail/ic_like_active.png" id="">
					<div id="like_cnt">${cnt }</div>
    			</div>
    			<h3 id="cr_nickname">
    				<label for ="nickname">${c.mem_nickname }</label>
    			</h3>
    			<div id="cr_modify">
    				<a href="creatorUpdate">
    					<button id="modify_btn"><span>강사정보수정</span></button>
    				</a>
    			</div>
    			<h6 id="email">
    				<label for="email">${c.mem_email }</label>
    			</h6>
    		</div>
    		<div class="empty"></div>
    		<div id="category">
    			<a href ="creatorHome"><button>나의 강의</button></a>
    			<a href ="askAnswer"><button>클래스 관리</button></a>
    			<a href ="salesInfo"><button>문의 관리</button></a>
    		</div>
    		</div>
    		</div>
    		
    		
    		  <section id="content">
	      		<div class="wrap">
	    		<div class="empty"></div>
	    		<div class="title"><h3>진행중인 클래스</h3><a href ="insertLecture"><button>강의 등록</button></a></div>
	    		<div class="lectures"></div>
	       		 <c:forEach var="l" items="${list }">
        		<div class="lecture">
        			<a href="detailLecture.do?lec_no=${l.lec_no}">
        				<div class="img_lecture">
        					<img alt="${l.lec_name }" width="240" src="images/lecture/${l.lec_image }">
        				</div>
        				<p>${l.lec_name }</p>
        				<h4>
        					 <fmt:formatNumber pattern="#,###">${l.lec_price - (l.lec_price* l.lec_sale)}</fmt:formatNumber>원
        				</h4>
        				<div class="star">
        					<img alt="img_star" src="images/main/ic_star.png">
        					<span class="rw_total">${l.lec_grade }</span>
        				</div>
        			</a>
        			<div class="lectureButton">
        				<a href ="updateLecture"><button>강의 수정</button></a>
        				<a href ="deleteLecture"><button>강의 삭제</button></a>
        			</div>
        		</div>
        	</c:forEach>
        </div>
        <div class="pager">
          	<c:forEach var="i" begin="1" end="${totalPage }">
				<!-- 상태유지한 TotalPage까지 페이지번호 출력-->
				<a href="bestLecture?pageNum=${i }">${i }</a>&nbsp;
			</c:forEach>
        </div>
    </section>
     <%@include file = "footer.jsp" %>
</body>
</html>