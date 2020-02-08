package com.osu.lecture.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.osu.lecture.user.UserVO;
import com.osu.lecture.user.service.UserService;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Inject
	UserService userService;
	//login page
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";  //return login.jsp page 
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute UserVO user, HttpSession session) {	
		boolean result = userService.loginCheck(user, session);
		ModelAndView mav =  new ModelAndView();
		if(result == true) {
			logger.info("Welcome mypage!");
			mav.setViewName("mypage");
		}
		else {
			logger.info("Welcome login!");
			mav.setViewName("login");
		}
		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "redirect:/";  //return main page
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "mypage";  //return mypage.jsp page 
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public void register(@ModelAttribute UserVO user) throws Exception{
		userService.register(user);
	}

}
