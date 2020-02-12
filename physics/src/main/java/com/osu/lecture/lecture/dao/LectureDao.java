package com.osu.lecture.lecture.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.osu.lecture.lecture.LectureVO;
import com.osu.lecture.user.dao.UserDao;

@Repository
public class LectureDao implements ILectureDao{
	private static final Logger logger = LoggerFactory.getLogger(LectureDao.class);
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "LectureMapper";
	
	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertLecture", vo);
		
	}

	@Override
	public List<LectureVO> upcomingLectureList(){
		return sqlSession.selectList(namespace +".selectUpcomingLecture");
		//return sqlSession.selectList("LectureMapper.selectUpcomingLecture");
	}
	
	@Override
	public List<LectureVO> pastLectureList(){
		return sqlSession.selectList(namespace + ".selectPastLecture");
		//return sqlSession.selectList("LectureMapper.selectPastLecture");
	}

	@Override
	public LectureVO read(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.selectOne(namespace + ".detailLecture", lectureId);
		return null;
	}

	@Override
	public void delete(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".deleteLecture", lectureId);
	}

	@Override
	public void update(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateLecture", lectureId);
		
	}
}
