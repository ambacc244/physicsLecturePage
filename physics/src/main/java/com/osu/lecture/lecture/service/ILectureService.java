package com.osu.lecture.lecture.service;

import java.util.List;

import com.osu.lecture.lecture.LectureVO;

public interface ILectureService {
	public void create(LectureVO vo) throws Exception;
	public List<LectureVO> listAll() throws Exception;
	public LectureVO read(int lectureId) throws Exception;
	public void delete(int lectureId) throws Exception;
	public void update(int lectureId) throws Exception;
}
