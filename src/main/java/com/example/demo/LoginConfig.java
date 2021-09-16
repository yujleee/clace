package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class LoginConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		//WebMvcConfigurer.super.addInterceptors(registry);
		registry.addInterceptor(new LoginInterceptor())
		.addPathPatterns("/**") 
		.excludePathPatterns("/css/**") 
		.excludePathPatterns("/js/**") 
		.excludePathPatterns("/images/**") 
		.excludePathPatterns("/resources/**") 
		.excludePathPatterns("/login.do", "/loginOk.do","/join.do", "/joinOk.do", "/","/index", 
				"/bestLecture", "/saleLecture", "/categoryLecture", "/recommandLecture", "/newLecture",
				"/listBestLecture", "/listSaleLecture", "/listNewLecture", "/listAroundMe", "/listCategory",
				"/searchLecture","/detailLecture.do","/chat"); 
	}

	
}
