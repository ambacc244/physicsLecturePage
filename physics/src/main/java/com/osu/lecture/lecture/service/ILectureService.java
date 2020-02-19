package com.osu.lecture.lecture.service;

import java.util.List;
import com.osu.lecture.lecture.LectureVO;

public interface ILectureService {
	public void create(LectureVO vo) throws Exception;
	public List<LectureVO> upcomingLectureList();
	public List<LectureVO> pastLectureList();
	public List<LectureVO> myLectureList(String userId) throws Exception;
	public LectureVO read(int lectureId) throws Exception;
	public void deleteLecture(int lectureId) throws Exception;
	public void updateLecture(int lectureId) throws Exception;	
}
