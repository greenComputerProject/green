package com.green.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.green.oauth2.domain.SessionUser;

@RestController("/user")
public class UserController {
	
	@Autowired
	private HttpSession session;
	
	@GetMapping
	@ResponseBody
	public SessionUser getSessionUser() {
		
		System.out.println(session.getAttribute("user"));
		return (SessionUser)session.getAttribute("user");
	}

}
