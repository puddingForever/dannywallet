package com.danny.dannywallet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.danny.dannywallet.domain.GroupVO;
import com.danny.dannywallet.service.GroupService;
import com.danny.dannywallet.service.UserService;

@RestController
public class RestApiController {

	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GroupService groupService;
	
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		
		String result = userService.checkUserIdExist(user_id);
	
		return result;
	}

	@PostMapping("/groups/addGroup")
	public String addGroup(@RequestBody GroupVO group) { 
		
		if(groupService.registerGroup(group)) {
			System.out.println(group.getGroup_name());
			return group.getGroup_name();
		}else {
			System.out.println(group.getGroup_name());
			return "fail";
		}
		
	}
	
	
}
