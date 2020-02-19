package com.osu.lecture.lecture.service;

import java.util.List;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.osu.lecture.lecture.LectureVO;
import com.osu.lecture.lecture.dao.LectureDao;

@Service
public class LectureService implements ILectureService{
	private static final Logger logger = LoggerFactory.getLogger(LectureService.class);
	@Inject
	private LectureDao lectureDao;

	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		lectureDao.create(vo);	
	}

	@Override
	public List<LectureVO> upcomingLectureList() {
		return lectureDao.upcomingLectureList();
	}
	
	@Override
	public List<LectureVO> pastLectureList() {
		return lectureDao.pastLectureList();
	}

	@Override
	public List<LectureVO> myLectureList(String userId) throws Exception {
		return lectureDao.myLectureList(userId);
	}
	
	@Override
	public LectureVO read(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		return lectureDao.read(lectureId);
	}

	@Override
	public void delete(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		lectureDao.delete(lectureId);
	}

	@Override
	public void update(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		lectureDao.update(lectureId);
	}
}
