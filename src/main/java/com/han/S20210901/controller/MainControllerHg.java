package com.han.S20210901.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainControllerHg {
	//Git hub test입니다. 
	//Git hub Branch Test
	@GetMapping(value="main")
	public String main(HttpServletRequest request, Model model) {
		//String sessionId = (String)request.getSession().getAttribute("sessionId");
		String sessionId = "admin";
		model.addAttribute("sessionId", sessionId);
		return "main";
	}
}
