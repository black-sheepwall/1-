package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Clinic;

@Repository
public class ClinicDaoImpl implements ClinicDao {
	  
	@Autowired
	private SqlSession session;
	@Override
	public int clinicTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Clinic> clinicAll() {
		List<Clinic> clinicList = session.selectList("HGclinicList");
		return clinicList;
	}

}
