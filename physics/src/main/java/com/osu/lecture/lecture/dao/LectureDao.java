package com.osu.lecture.lecture.dao;

import java.util.List;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.osu.lecture.lecture.LectureVO;

@Repository
public class LectureDao implements ILectureDao{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "LectureMapper";
	
	@Override
	public void create(LectureVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertLecture", vo);
		
	}

	@Override
	public List<LectureVO> upcomingLectureList() throws Exception {
		return sqlSession.selectList(namespace +".selectUpcomingLecture");
	}
	
	@Override
	public List<LectureVO> pastLectureList() throws Exception {
		return sqlSession.selectList(namespace + ".selectPastLecture");
	}
	
	@Override
	public List<LectureVO> myLectureList(String userId) throws Exception {
		return sqlSession.selectList(namespace + ".selectMyLecture", userId);
	}

	@Override
	public LectureVO selectLecture(int lectureId) throws Exception {
		return sqlSession.selectOne(namespace + ".detailLecture", lectureId);
	}

	@Override
	public void deleteLecture(int lectureId) throws Exception {
		sqlSession.selectOne(namespace + ".deleteLecture", lectureId);
	}

	@Override
	public void updateLecture(LectureVO vo) throws Exception {
		sqlSession.selectOne(namespace + ".updateLecture", vo);
	}

	@Override
	public int getInstructorId(String userId) throws Exception {
		return sqlSession.selectOne(namespace + ".selectIdbyUserId", userId);
	}
}
