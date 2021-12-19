package edu.poly.shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import edu.poly.shop.entity.Account;
import edu.poly.shop.service.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		Account user = session.get("user"); // lấy từ session
		String error = "";
		if (user == null) { // chưa đăng nhập
			error = "Please login!";
		}
		// không đúng vai trò
		else if (!user.getAdmin() && uri.startsWith("/admin/")) {
			error = "Access denied!";
		}
		if (error.length() > 0) { // có lỗi
			session.set("security-uri", uri);
			response.sendRedirect("/user/login?error=" + error);
			return false;
		}
		return true;
	}

}
