package com.osu.lecture.user.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.osu.lecture.user.User;

@Repository
public class UserDao implements IUserDao {
	@Inject 
	SqlSession sqlSession;
	
	@Override 
	public boolean loginCheck(User user) {
		String sql = sqlSession.selectOne("user.loginCheck", user);
		return (sql == null) ? false : true;
	}
	
	@Override
	public User viewUser(User user) {
		return sqlSession.selectOne("user.viewUser", user);
	}
	
	@Override
	public void logout(HttpSession session) {
		
	}
	
	@Override
	public void register(User user) throws Exception {
		sqlSession.selectOne("user.register", user);
	}
}
