package com.danny.dannywallet.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BudgetInfoVO {

	private long budIn_idx;
	private String budIn_name;
	private Timestamp budIn_start;
	private Timestamp budIn_end;
	
	//FK 카테고리 idx
	private long budInfo_cate_idx;
	
}
