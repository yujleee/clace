<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

//

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
$(function){
	$("#check_module").click(function(){
		IMP.init(imp40097888); //자신의 가맹점 식별아이디 적용
		IMP.request_pay({
			pg:'kcp',
			pay_method:'card',
			merchant_uid:'merchant_'+ new Date().getTime(),
			name:'주문명:결제테스트',
			amount:${lectureVo.lec_price },
			buyer_email:'iamport@siot.do',
			buyer_name:'구매자이름',
			buyer_tel:'010-1234-5678',
			buyer_addr:'서울특별시 강남구 삼성동',
			buyer_postcode:'123-456',
			//m_redirect_url:'https://localhost:8000/payok.html'
		},function (rsp){
			console.log(rsp);
			if(rsp.success){
				console.log(rsp);
				if(rsp.success){
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID:'+rsp.imp_uid;
					msg += '상점 거래ID:'+rsp.merchant_uid;
					msg += '결제 금액:'+rsp.paid_amount;
					msg += '카드 승인번호:'+rsp.apply_num;
					alert(msg);
					location.href = "payok.html";
				}else{
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용:'+rsp.error_msg;
					alert(msg);
				}			
		}); //request_pay
	});
});
</script>
</head>
<body><button id="check_module" type="button">결제</button>
</body>
</html>



