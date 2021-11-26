package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Replys;

@Repository
public class ReplysDaoImpl implements ReplysDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Replys> replyOfPnum(int pnum) {
		List<Replys> replys = session.selectList("replysList", pnum);
		return replys;
	}

	@Override
	public void insertReply(Replys reply) {
		System.out.println("ReplysDaoImpl insertReply Start...");
		session.insert("insertReply", reply);
		
	}

	@Override
	public void deleteReply(int replynum) {
		System.out.println("ReplysDaoImpl deleteReply Start...");
		session.delete("deleteReply", replynum);
		
	}

	@Override
	public int replyUpdate(Replys reply) {
		int result = session.update("replyUpdate", reply);
		return result;
	}
}
