package com.example.demo.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class ChatHandler extends TextWebSocketHandler {
	//private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	//private static Logger logger = LoggerFactory.getLogger(ChatHandler.class);
	private HashMap<String, WebSocketSession> sessionMap = new HashMap<String, WebSocketSession>();
	
	
	@Override //클라이언트 연결되었을 때
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//logger.info(session.getPrincipal().getName() + "님이 입장하셨습니다.");
		sessionMap.put(session.getId(), session);
		System.out.println("연결됨");
	}
	
	@Override //클라이언트가 웹소켓으로 메세지 전송했을 때
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		//logger.info(session.getId() + ":" + message.getPayload());
		String msg = message.getPayload(); //메세지 발송
		System.out.println("보낸 메세지 > " + msg);
		for(String key : sessionMap.keySet()) {
			WebSocketSession wss = sessionMap.get(key);
			try {
				wss.sendMessage(new TextMessage(msg));
				System.out.println("메세지 보냄");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
		//모든 유저에게 메세지 출력
		
		  for(String key: sessionMap.keySet()) { 
			  WebSocketSession s = sessionMap.get(key);
			  s.sendMessage(new TextMessage(message.getPayload()));
		  }
		 
	}
	
	@Override //클라이언트 연결을 끊었을 때
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//sessionList.remove(session);
		//logger.info(session.getPrincipal().getName() + "님이 퇴장하셨습니다.");
		for(String key : sessionMap.keySet()) {
			WebSocketSession s = sessionMap.get(key);
			s.sendMessage(new TextMessage("연결이 끊어졌습니다."));
		}
		System.out.println("연결끊음");
		sessionMap.remove(session.getId());
	}
	

}