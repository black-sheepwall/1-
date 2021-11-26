package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.ClinicDao;
import com.han.S20210901.model.Clinic;

@Service
public class ClinicServiceImpl implements ClinicService {
	
	@Autowired
	private ClinicDao clinicDao;
	
	@Override
	public int clinicTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Clinic> clinicAll() {
		
		List<Clinic> clinicList = clinicDao.clinicAll();
		
		return clinicList;
	}

}
