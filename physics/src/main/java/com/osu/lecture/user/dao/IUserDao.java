package com.osu.lecture.user.dao;

import javax.servlet.http.HttpSession;

import com.osu.lecture.user.User;

public interface IUserDao {
	public boolean loginCheck(User user);
	public User viewUser(User user);
	public void logout(HttpSession session);
}