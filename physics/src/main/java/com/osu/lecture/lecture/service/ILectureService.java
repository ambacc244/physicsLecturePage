package com.osu.lecture.lecture.service;

import java.util.List;
import com.osu.lecture.lecture.LectureVO;

public interface ILectureService {
	public void create(LectureVO vo) throws Exception;

	public List<LectureVO> upcomingLectureList() throws Exception;

	public List<LectureVO> pastLectureList() throws Exception;

	public List<LectureVO> myLectureList(String userId) throws Exception;

	public LectureVO selectLecture(int parseInt) throws Exception;

	public void deleteLecture(int lectureId) throws Exception;

	public void updateLecture(LectureVO vo) throws Exception;

	public int getInstructorId(String userId) throws Exception;

}
