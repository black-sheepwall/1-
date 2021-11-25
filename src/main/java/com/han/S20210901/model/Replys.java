package com.han.S20210901.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Replys {
	private String id;			
	private int empno;
	private int pnum;
	private int replynum;
	private String reply;
	private Date replydate;
}
