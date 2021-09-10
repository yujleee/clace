package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ServerEndpoint("/chatting")
public class ChatController {
	private static final List<Session> session = new ArrayList<Session>();
	//private final SimpMessagingTemplate simpMessagingTemplate;
	
	@RequestMapping("/chat")
	@ResponseBody
	public void chat(Model model) {
	}
	
	@OnOpen
	public void open(Session newUser) {
		System.out.println("새로운 유저");
		session.add(newUser);
		System.out.println(newUser.getId());
	}
	
	@OnMessage //사용자로부터 메세지를 받았을 때 
	public void getMsg(Session recieveSession, String msg) {
		for(int i=0; i<session.size(); i++) {
			if(!recieveSession.getId().equals(session.get(i).getId())) {
				try {
					session.get(i).getBasicRemote().sendText("<b>" + session.get(i).getId() + "</b> : "+ msg);
					//세션에 있는 모든 사용자에게 메세지 전달
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				try {
					session.get(i).getBasicRemote().sendText("<b>나</b>: " + msg);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	@OnClose
	public void close(Session recieveSession) {
		session.remove(recieveSession.getId());
		System.out.println("세션 삭제");
	}
	
}
