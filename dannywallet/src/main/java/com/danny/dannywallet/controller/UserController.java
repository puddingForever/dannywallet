package com.danny.dannywallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danny.dannywallet.domain.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	//로그인
	@GetMapping("/login")
	public String getLogin(@ModelAttribute("loginUserBean")UserVO userVO) {
		return "user/login";
	}
	@PostMapping("/login_pro")
	public String login_pro(@ModelAttribute("loginUserBean")UserVO userVO) {
		
		return "user/login_success";
	}
	
	
	
	//회원가입
	@GetMapping("/register")
	public String getRegister(@ModelAttribute("registerUserBean")UserVO userVO) {
		return "user/register";
	}
	
	@PostMapping("/register_pro")
	public String register_pro() {
		return  "user/register_success";
	}

}
