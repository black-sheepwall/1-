package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.ReplysDao;
import com.han.S20210901.model.Replys;

@Service
public class ReplysServiceImpl implements ReplysService {
	
	@Autowired
	private ReplysDao replysDao;

	@Override
	public List<Replys> replysOfPnum(int pnum) {
		System.out.println("ReplysServiceImpl replysOfPnum Start...");
		List<Replys> replys = replysDao.replyOfPnum(pnum);
		return replys;
	}
}
