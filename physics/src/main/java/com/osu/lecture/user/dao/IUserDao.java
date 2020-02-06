package com.osu.lecture.user.dao;

import javax.servlet.http.HttpSession;

import com.osu.lecture.user.UserVO;

public interface IUserDao {
	public boolean loginCheck(UserVO user);
	public UserVO viewUser(UserVO user);
	public void logout(HttpSession session);
	public void register(UserVO user) throws Exception;
}