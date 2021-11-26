package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.Clinic;

public interface ClinicDao {
	//진료내역 전체 개수 
		int clinicTotal();
		//진료내역 전체 불러오기
		List<Clinic> clinicAll();
}
