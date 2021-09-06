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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="js/main.js"></script>
	
	<script type="text/javascript">
	
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
			
			const lec_price = '${lectureVo.lec_price}';
			
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
				amount: lec_price,
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
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID:'+rsp.imp_uid;
			msg += '상점 거래ID:'+rsp.merchant_uid;
			msg += '결제 금액:'+rsp.paid_amount;
			msg += '카드 승인번호:'+rsp.apply_num;
			alert(msg);
			
			// 1. 서버 기록
			
			// 2. 화면 이동
			// location.href = "payok.html";
		}
		
		
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
 	      <header>
      <div class="headerwrap">
        <div id="navTop">
          <h1>
            <a href="index.html"><img src="images/main/logo.png" width="120" alt="클레이스" /></a>
          </h1>
          <div class="search">
            <input type="search" placeholder="듣고 싶은 클래스가 있으신가요?" name="search" />
            <span class="ic_search"></span>
          </div>
          <ul class="gnbIcons">
            <li>
              <a href="creator_home.html"><img src="images/main/ic_home.png" alt="강사홈" /></a>
            </li>
            <li>
              <a href="community.html"><img src="images/main/ic_comu.png" alt="커뮤니티" /></a>
            </li>
            <li>
              <a href="#"><img src="images/main/ic_zzim.png" alt="찜" /></a>
            </li>
            <li>
              <a href="myPage.html"><img src="images/detail/profile_user.png" alt="마이페이지" /></a>
            </li>
          </ul>
        </div>
        <nav>
          <ul>
            <li></li>
            <li><a href="#">추천 클래스</a></li>
            <li><a href="#">특가 할인</a></li>
            <li><a href="new_lectures.html">신규 클래스</a></li>
            <li><a href="community.html">커뮤니티</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- end header-->
    <div id="fixed"><img src="images/main/btn_talk.png" alt="실시간 문의" /></div>
    <div id="btn_top">
      <a href="#navTop" class="topBtn"><img src="images/main/btn_top.png" alt="top" /></a>
    </div>
    <!-- end buttons-->
    <section id="payment">
      <div id="paymentWrap">
        <article class="order_info">
          <h3>주문정보: ${lec_no}</h3>
          <div class="infoWrap">
            <div class="lec_img"><img src="images/main/img_cls1.jpg" width="80" alt="" /></div>
            <div id="lec_info">
              <h4>클래스일정: ${lectureVo.lec_name}</h4>
              <p>선택한 일정: ${selectDate}</p>
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
            <span> <fmt:formatNumber type="number" maxFractionDigits="3" value="${lectureVo.lec_price}" />원</span>
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
    </section>

    <footer>
      <div class="ftWrap">
        <h1></h1>
        <ul class="ft_info clear">
          <li>클레이스</li>
          <li>contact@clace.com</li>
          <li>TEL 02-123-124</li>
          <li>clace All rights reserved</li>
        </ul>
      </div>
    </footer>
    <!-- end footer --> 
</body>
</html>