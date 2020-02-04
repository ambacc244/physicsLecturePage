package com.osu.lecture.lecture.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.osu.lecture.lecture.dao.LectureDao;

@Service
public class LectureService implements LectureServiceItf{

	@Inject
	private LectureDao dao;

	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);	
	}

	@Override
	public List<LectureVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		
		return dao.listAll();
	}

	@Override
	public LectureVO read(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(lectureId);
	}

	@Override
	public void delete(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(lectureId);
	}

	@Override
	public void update(int lectureId) throws Exception {
		// TODO Auto-generated method stub
		dao.update(lectureId);
	}

}
