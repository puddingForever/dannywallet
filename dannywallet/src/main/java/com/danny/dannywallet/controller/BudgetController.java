package com.danny.dannywallet.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danny.dannywallet.domain.UserVO;

@Controller
@RequestMapping("/budgets")
public class BudgetController {
	
	
	@Resource(name="loginUserBean")
	@Lazy
	private UserVO loginUserBean;
	
	
	//로그인 후 첫 메인 화면 : 가계부 리스트
	//지은의 가계부 , 대니의 가계부 등등 ! 
	@GetMapping("")
	public String showMain(@ModelAttribute("redirectloginBean")UserVO redirectloginBean,Model model) {
		model.addAttribute("loginUserBean", loginUserBean);
		return "budgets/main";
	}
	
	
	//가계부 등록
	@GetMapping("/budget_add")
	public void getBudgetfrm() {	
	}
	
	
	
	//가계부이름클릭 -> 가계부내용확인 ex) 지은의 가계부 ->  집,여가활동  
	@GetMapping("/budgets/{budget_idx}")
	public String getCategory(@PathVariable long budget_idx ) {
		return "mybudget/category";
	}
	
	//카테고리 클릭 
	//교육 클릭 -> 학원비 , 간식비 , 교통비 
	@GetMapping("/budgets/{budget_Idx}/category/{cateId}")
	public String getTranList(@PathVariable long budget_idx,long cateId) {
		return "mybudget/tranlist";
	}
	
	
	
}
