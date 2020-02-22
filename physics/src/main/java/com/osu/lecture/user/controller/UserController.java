package com.osu.lecture.user.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.osu.lecture.lecture.LectureVO;
import com.osu.lecture.lecture.service.LectureService;
import com.osu.lecture.user.UserVO;
import com.osu.lecture.user.service.UserService;

@Controller
public class UserController {
	@Inject
	UserService userService;
	@Inject
	LectureService lectureService;
	
	//login page
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userId") != null) {
			return "redirect:/mypage";   // if already logged in, direct to my page
		}
		return "login";  //return login.jsp page 
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginCheck(@ModelAttribute UserVO user, HttpSession session) throws Exception {	
		boolean result = userService.loginCheck(user, session);
	
		if(result == true) {
			return "redirect:/mypage";  //if successfully logged in, direct to my page
		}
		return "login";  //if fail to login, direct to login page
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		userService.logout(session); 
		return "redirect:/";  //return main page
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userId") == null)
			return "redirect:/login";  // if not logged in, direct to login page

		List<LectureVO> list = lectureService.myLectureList((String) session.getAttribute("userId"));  //send user id to mapper
    	model.addAttribute("list", list);
 
		return "mypage";  //return mypage.jsp page 
	}
	
	@RequestMapping(value = "/mypage/register", method = RequestMethod.GET)
	public String register(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userId") == null)
			return "redirect:/login";  // if not logged in, direct to login page
		return "register";  //return register.jsp page 
	}
	
	@RequestMapping(value = "/mypage/register", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute UserVO user, Model model) throws Exception {
		
		if(userService.checkAvailableId(user.getUserId())) {
			userService.register(user);
			model.addAttribute("AvailableIdMsg", "계정이 생성되었습니다.");
		}
		else {
			model.addAttribute("AvailableIdMsg", "사용불가능한 아이디 입니다.");
		}
		return "register";   //return register.jsp page 
	}
}
