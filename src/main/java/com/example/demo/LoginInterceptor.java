package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler)throws Exception{
		HttpSession session = request.getSession(); //세션값이 있는지 확인을 위해 객체 생성
		if(session.getAttribute("loginM") != null) {
			//로그인 상태임
			return super.preHandle(request, response, handler);
	
		} else {
			response.sendRedirect("/login.do");
			return false;
		}
	}
}
