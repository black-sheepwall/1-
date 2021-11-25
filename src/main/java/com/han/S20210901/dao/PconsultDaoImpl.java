package com.han.S20210901.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Pconsult;

@Repository
public class PconsultDaoImpl implements PconsultDao{
	@Autowired
	private SqlSession session;

	@Override
	public int pConsultTotal() {
		System.out.println("PconsultDaoImpl pConsultTotal() Start...");
		int totalCnt = session.selectOne("jhPconsultCnt");
		return totalCnt;
	}


	@Override
	public List<Pconsult> pConsultAll(Pconsult pconsult) {
		System.out.println("PconsultDaoImpl pConsultAll() Start...");
		List<Pconsult> pConsultList = session.selectList("jhPconsultList",pconsult);

		
		return pConsultList;
	}


	@Override
	public Pconsult pConsultDetail(int pnum) {
		System.out.println("PconsultDaoImpl pConsultDetail() Start...");
		Pconsult pconsult = session.selectOne("jhPconsultDetail",pnum);
		return pconsult;
	}


	@Override
	public void pConsultUpdate(Pconsult pconsult) {
		System.out.println("PconsultDaoImpl pConsultUpdate() Start...");
		try {
			session.update("PconsultUpdate", pconsult);	
		}catch (Exception e) {
			System.out.println("PconsultDaoImpl pConsultUpdate() Exception->"+e.getMessage());
		}
		
		
	}


	@Override
	public void pCountPlust(int pnum) {
		System.out.println("PconsultDaoImpl pCountPlust() Start...");
		try {
			session.update("PcountPlus", pnum);
		}catch (Exception e) {
			System.out.println("PconsultDaoImpl pCountPlust Exception->"+e.getMessage());
		}
		
	}


	@Override
	public void pConsultInsert(Pconsult pconsult) {
		System.out.println("PconsultDaoImpl pConsultInsert() Start...");
		try {
			session.insert("PconsultInsert", pconsult);
		}catch (Exception e) {
			System.out.println("PconsultDaoImpl pConsultInsert Exception->"+e.getMessage());
		}
	}


	@Override
	public int pConsultDelete(int pnum) {
		System.out.println("PconsultDaoImpl pConsultDelete() Start...");
		int result = session.delete("PconsultDelete", pnum);
		return result;
	}
}
