package com.danny.dannywallet.domain;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BudgetDTO {
	
	//가게부 이름  
	private String groupName;
	//사용자 idx
	private Long userIdx;
	//카테고리 이름 : 
	private ArrayList<String> cateName;
	//등록일 
	private String startDate;
	//마감일 
	private Date endDate; //사용자가 직접 넣어야함 
	
	
	public BudgetDTO(Date startDate) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String start = sdf.format(cal.getTime());
		this.startDate = start;
	}
	
}
