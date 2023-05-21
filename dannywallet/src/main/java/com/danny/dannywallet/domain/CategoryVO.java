package com.danny.dannywallet.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CategoryVO {

	private long cate_idx;
	private String cate_name;
	//FK 가계부 이름테이블의 idx 
	private long cate_budget_idx;
	
}
