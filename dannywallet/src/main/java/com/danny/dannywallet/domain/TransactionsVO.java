package com.danny.dannywallet.domain;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;

import lombok.NoArgsConstructor;

import lombok.Setter;

import lombok.Getter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TransactionsVO {
	private long tran_idx;
	private Timestamp tran_date;
	private long tran_total;
	private long tran_expense;
	private long tran_remain;
	private String tran_type;
	private String tran_info;
	//FK 카테고리 idx
	private long tran_cate_idx;
	
}
