<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/chat.js"></script>
</head>
<body>
	<div id="chat">
		<div class="chatTop">
			<h4>실시간 채팅</h4>
			<button class="btnClose"><img src="images/main/btn_chatClose.png" width="80%" alt="창닫기" /></button>
		</div>
		<div class="showMsg"></div>
		<div class="inputMsg">
			<input type="text" id="msg" placeholder="보낼 메세지를 입력해주세요"/>
			<button class="btnSend">전송</button>
		</div>
	</div>
</body>
</html>