package com.osu.lecture.lecture.dao;

import java.util.List;

import com.osu.lecture.lecture.LectureVO;

public interface ILectureDao {
	public void create(LectureVO vo) throws Exception;
	public List<LectureVO> upcomingLectureList() throws Exception;
	public List<LectureVO> pastLectureList() throws Exception;
	public List<LectureVO> myLectureList(String userId) throws Exception;
	public void deleteLecture(int lectureId) throws Exception;
	public void updateLecture(LectureVO vo) throws Exception;
	public LectureVO selectLecture(int lectureId) throws Exception;
	public int getInstructorId(String userId) throws Exception;
}