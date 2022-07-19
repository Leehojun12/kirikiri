package com.kiri.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.gson.Gson;
import com.kiri.dto.BoardDTO;
import com.kiri.dto.Group_BoardDTO;
import com.kiri.dto.HobbyDTO;
import com.kiri.dto.MemberDTO;
import com.kiri.dto.SiteDTO;
import com.kiri.service.MemberService;

@RequestMapping("/mem")
@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private HttpSession session;
	
	@RequestMapping(value = "/welcome")
	public String welcome() {

		return "member/welcome";
	}

	@RequestMapping(value = "/signUp")
	public String signup() {
		return "member/signUp";
	}

	@RequestMapping(value = "/myPage")
	public String myPage(Model model) throws Exception { // myPage 로 이동
		System.out.println("myPage 이동");
		String user_email = ((MemberDTO)session.getAttribute("loginSession")).getUser_email();

		MemberDTO selectMember = service.selectMember(user_email);
		List<HobbyDTO> selectHobbyList = service.selectHobbyList(user_email);
		List<SiteDTO> selectSiteList = service.selectSiteList(user_email);
		List<Map<String, Object>> selectGroupList = service.selectGroupList(user_email);
		List<Map<String, Object>> selectWishList = service.selectWishList(user_email);
		List<BoardDTO> selectBoardList = service.selectBoardList(user_email);

		// 생년월일 자르기
		String date = selectMember.getUser_bd().substring(0, 10);

		// 선호지역 빈배열에 담아주기
		List<String> siteData = new ArrayList<String>();

		for (int i = 0; i < selectSiteList.size(); i++) {
			String a = selectSiteList.get(i).getArea();
			siteData.add(a);
		}

		// 취미 지역 빈배열에 담아주기
		List<String> hobbyData = new ArrayList<String>();

		for (int i = 0; i < selectHobbyList.size(); i++) {
			String a = selectHobbyList.get(i).getHobby();
			hobbyData.add(a);
		}

		model.addAttribute("date", date);
		model.addAttribute("hobbyData", hobbyData);
		model.addAttribute("siteData",siteData);
		model.addAttribute("memberdto", selectMember);
		model.addAttribute("hobbyList", selectHobbyList);
		model.addAttribute("siteList", selectSiteList);
		model.addAttribute("selectGroupList", selectGroupList);
		model.addAttribute("selectWishList", selectWishList);
		model.addAttribute("selectBoardList", selectBoardList);
		return "member/myPage";
	}

	@RequestMapping(value = "/modifyProfilePic")
	public String modifyProfilePic(MemberDTO dto) throws Exception { // 사진 수정
		System.out.println(dto);
		service.modifyProfilePic(dto);
		return "redirect:myPage";
	}

	@RequestMapping(value = "/myWrite")
	public String myWrite(HttpServletResponse response, Model model) throws Exception { // 내가 쓴글 페이지
		String user_email = ((MemberDTO)session.getAttribute("loginSession")).getUser_email();

		int selectBoardCount = service.selectBoardCount(user_email);
		int selectGroupBoardCount = service.selectGroupBoardCount(user_email);
		MemberDTO selectMember = service.selectMember(user_email);
		List<BoardDTO> selectBoardList = service.selectBoardList(user_email);
		List<Group_BoardDTO> selectGroupBoardList = service.selectGroupBoardList(user_email);
		System.out.println(selectBoardList.get(0).getBoard_date());
		/* total 게시판 갯수  */
		int totalBoardCount = selectBoardCount + selectGroupBoardCount;
		
		String json = new Gson().toJson(selectBoardList);
	    response.setCharacterEncoding("utf-8");
	    response.getWriter().write(json);

		model.addAttribute("memberdto", selectMember);
		model.addAttribute("selectBoardCount", selectBoardCount);
		model.addAttribute("selectGroupBoardCount", selectGroupBoardCount);
		model.addAttribute("totalBoardCount", totalBoardCount);
		model.addAttribute("selectBoardList", selectBoardList);
		model.addAttribute("selectGroupBoardList", selectGroupBoardList);
		return "member/myWrite";
	}

	@RequestMapping(value = "/profileModifyPage")
	public String profileModify(String user_email, Model model) throws Exception { // profileModify 페이지 이동
		System.out.println(user_email);
		MemberDTO selectMember = service.selectMember(user_email);
		System.out.println(selectMember);

		// 생년월일 잘라주기
		String birth_date = selectMember.getUser_bd().substring(0, 4);
		String birth_date1 = selectMember.getUser_bd().substring(5, 7);
		String birth_date2 = selectMember.getUser_bd().substring(8, 10);

		List<String> date = new ArrayList<>();
		date.add(birth_date);
		date.add(birth_date1);
		date.add(birth_date2);

		// 번호 잘라주기
		String phone1 = selectMember.getUser_phone().substring(0, 3);
		String phone2 = selectMember.getUser_phone().substring(3, 7);
		String phone3 = selectMember.getUser_phone().substring(7, 11);

		List<String> phone = new ArrayList<>();
		phone.add(phone1);
		phone.add(phone2);
		phone.add(phone3);
		
		
		model.addAttribute("date", date);
		model.addAttribute("phone", phone);
		model.addAttribute("memberdto", selectMember);
		return "member/profileModify";
	}

	@RequestMapping(value = "/profileModify") // 개인정보 수정
	public String profileModify(MemberDTO dto) throws Exception {
		System.out.println("ㅁㄴㅇㅁㄴㅇ : "+dto.getUser_phone());
		service.profileModify(dto);
		return "redirect:myPage";
	}
	
	@RequestMapping(value="/nicknameCheck") // 닉네임 중복확인
	@ResponseBody
	public int nicknameCheck(String user_nickname) throws Exception{
		System.out.println("nickname : " + user_nickname);
		
		int result = service.nicknameCheck(user_nickname);
		return result;
	}
	
	@RequestMapping(value="/phoneCheck") // phone 중복확인
	@ResponseBody
	public int phoneCheck(String user_phone) throws Exception{
		System.out.println("user_phone : " + user_phone);
		
		 int result = service.phoneCheck(user_phone);
		 System.out.println(result);
		return result;
	}
	
	/*
	 * @RequestMapping(value="/pwCheck") // pw 중복확인
	 * 
	 * @ResponseBody public int pwCheck(String user_pw) throws Exception{
	 * System.out.println("password : " + user_pw);
	 * 
	 * int result = service.phoneCheck(user_pw); System.out.println(result); return
	 * result; }
	 */
	
	

	@RequestMapping(value = "/siteModal") // 선호지역 수정
	public void siteModal(String user_email,HttpServletResponse response,@RequestParam(value = "checkBoxArr[]") String[] checkBoxArr) throws Exception {

		service.deleteSite(user_email);
		service.insertSite(user_email, checkBoxArr);
		response.getWriter().write("success");
	}

	@RequestMapping(value = "/hobbyModal") // 취미 모달
	@ResponseBody
	public void hobbyModal(String user_email,HttpServletResponse response, @RequestParam(value = "checkBoxArr[]") String[] checkBoxArr) throws Exception {
		System.out.println(user_email);

		service.deleteHobby(user_email);
		service.insertHobby(user_email, checkBoxArr);
		response.getWriter().write("success");
	}

	@RequestMapping(value = "/wishDelete") // 희망 모임 삭제
	@ResponseBody
	public String wishDelete(int seq_group) throws Exception {
		System.out.println(seq_group);
		service.wishDelete(seq_group);
		return "success";
	}

	@RequestMapping(value = "/genalSearch") // 일반 게시판 검색
	@ResponseBody
	public List<BoardDTO> genalSearch(String category, String keyword, String user_email) throws Exception {
		System.out.println(category + " : " + keyword);
		List<BoardDTO> boardlist = service.genalSearchList(category, keyword,user_email);
		return boardlist;
	}

	@RequestMapping(value = "/mettingSearch") // 모임 게시판 검색
	@ResponseBody
	public List<Group_BoardDTO> mettingSearch(String category, String keyword, String user_email) throws Exception {
		
		if(category.equals("board_title")) {
			category = "title";			
		}else if(category.equals("board_content")) {
			category = "content";			
		}
		
		System.out.println(category + " : " + keyword);
		List<Group_BoardDTO> meetinglist = service.mettingSearchList(category, keyword,user_email);
		return meetinglist;
	}
	
	@RequestMapping(value="/boardDelete") // 일반 게시판 삭제
	@ResponseBody
	public String boardDelete(int seq_board) throws Exception{
		service.boardDelete(seq_board);
		return "success";
	}
	
	@RequestMapping(value="/groupBoardDelete") // 모임 게시판 삭제
	@ResponseBody
	public String groupBoardDelete(int seq_group_board) throws Exception{
		System.out.println("sesqesa");
		service.groupBoardDelete(seq_group_board);
		return "success";
	}

	@RequestMapping(value = "/profileDelete") // 회원 탈퇴
	@ResponseBody
	public String profileDelete(String user_email) throws Exception {
		System.out.println("�� ��û");
		String user_delete = "Y";

		Map<String, String> memberdto = new HashMap<String, String>();
		memberdto.put("user_email", user_email);
		memberdto.put("user_delete", user_delete);
		System.out.println(memberdto);
		service.profileDelete(memberdto);
		return "/";
	}
}
