package com.ebtd.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BlindController {

	//시각장애인 - 도움페이지로 이동
	@GetMapping(value = "/blind/user/helpPageForm")
	public String helpPageForm() {
		return "//blind/user/helpPageForm";
	}
	//시각장애인 - 즐겨찾기 편집 이동
	@GetMapping(value = "/blind/user/updateBookMarkForm")
	public String getBookMarkList() {
		return "/blind/user/updateBookMarkForm";
	}
	//시각장애인 - 즐겨찾기 삭제
	@GetMapping(value = "/blind/user/updateBookMarkForm")
	public String setBookMarkDelete() {
		return "/blind/user/updateBookMarkForm";
	}
	//시각장애인 - 즐겨찾기 추가페이지 이동 (버스/정류장)
	@GetMapping(value = "/blind/user/addBookMarkForm")
	public String getBusList() {
		return "/blind/user/addBookMarkForm";
	}
	//시각장애인 - 해당 버스 노선 상세페이지 이동
	@GetMapping(value = "/blind/user/thisBusRouteDetailForm")
	public String getThisBusRouteDetail() {
		return "/blind/user/thisBusRouteDetailForm";
	}
	//시각장애인 - 해당 정류장의 버스 노선 목록페이지 이동
	@GetMapping(value = "/blind/user/thisStopBusRouteListForm")
	public String getThisStopBusRouteList() {
		return "/blind/user/thisStopBusRouteListForm";
	}
	//시각장애인 - 마이페이지 이동
	@GetMapping(value = "/blind/user/myPageForm")
	public String myPageForm() {
		return "/blind/user/myPageForm";
	}
	//시각장애인 - 내 정보 확인페이지 이동
	@GetMapping(value = "/blind/user/myInfoForm")
	public String getMyInfoList() {
		return "/blind/user/myInfoForm";
	}
	//시각장애인 - 이용 내역페이지 이동
	@GetMapping(value = "/blind/user/reservationHistoryListForm")
	public String getReservationHistoryList() {
		return "/blind/user/reservationHistoryListForm";
	}
	//시각장애인 - 이용내역 상세페이지 이동
	@GetMapping(value = "/blind/user/reservationHistoryDetailForm")
	public String getHistoryDetail() {
		return "/blind/user/reservationHistoryDetailForm";
	}
	//시각장애인 - 고객 소리함페이지 이동 (본인글/답변글)
	@GetMapping(value = "/blind/user/myQuestionForm")
	public String getMyQuestionAnswerList() {
		return "/blind/user/myQuestionForm";
	}
	//시각장애인 -  고객 소리함 본인글 상세페이지 이동
	@GetMapping(value = "/blind/user/myQuestionDetailForm")
	public String getMyQuestionDetail() {
		return "/blind/user/myQuestionDetailForm";
	}
	//시각장애인 - 고객 소리함 답변글 상세페이지 이동
	@GetMapping(value = "/blind/user/myQuestionAnswerDetailForm")
	public String getMyQuestionAnswerDetail() {
		return "/blind/user/myQuestionAnswerDetailForm";
	}
}
