<%@page import="java.util.Date"%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/29.2.0/classic/ckeditor.js"></script>
    <title>클레이스: 강의 등록</title>
</head>
<body>
<%!
Date today = new Date();
int year = today.getYear()+1900;
int imonth = today.getMonth()+1;
int iday = today.getDate();
String month="";
String day="";
String lastday = Integer.toString(iday+6);
%>

<% if (imonth<10)
	month = "0"+ Integer.toString(imonth);	
else month = Integer.toString(imonth);

if (iday<10)
	day = "0"+ Integer.toString(iday);	
else day = Integer.toString(iday);
%>
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
	<section id="container">
		<div id="container_box">
			<h2>강의 등록</h2>
			
			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			
			<div class="inputArea">	
				<label for="cate_no">강의 카테고리</label>
				<select class="cate_no">
				<option value="" selected disable hidden>==선택하세요==</option>
				<c:forEach var = "c" items="${categoryList }">					
					<option value="${c.cate_no }">${c.cate_title }</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputArea">
				<label for="lecture_name">강의명</label>
				<input type="text" id="lecture_name" name="lecture_name" />
			</div>
			
			<div class="inputArea">
				<label for="lec_price">가격</label>
				<input type="number" id="lec_price" name="lec_price" min="0"/>원
			</div>
			
			<div class="inputArea">
				<label for="lec_sale">할인율</label>
				<input type="number" id="lec_sale" name="lec_sale" min="0"/>%
			</div>
			
			<div class="inputArea">
				<label for="lec_onoff">온/오프라인 여부</label>
				<input type="radio" id="lec_onoff" name="lec_onoff" value="온라인" />온라인
				<input type="radio" id="lec_onoff" name="lec_onoff" value="오프라인"  checked="checked"/>오프라인
			</div>
			
			<div class="inputArea">
				<label for="lec_place">장소</label>
				<input type="text" id="lec_place" name="lec_place" placeholder="도로명주소로입력"/>
			</div>
			
			<script>
				$(document).ready(function(){
					 
				    // 라디오버튼 클릭시 이벤트 발생
				    $("input:radio[name=lec_onoff]").click(function(){
				 
				        if($("input[name=lec_onoff]:checked").val() == "오프라인"){
				            $("input:text[name=lec_place]").attr("disabled",false);
				            // radio 버튼의 value 값이 오프라인이면 활성화
				 
				        }else if($("input[name=lec_onoff]:checked").val() == "온라인"){
				              $("input:text[name=lec_place]").attr("disabled",true);
				            // radio 버튼의 value 값이 온라인이면 비활성화
				        }
				    });
				});
			</script>
			
			<div class="inputArea">
				<label for="lec_start">강의 시작일</label>
				<input type="date" id="lec_start" name="lec_start" min="<%=year %>-<%=month %>-<%=day %>" />
			</div>
			
			<div class="inputArea">
				<label for="lec_end">강의 종료일</label>
				<input type="date" id="lec_end" name="lec_end"/>
			</div>
			​
			<div class="inputArea">
				<label for="lec_content">강의상세소개</label>
				<textarea rows="10" cols="50" id="lec_content" name="lec_content" placeholder="내용을 입력하세요."></textarea>
				
				<script>
					ClassicEditor
					.create(document.querySelector("#lec_content"),
				            {
				                language: "ko",
				                simpleUpload:
				                {
				                    uploadUrl: "/images/lecture",
				                    withCredentials: true,
				                }
				            })
				        .then(newEditor => {
				            editor = newEditor;
				        })
						.catch(error => {
							console.error(error);
						});
				</script>
				
			</div>
			
			<div class="inputArea">
				<label for="lec_hashtag">해시태그</label>
				<input type="text" id="lec_hashtag" name="lec_hashtag" />
			</div>
			
			<div class="inputArea">
				<label for="lec_gender">강의 선호 성별</label>
				<input type="radio" id="lec_gender" name="lec_gender" checked="checked" value="male" />남성
				<input type="radio" id="lec_gender" name="lec_gender" value="female" />여성
			</div>
			
			<div class="inputArea">	
				<label for="age_no">강의 선호 나이</label>
				<select class="age_no">
				<option value="" selected disable hidden>==선택하세요==</option>
				<c:forEach var = "a" items="${ageList }">					
					<option value="${a.age_no }">${a.age_group }</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputArea">	
				<label for="job_no">강의 선호 직업</label>
				<select class="job_no">
				<option value="" selected disable hidden>==선택하세요==</option>
				<c:forEach var = "j" items="${jobList }">					
					<option value="${j.job_no }">${j.job_title }</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputArea">
				<label for="lec_image">썸네일이미지</label>
				<input type="file" id="lec_image" name="file" />
				<div class="select_img"><img src="" /></div>
				
				<script>
					$("#lec_image").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(240);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				
				<%=request.getRealPath("/") %>
				
			</div>
			
			<div class="inputArea">
				<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
			</div>
			
			</form>
			
		</div>
	</section>
</body>
</html>