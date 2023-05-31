package com.danny.dannywallet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danny.dannywallet.service.GroupService;

@RequestMapping("/groups")
@Controller
public class GroupController {

	@Autowired
	private GroupService groupService;
	
	//단순 페이지 조회
	@GetMapping("/list")
	public void getGroupList(Model model) {
		System.out.println("hi");
		model.addAttribute("groupList", groupService.getGroupList());
	}
}
