package com.osu.lecture.user.dao;

import com.osu.lecture.user.UserVO;

public interface IUserDao {
	public boolean loginCheck(UserVO user) throws Exception;

	public UserVO viewUser(UserVO user) throws Exception;

	public void register(UserVO user) throws Exception;

	public boolean checkAvailableId(String userId) throws Exception;
}