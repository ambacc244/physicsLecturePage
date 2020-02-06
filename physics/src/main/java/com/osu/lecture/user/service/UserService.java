package com.osu.lecture.user.service;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.osu.lecture.user.User;
import com.osu.lecture.user.controller.UserController;
import com.osu.lecture.user.dao.UserDao;

@Service
public class UserService implements IUserService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	@Inject 
	UserDao userDao;
	
	@Override
	public boolean loginCheck(User user, HttpSession session) {
		boolean result = userDao.loginCheck(user);
		//if id and password exist
		if(result) {
			User user2 = userDao.viewUser(user);

			session.setAttribute("userId", user2.getUserId());
			session.setAttribute("userPw", user2.getUserPw());
		}
		return result;
	}
	
	@Override
	public void register(User user) throws Exception {
		userDao.register(user);
	}
	

}
