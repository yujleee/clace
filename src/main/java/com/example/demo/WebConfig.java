package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		//WebMvcConfigurer.super.addResourceHandlers(registry);
		 registry.addResourceHandler("/myPage/**") // 매칭될 url
         .addResourceLocations("classpath:/static/myPage/") // 리소스 위치
         .setCachePeriod(20); //캐시 지속 시간 
	}
	
}
