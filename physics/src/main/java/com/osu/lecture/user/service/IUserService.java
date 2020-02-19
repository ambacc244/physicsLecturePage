package com.osu.lecture.user.service;

import javax.servlet.http.HttpSession;

import com.osu.lecture.user.UserVO;

public interface IUserService {
	public boolean loginCheck(UserVO user, HttpSession session) throws Exception;
	public void register(UserVO user) throws Exception;
	public void logout(HttpSession session) throws Exception;
}
