package com.osu.lecture.user.service;

import javax.servlet.http.HttpSession;

import com.osu.lecture.user.User;

public interface IUserService {
	public boolean loginCheck(User user, HttpSession session);
}
