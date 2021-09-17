<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet" />
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/hd_ft.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/Clais_style.css" />
	
	<style type="text/css">
	#order_form{
		visibility: hidden;
	}
	</style>
	
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="js/main.js"></script>
	
	<script type="text/javascript">
	$(function(){
		
	});
	
	
	
		/**
		 * 결제하기 버튼이 눌렸을 때, 실행되는 함수
		 * 아임포트 결제창을 띄운다
		 */
		function onclickPaymentButton() {
			openRequestPay();
		}
	
		/**
		 * 아임포트 결제를 위한 아임포트 결제창을 띄우는 함수
		 * 내부적으로 아임포트 결제 함수 IMP.request_pay()를 호출하는 것으로 끝난다
		 */
		function openRequestPay() {
			IMP.init('imp18571675'); //자신의 가맹점 식별아이디 적용
			const requestPayOption = makeRequestPayOption();
			IMP.request_pay(requestPayOption, requestPayCallback); // 결제 정보로 결제를 하고, 결제가 끝나면 (잘 됐든 망했든) requestPayCallback를 호출해줘라
		}
		
		/**
		 * 아임포트 결제 함수 IMP.request_pay()에 넘겨줄 결제 정보를 만드는 함수
		 * @return requestPayOption 결제에 필요한 정보 객체
		 */
		function makeRequestPayOption() {
			// read
			const lec_name = '${lectureVo.lec_name}';
			
			const lec_sale = '${lectureVo.lec_sale}';
					
			const lec_price = '${lectureVo.lec_price}';
			let lec_saleprice = parseInt(${lectureVo.lec_price}) - (parseFloat(${lectureVo.lec_price}) * parseFloat(${lectureVo.lec_sale}));

			const input_mem_name = document.getElementById('input_mem_name');
			const mem_name = input_mem_name.value;
			
			const input_mem_phone = document.getElementById('input_mem_phone');
			const mem_phone = input_mem_phone.value;
			
			const input_mem_email = document.getElementById('input_mem_email');
			const mem_email = input_mem_email.value;
			
			// make
			const requestPayOption = {
				pg:'kcp',
				pay_method:'card',
				merchant_uid:'merchant_'+ new Date().getTime(),
				name: lec_name,
				amount: lec_saleprice,
				buyer_email: mem_email,
				buyer_name: mem_name,
				buyer_tel: mem_phone,
				buyer_addr: '공란',
				buyer_postcode:'123-456',
				//m_redirect_url:'https://localhost:8000/payok.html'
			};
			
			return requestPayOption;
		}
			
			
		/**
		 * 아임포트 결제 함수 IMP.request_pay()의 콜백 함수
		 * @param rsp 아임포트에서 넘겨주는 결과값
		 */
		function requestPayCallback(rsp) {
				console.log(rsp);

				if (rsp.success) {
					requestPaySuccess(rsp);
					
				} else{
					requestPayFail(rsp);		
				}
		}
		
		
		/**
		 * 아임포트 결제에 성공할 경우
		 * - [ ] 1. 우리 서버에 결제가 잘 됐다고 기록을 남겨야 한다
		 * - [ ] 2. 결제 성공 화면으로 이동해야 한다
		 * @param rsp 아임포트에서 넘겨주는 결과값
		 */
		function requestPaySuccess(rsp) {
			// !TODO 테스트 코드, 나중에 삭제
			var msg = '결제가 완료되었습니다.\n';
			msg += '고유ID:'+rsp.imp_uid +'\n';
			msg += '상점 거래ID:'+rsp.merchant_uid+'\n';
			msg += '결제 금액:'+rsp.paid_amount+'\n';
			msg += '카드 승인번호:'+rsp.apply_num+'\n';
			alert(msg);
			
			// 1. 서버 기록
		//	alert("서버에 기록합니다.");
			document.getElementById("payment_form").submit();
			
		//데이터베이스 payment에 insert할 sql mapping 파일, dbmanager,dao파일 만들기
			
			// 2. 화면 이동
			// location.href = "payok.html";
		}
		
		///이부분에 데이터 테이블에 집어넣는거 넣기
		/**
		 * 아임포트 결제에 실패할 경우
		 * - [ ] 어떻게 할지 확인 필요 (얼럿 띄우고 페이지 이동할지, 이동해서 띄울지, 이동하지 않을지 등등)
		 * @param rsp 아임포트에서 넘겨주는 결과값
		 */
		function requestPayFail(rsp) {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용:'+rsp.error_msg;
			alert(msg);
		}
	
	</script>
	
	<title>클레이스</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
    <!-- end header-->
    
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
    
  <div id="container">
    <section id="payment">
      <div id="paymentWrap">
        <article class="order_info">
         <!--   <h3>주문정보: ${lec_no}</h3>	-->
        	 <h3>주문정보</h3>
          <div class="infoWrap">
            <div class="lec_img"><img src="images/lecture/${lectureVo.lec_image}" width="200px" alt="" /></div>
            <div id="lec_info">
              <h4>${lectureVo.lec_name}</h4>
              <p>클래스 번호	: ${lectureVo.lec_no}<p>
              <p>선택한 일정	: ${selectDate}</p>
				
            </div>
          </div>
        </article>

        <article class="person_info">
          <h3>연락처 정보</h3>
          <div class="person_info_name">
            <h5>주문하시는분</h5>
            <input type="text" id="input_mem_name" value="${memberVo.mem_name}" />
          </div>
          <div class="person_info_phone">
            <h5>휴대폰 번호</h5>
            <input type="text" id="input_mem_phone" value="${memberVo.mem_phone}" />
          </div>
          <div class="person_info_name">
            <h5>이메일</h5>
            <input type="text" id="input_mem_email" value="${memberVo.mem_email}" />
          </div>
        </article>

