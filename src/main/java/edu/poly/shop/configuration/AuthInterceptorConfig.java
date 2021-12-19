package edu.poly.shop.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import edu.poly.shop.interceptor.AuthInterceptor;

@Configuration
public class AuthInterceptorConfig implements WebMvcConfigurer {
	@Autowired
	AuthInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(auth).addPathPatterns("/shoppingCart/index", "/shoppingCart/checkout",
				"/shoppingCart/viewss/**", "/admin/**").excludePathPatterns("/user/index");
	}
}
