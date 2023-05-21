package com.danny.dannywallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BudgetController {
	
	//로그인 후 첫 메인 화면 : 가계부 리스트
	//지은의 가계부 , 대니의 가계부 등등 ! 
	@GetMapping("/budgets")
	public String getGroups() {
		return "mybudget/budgets";
	}
	//가계부 등록
	@PostMapping("/budgets/budgets_pro")
	public String budgets_pro() {	
		return "mybudget/budgets_success";
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
