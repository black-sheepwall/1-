package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.Replys;

public interface ReplysService {

	List<Replys> replysOfPnum(int pnum);

	void insertReply(Replys reply);

	void deleteReply(int replynum);

	int replyupdate(Replys reply);

}
