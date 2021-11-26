package com.han.S20210901.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.han.S20210901.model.Pconsult;
import com.han.S20210901.model.Replys;
import com.han.S20210901.service.Paging;
import com.han.S20210901.service.PconsultService;
import com.han.S20210901.service.ReplysService;

@Controller
public class PconsultControllerJh {

	@Autowired
	private PconsultService pconsultService;

	@Autowired
	private ReplysService replysService;

	@RequestMapping(value = "index")
	public String test1(Model model) {
		String id = "a1";
		model.addAttribute("id", id);
		return "main";
	}

	@RequestMapping("pConsultCount")
	public String pConsultList(String currentPage, String id, Model model, Pconsult pconsult) {
		System.out.println("PcontrollerJh pConsultList() start...");
		
		// 1대1상담 게시물 총 개수 구하기
		int totalCnt = pconsultService.pConsultTotal();
		System.out.println("pConsultList() totalCnt ->" + totalCnt);
		
		//페이징 totalCnt = 12,1
		Paging pg = new Paging(totalCnt, currentPage);
		
		pconsult.setStart(pg.getStart());
		pconsult.setEnd(pg.getEnd());
		
		// 리스트 모두 가져오기
		List<Pconsult> pConsultList = pconsultService.pConsultAll(pconsult);

		System.out.println("pConsultList id->" + id);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("pList", pConsultList);
		model.addAttribute("id", id);
		model.addAttribute("pg", pg);

		return "pconsultlist";
	}

	// requestMapping로 method를 get,post를 둘다 해주면 둘다 실행 가능하다.
	@RequestMapping(value = "pConsultDetail", method = { RequestMethod.POST, RequestMethod.GET })
	public String pCosultDetail(String id, int pnum, Model model) {
		System.out.println("PcontrollerJh pCosultDetail() Start...");
		System.out.println("PcontrollerJh pCosultDetail() pnum -> " + pnum);

		// 해당 pnum에 대한 게시물 조회수 +1
		pconsultService.pCountPlus(pnum);

		// 해당 pnum에 대한 데이터들 가져오기
		Pconsult pconsult = pconsultService.pConsultDetail(pnum);

		// 해당 pnum에 대한 댓글 가져오기
		List<Replys> replys = replysService.replysOfPnum(pnum);
		System.out.println("PcontrollerJh pCosultDetail() pconsult.pnum");

		model.addAttribute("pdetail", pconsult);
		model.addAttribute("id", id); // 조건식 사용위해 아이디 가져감..
		model.addAttribute("replys", replys);

		return "pconsultDetail";
	}

	@GetMapping(value = "pCousultInsertForm")
	public String pCountInsert(String id, Model model) {
		System.out.println("PcontrollerJh pCountInsert() Start...");
		model.addAttribute("id", id);
		// 1대1게시물 정보 입력 폼
		return "pConsultInsertForm";
	}

	@PostMapping(value = "pConsultInsertPro")
	public String pConsultInsertPro(Model model, Pconsult pconsult) {
		System.out.println("PcontrollerJh pConsultInsertPro() Start...");
		// 1대1 게시물 입력처리
		pconsultService.pConsultInsert(pconsult);
		// 1대1 게시물 입력 후 바로 입력된 상세페이지로 보여질 수 있도록 상세페이지로 이동
		return "forward:pConsultDetail";
	}

	@GetMapping(value = "pConsultUpdateForm")
	public String pConsultUpdate(int pnum, Model model) {
		System.out.println("PcontrollerJh pConsultUpdateForm() Start...");
		System.out.println("PcontrollerJh pConsultUpdateForm() pnum -> " + pnum);
		// 이전 데이터를 가지고 게시물 수정폼으로 이동
		Pconsult pconsult = pconsultService.pConsultDetail(pnum);
		model.addAttribute("pdetail", pconsult);

		return "pconsultUpdateform";
	}

	@PostMapping(value = "pConsultUpdatePro")
	public String pConsultUpdatePro(Pconsult pconsult, Model model) {
		System.out.println("PcontrollerJh pConsultUpdatePro Start...");
		// 1대1 게시물 실제 수정
		pconsultService.pconsultUpdate(pconsult);
		System.out.println("PcontrollerJh pConsultUpdatePro pnum->" + pconsult.getPnum());
		model.addAttribute("pnum", pconsult.getPnum());
		// 해당 게시물에 대한 pnum을 가지고 바로 상세페이지로 보여질 수 있도록 상세페이지로 이동
		return "forward:pConsultDetail"; // 모델값을 가지고 간다.
	}

	@GetMapping(value = "pCosultDelete")
	public String pCosultDelete(int pnum, Model model) {
		System.out.println("PcontrollerJh pCosultDelete Start...");
		int result = pconsultService.pConsultDelete(pnum);
		System.out.println("pCosultDelete result->" + result);
		model.addAttribute("result", result);
		return "pconsultDeletePro";

	}

	@PostMapping(value = "insertReply")
	public String insertReply(Replys reply, Model model) {
		System.out.println("PcontrollerJh insertReply() Start...");
		replysService.insertReply(reply);

		return "forward:pConsultDetail";
	}

	@PostMapping(value = "replyDelete")
	public String replyDelete(Model model, int replynum, int pnum, String id) {
		System.out.println("PcontrollerJh replyDelete() Start...");

		replysService.deleteReply(replynum);
		model.addAttribute("pnum", pnum);
		model.addAttribute("id", id);
		return "forward:pConsultDetail";
	}

	@GetMapping(value = "replyUpdateForm")
	public String replyUpdateForm(int replynum,int pnum, String id, Model model) {
		System.out.println("PcontrollerJh replyUpdateForm Start...");
		// 해당 pnum에 대한 데이터들 가져오기
		int replyupdatenum = replynum;	
		Pconsult pconsult = pconsultService.pConsultDetail(pnum);

		// 해당 pnum에 대한 댓글 가져오기
		List<Replys> replys = replysService.replysOfPnum(pnum);
		System.out.println("PcontrollerJh pCosultDetail() pconsult.pnum");

		model.addAttribute("pdetail", pconsult);
		model.addAttribute("id", id); // 조건식 사용위해 아이디 가져감..
		model.addAttribute("replys", replys);
		model.addAttribute("replyupdatenum", replyupdatenum);
		
		return "replyUpdateForm";
	}
	
	@GetMapping(value = "replyUpdatePro")
	public String replyUpdatePro(int pnum, String id, Replys reply, Model model) {
		System.out.println("PcontrollerJh replyUpdatePro() Start...");
		int result = replysService.replyupdate(reply);
		
		model.addAttribute("pnum", pnum);
		model.addAttribute("id", id);
		model.addAttribute("result", result);
		return "replyUpdatePro";
	}

}
