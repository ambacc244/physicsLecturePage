package com.osu.lecture.lecture.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.osu.lecture.lecture.service.LectureVO;

@Repository
public class LectureDAOImp implements LectureDao{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.osu.mapper.lecture-mapper";
	
	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertLecture", vo);
		
	}

	@Override
	public List<LectureVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		sqlSession.selectList(namespace + ".listLecture");
		return null;
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
