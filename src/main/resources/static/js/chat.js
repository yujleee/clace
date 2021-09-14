$(function() {

	$("#fixed").click(function() {
		$("#chat").css({ 'display': 'block' });
		$("#chat").animate({ 'right': '8%' }, { 'duration': '1000' });
		connect();
	});

	$(".btnSend").click(function() {
		send();
	})

	$(".showMsg").keyup(function() {
		$(this).css('height', 'auto');
		$(this).height(this.scrollHeight);
	})
	
	$(".btnClose").click(function(){
		$("#chat").animate({ 'right': '-30%' }, { 'duration': '1000' })
		.css({ 'display': 'none' });
		webSocket.close();
	})

	let webSocket = null;
	function connect(){
		
		webSocket = new WebSocket("ws://" + location.host + "/chat");
		webSocket.onopen = function(e) {
			//소켓 오픈시 초기화
			console.log("socket on");
	
		};
	
		webSocket.onmessage = onMessage;
	
		webSocket.onerror = function(e) {
			console.log(e);
		}
	
		webSocket.onclose = function(){
			console.log("socket off");
		};
	}

	
	function onMessage(data) {
		let sendingData = data.data;
		console.log(`onMessage: ${sendingData}`);
		let sessionId = null; //데이터 보낸 사람
		let msg = null;
		let arr = sendingData.split(":");

		//현재 로그인한 사람
		sessionId = arr[0];
		msg = arr[1];

		if (sessionId === '<b>나</b>') {
			$(".showMsg").append(`<p class="send">${sessionId} : ${msg}</p>`)
				.stop()
				.animate({ scropllTop: $(".showMsg")[0].scrollHeight }, 1000);

		} else {
			$(".showMsg").append(`<p>${sessionId} : ${msg}</p>`)
				.stop()
				.animate({ scropllTop: $(".showMsg")[0].scrollHeight }, 1000);
		}

		console.log(`받은 메세지: ${msg}`);
	}
/*
	//엔터키 눌렀을 때도 전송 
	const inputMsg = document.getElementById("msg");
	inputMsg.addEventListener("keypress", function(e) {
		if (e.keyCode == 13) {
			send(); //엔터누르면 전송
			console.log("전송 동작");
		}
	}); */

	function send() {
		let msg = $("#msg").val();
		//webSocket.send(`${userName}:${msg}`);
		webSocket.send(msg);
		$("#msg").val("");
		console.log(`보낸 메세지: ${msg}`);
	}

});