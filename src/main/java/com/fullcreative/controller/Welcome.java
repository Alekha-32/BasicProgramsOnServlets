package com.fullcreative.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Welcome {
	
	@RequestMapping(value = "/login/api/getwelcome")
	public String showLoginPage() {
		return "login";
	}
	
	@RequestMapping(value = "/login/api/getwelcome")
	public String handleLoginRequest(@RequestParam String name,@RequestParam String password,ModelMap model) {
		if(!password.equals("alekha")) {
			model.put("errorMessage", "invalid password");
			return "login";
		}
		return "welcome";
	}

}