<!--         <article class="coupon">
          <h3>쿠폰</h3>
          <form>
            <select>
              <option>쿠폰등록</option>
              <option>20,000원 할인 쿠폰</option>
            </select>
          </form>
        </article> -->

        <article class="payment">
          <h3>결제금액</h3>
          <!-- <p>
            총 금액
            <span> 180,000원</span>
          </p>
          <p>
            쿠폰 할인 금액
            <span> - 20,000원</span>
          </p> -->
          <h4 class="total">
            최종 결제 금액
            <span>
            <!--   <fmt:formatNumber type="number" maxFractionDigits="3" value="${lectureVo.lec_price}" />원</span>	-->
             <fmt:formatNumber pattern="#,###">${lectureVo.lec_price - (lectureVo.lec_price* lectureVo.lec_sale)}</fmt:formatNumber>원</span>
            
          </h4>
        </article>

        <!-- <article class="payment_method">
          <h3>결제방식</h3>
          <ul class="payment_btn">
            <li>카드결제</li>
            <li>무통장결제</li>
            <li><img src="images/payment/naverpay.png" width="200" alt="" /></li>
            <li><img src="images/payment/kakaopay.png" width="80" alt="" /></li>
          </ul>
        </article> -->

        <div class="payment_button">
          <button onclick="onclickPaymentButton();">결제하기</button>
        </div>
      </div>
      
      <!-- 데이터베이스에 결제정보 저장 할인율 계산전-->
      <!--  
     <div id="order_form">
      <form id="payment_form" action="paymentOK.do" method = "post"> 
      	<input type="text" name="mem_no" value="${memberVo.mem_no }">
      	<input type="text" name="lec_no" value="${lec_no }">
      	<input type="text" name="pay_type" value="신용카드">
      	<input type="text" name="pay_amount" value="${lectureVo.lec_price}">
      	<input type="submit" value="db저장" >
      </form>
      </div>
         </section>
        -->
        <c:set var="calPrice" value="${lectureVo.lec_price - (lectureVo.lec_price* lectureVo.lec_sale)}"/>
      	<fmt:parseNumber  var="salePrice" value="${calPrice}" type="number" integerOnly="true"/>   
		     <div id="order_form">
		      <form id="payment_form" action="paymentOK.do" method = "post"> 
		      	<input type="text" name="mem_no" value="${memberVo.mem_no }">
		      	<input type="text" name="lec_no" value="${lec_no }">
		      	<input type="text" name="pay_type" value="신용카드">
		      	
		      	<input type="text" name="pay_amount" value="${salePrice }">
		      	<input type="submit" value="db저장" >
		      </form>
		      </div>  
		      
        </section>    
        </div>   
     
	<%@ include file = "footer.jsp" %>
    <!-- end footer --> 
</body>
</html>