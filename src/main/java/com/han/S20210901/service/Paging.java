package com.han.S20210901.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Paging {
	private int currentPage = 1;	private int rowPage = 10;
	private int pageBlock = 10;		private int end;
	private int start;				private int endPage;
	private int startPage;			private int totalPage;
	private int total;

	public Paging(int total, String currentPage1) {
		this.total = total; // 12
		if(currentPage1 == null) {
			this.currentPage = 1;
		}else {
			this.currentPage = Integer.parseInt(currentPage1);
		}
		
		start = (currentPage - 1) * rowPage + 1; // 시작 1
		end = start + rowPage - 1;
		totalPage = (int)Math.ceil((double)total / rowPage);
		startPage = currentPage - (currentPage - 1) % pageBlock;
		endPage = startPage + pageBlock - 1;
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
	}

}
