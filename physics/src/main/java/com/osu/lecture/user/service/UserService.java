package com.osu.lecture.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.osu.lecture.user.UserVO;
import com.osu.lecture.user.dao.UserDao;

@Service
public class UserService implements IUserService {
	@Inject 
	UserDao userDao;
	
	@Override
	public boolean loginCheck(UserVO user, HttpSession session) throws Exception {
		boolean result = userDao.loginCheck(user);
		//if id and password exist
		if(result) {
			UserVO user2 = userDao.viewUser(user);
			session.setAttribute("userId", user2.getUserId());
			session.setAttribute("userPw", user2.getUserPw());
		}
		return result;
	}
	
	@Override
	public void register(UserVO user) throws Exception {
		userDao.register(user);
	}

	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();
		
	}

	@Override
	public boolean checkAvailableId(String userId) throws Exception {
		return userDao.checkAvailableId(userId);
	}
}
