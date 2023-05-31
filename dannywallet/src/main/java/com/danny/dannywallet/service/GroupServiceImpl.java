package com.danny.dannywallet.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.danny.dannywallet.domain.GroupVO;
import com.danny.dannywallet.domain.UserVO;
import com.danny.dannywallet.mapper.GroupMapper;

@Service
public class GroupServiceImpl implements GroupService {

	@Autowired
	private GroupMapper groupMapper;
	
	@Resource(name="loginUserBean")
	@Lazy
	private UserVO loginUserBean;
	
	
	//가게부 리스트 
	@Override
	public List<GroupVO> getGroupList() {
		return groupMapper.selectGroupList();
	}

	//가게부 등록 (사용자의 id값도 전달) 
	@Override
	public boolean registerGroup(GroupVO group) {
		group.setGroup_user_idx(loginUserBean.getUser_idx());
		return groupMapper.insertGroup(group)==1;
	}
	
	//가게부 수정 
	@Override
	public boolean modifyGroup(GroupVO group) {
		return groupMapper.updateGroup(group)==1;
	}
	//가게부 삭제
	@Override
	public boolean deleteGroup(GroupVO group) {
		return groupMapper.deleteGroup(group)==1;
	}

}
