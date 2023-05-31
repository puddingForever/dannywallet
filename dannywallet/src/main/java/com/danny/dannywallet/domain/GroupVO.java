package com.danny.dannywallet.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GroupVO {
	
	private long group_idx;
	private String group_name;
	//FK
	private long group_user_idx;

}
