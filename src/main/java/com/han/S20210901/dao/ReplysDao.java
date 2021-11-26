package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.Replys;

public interface ReplysDao {

	List<Replys> replyOfPnum(int pnum);

	void insertReply(Replys reply);

	void deleteReply(int replynum);

	int replyUpdate(Replys reply);
	
}
