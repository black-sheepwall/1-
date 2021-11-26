package com.han.S20210901.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Clinic {
	private int cnum;
	private int empno;
	private String id;
	@DateTimeFormat (pattern = "yyyy-MM-dd")
	private Date cdate;
	private String ctime;
	private String ccontent;
	
	//조회용
	private String ename; //의사명
	private String name;  //환자명
	
	
	
}
