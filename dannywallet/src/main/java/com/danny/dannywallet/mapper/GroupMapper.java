package com.danny.dannywallet.mapper;

import java.util.List;

import com.danny.dannywallet.domain.GroupVO;

public interface GroupMapper {
	
	//가게부 전체 
	List<GroupVO> selectGroupList();
	
	//가게부 등록
     int insertGroup(GroupVO group);
     
     //가게부 이름 수정
     int updateGroup(GroupVO group);
     
     //가게부 삭제 
     int deleteGroup(GroupVO group);
	

}
