package com.ebtd.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WheelController {

	//휠체어 - 마이페이지 이동
	@GetMapping(value = "/wheel/user/mypageForm")
	public String mypageForm() {
		return "wheel/user/mypageForm";
	}
	//휠체어 - 이용 내역 목록
	@GetMapping(value = "/wheel/user/reservationHistoryListForm")
	public String getReservationHistoryList() {
		return "wheel/user/reservationHistoryListForm";
	}
	//휠체어 - 이용 내역 목록 상세
	@GetMapping(value = "/wheel/user/reservationHistoryDetailForm")
	public String getReservationHistoryDetail() {
		return "wheel/user/reservationHistoryDetailForm";
	}
	//휠체어 - 즐겨 찾기 목록페이지 이동
	@GetMapping(value = "/wheel/user/bookMarkListForm")
	public String getBookMarkList() {
		return "wheel/user/bookMarkListForm";
	}
	//휠체어 - 본인의 고객 소리함 목록 (본인글/답변글)
	@GetMapping(value = "/wheel/user/myQuestionForm")
	public String getMyQuestionAnswerList() {
		return "wheel/user/myQuestionForm";
	}
	//휠체어 - 고객 소리함 작성페이지 이동
	@GetMapping(value = "/wheel/user/writeQuestionForm")
	public String writeQuestionForm() {
		return "wheel/user/writeQuestionForm";
	}
	//휠체어 - 본인의 고객 소리함 상세
	@GetMapping(value = "/wheel/user/myQuestionDetailForm")
	public String getMyQuestionDetail() {
		return "wheel/user/myQuestionDetailForm";
	}
	//휠체어 - 본인의 고객 소리함 답변 상세
	@GetMapping(value = "/wheel/user/myQuestionAnswerDetailForm")
	public String getMyQuestionAnswerDetail() {
		return "wheel/user/myQuestionAnswerDetailForm";
	}
}

