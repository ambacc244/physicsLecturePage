package com.osu.lecture.user.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.osu.lecture.user.UserVO;

@Repository
public class UserDao implements IUserDao {
	private static final Logger logger = LoggerFactory.getLogger(UserDao.class);
	@Inject 
	SqlSession sqlSession;
	
	private static final String namespace = "UserMapper";
	
	@Override 
	public boolean loginCheck(UserVO user) {
		String sql = sqlSession.selectOne(namespace + ".loginCheck", user);
		return (sql == null) ? false : true;
	}
	
	@Override
	public UserVO viewUser(UserVO user) {
		return sqlSession.selectOne(namespace + ".viewUser", user);
	}
	
	@Override
	public void register(UserVO user) throws Exception {
		sqlSession.selectOne(namespace + ".register", user);
	}
}
