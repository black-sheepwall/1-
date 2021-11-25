package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.Pconsult;

public interface PconsultService {

	int pConsultTotal();

	List<Pconsult> pConsultAll(Pconsult pconsult);

	Pconsult pConsultDetail(int pnum);

	void pconsultUpdate(Pconsult pconsult);
	//조회수 +1 하기
	void pCountPlus(int pnum);

	void pConsultInsert(Pconsult pconsult);

	int pConsultDelete(int pnum);

}
