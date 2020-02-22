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
	@Inject
	private LectureDao lectureDao;

	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		lectureDao.create(vo);	
	}

	@Override
	public List<LectureVO> upcomingLectureList() throws Exception {
		return lectureDao.upcomingLectureList();
	}
	
	@Override
	public List<LectureVO> pastLectureList() throws Exception {
		return lectureDao.pastLectureList();
	}

	@Override
	public List<LectureVO> myLectureList(String userId) throws Exception {
		return lectureDao.myLectureList(userId);
	}
	
	@Override
	public LectureVO selectLecture(int lectureId) throws Exception {
		return lectureDao.selectLecture(lectureId);
	}

	@Override
	public void deleteLecture(int lectureId) throws Exception {
		lectureDao.deleteLecture(lectureId);
	}

	@Override
	public void updateLecture(LectureVO vo) throws Exception {
		lectureDao.updateLecture(vo);
	}

	public int getInstructorId(String userId) {
		return lectureDao.getInstructorId(userId);
		
	}
}
