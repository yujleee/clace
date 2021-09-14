<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=0.8" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
    <title>회원가입</title>
    <link rel="stylesheet" href="css/join.css" />
    <link rel="stylesheet" href="css/hd_ft.css" />
  </head>
  <body>
   	<%@ include file = "header.jsp" %>
	<!-- end header -->
	
    <!-- header: clace 로고 표시 
    <div id="header">
      <a href="index.html"><img src="images/main/logo.png" id="logo" alt="클레이스" /></a>
    </div>
    -->

    <!-- wrapper -->
    <div id="wrapper">
      <!-- content-->
      <div id="content">
  
    <form action="join.do" method="post">
     <h3>회원가입</h3>
        <!-- ID -->	
	<div >
	아이디<input type="text" class="design" name="mem_id"><br>
	</div>

        <!-- PW1 -->
  	비밀번호<input type="password" class="design" name="mem_pwd"><br>
  	
        <!-- PW2
  	비밀번호 재확인: <input type="text" name="mem_pwd"><br>  -->
  	
        <!-- NAME -->
    이름<input type="text" class="design" name="mem_name"><br>
    
        <!-- NICKNAME -->
    닉네임<input type="text" class="design" name="mem_nickname"><br>  

        <!-- EMAIL -->
    이메일<input type="text" class="design" name="mem_email"><br>    

        <!-- MOBILE -->
    휴대폰번호<input type="text" class="design" name="mem_phone"><br>  
      
        <!-- GENDER -->
    성별<select id="mem_gender" class="design" name="mem_gender">
     		 <option>성별을 선택해주세요</option>
              <option value="M">남자</option>
              <option value="F">여자</option>            
     	</select>
       
        <!-- JOB -->
  	직업<select id="job_no" class="design" name="job_no">
              <option>직업을 선택해주세요</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
            </select>
 	1.학생 &nbsp;2.취준생 &nbsp;3.직장인 &nbsp;4.프리랜서 &nbsp;5.자영업자 &nbsp;6.주부 &nbsp;7.기타<br>
     
        <!-- AGE -->
   	연령대<select id="age_no" class="design" name="age_no">
              <option>연령대를 선택해주세요</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
            </select>                        
      1.20세 이하 &nbsp;2.21~30세 &nbsp;3.31~40세 &nbsp;4.41~50세 &nbsp;5.51~60세 <br>    
    
        <!-- JOIN BTN-->
        <div class="btn_area">

             <input type="submit" value="등록">
		 
        </div>
         </form>
      </div>
    </div>

    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" title="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#header" class="topBtn"><img src="images/main/btn_top.png" alt="top" title="top" /></a>
    </div>
    

  </body>
</html>