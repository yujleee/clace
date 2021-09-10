package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import org.springframework.web.socket.server.standard.ServerEndpointExporter;

import org.springframework.web.multipart.commons.CommonsMultipartResolver;


@SpringBootApplication
public class ClaceJspApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClaceJspApplication.class, args);
		
	}
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		return new CommonsMultipartResolver();
	}

	@Bean
	public ServerEndpointExporter serverEndpointExporter() {
		return new ServerEndpointExporter();
	}
}
