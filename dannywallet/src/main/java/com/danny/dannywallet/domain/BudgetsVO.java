package com.danny.dannywallet.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BudgetsVO {

	private long budget_idx;
	private String budget_name;
	//FK 사용자 idx
	private String bud_user_idx;
	

}

