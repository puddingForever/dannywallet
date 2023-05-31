package com.danny.dannywallet.mapper;

import java.util.List;

import com.danny.dannywallet.domain.UserVO;

public interface UserMapper {
	
	//회원 전체 목록 조회
	List<UserVO> selectUserList();
	
	//회원가입
	int insertUser(UserVO userVO);
	
	//회원삭제
	int deleteUser(UserVO userVO);
	
	//로그인
	UserVO selectLoginUserInfo(UserVO userVO);
	
	//아이디 중복체크
	String checkUserIdExist(String user_id);
	

}
