package com.danny.dannywallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;

import com.danny.dannywallet.domain.UserVO;
import com.danny.dannywallet.service.UserService;

import lombok.Setter;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Setter(onMethod_ = @Autowired )
	private UserService userService;
	
	
	//로그인빈 가져오기 
	@Resource(name="loginUserBean")
	@Lazy
	private UserVO loginUserBean;
	
	
	//로그인
	@GetMapping("/login")
	public void getLogin(@ModelAttribute("tempLoginUserBean")UserVO tempLoginUserBean) {
	}
	
	@PostMapping("/login")
	public String login_pro(@ModelAttribute("tempLoginUserBean")UserVO tempLoginUserBean,RedirectAttributes redirectAttributes) {
		
		if(userService.getLoginUserInfo(tempLoginUserBean)) {
			redirectAttributes.addFlashAttribute("redirectloginBean",loginUserBean );
			return "redirect:/budgets";
		}else {
			return "redirct:/user/login";
		}
		
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
