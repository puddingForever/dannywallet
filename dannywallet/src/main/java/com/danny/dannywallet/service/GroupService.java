package com.danny.dannywallet.service;

import java.util.List;

import com.danny.dannywallet.domain.GroupVO;

public interface GroupService {
	//가게부 전체 보여주기 
	List<GroupVO> getGroupList();

	//가게부 등록
	boolean registerGroup(GroupVO group);
	
	//가게부 수정
	boolean modifyGroup(GroupVO group);
	
	//가게부 삭제
	boolean deleteGroup(GroupVO group);
}
