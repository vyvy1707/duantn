package edu.poly.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SessionService {
	    @Autowired
	    HttpSession session;
	    public <T> T get(String name,Object value){
	        return (T) session.getAttribute(name);
	    }
	    public <T> T get(String name){
	        return (T) session.getAttribute(name);
	    }
	    public void set(String name , Object value){
	        session.setAttribute(name,value);
	    }
	    public void remove(String name){
	        session.removeAttribute(name);
	    }
}
