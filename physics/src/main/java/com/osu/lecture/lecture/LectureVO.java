package com.osu.lecture.lecture;

import java.sql.Date;

public class LectureVO {

	private int lectureId;
	private String lectureTitle;
	private String lectureDesc;
	private String lectureLink;
	private Date lectureDate;
	private String lectureTime;
	private int instructorId;

	public LectureVO() {
	}

	public int getLectureId() {
		return lectureId;
	}

	public void setLectureId(int lectureId) {
		this.lectureId = lectureId;
	}

	public String getLectureTitle() {
		return lectureTitle;
	}

	public void setLectureTitle(String lectureTitle) {
		this.lectureTitle = lectureTitle;
	}

	public String getLectureDesc() {
		return lectureDesc;
	}

	public void setLectureDesc(String lectureDesc) {
		this.lectureDesc = lectureDesc;
	}

	public String getLectureLink() {
		return lectureLink;
	}

	public void setLectureLink(String lectureLink) {
		this.lectureLink = lectureLink;
	}

	public Date getLectureDate() {
		return lectureDate;
	}

	public void setLectureDate(Date lectureDate) {
		this.lectureDate = lectureDate;
	}

	public String getLectureTime() {
		return lectureTime;
	}

	public void setLectureTime(String lectureTime) {
		this.lectureTime = lectureTime;
	}

	public int getInstructorId() {
		return instructorId;
	}

	public void setInstructorId(int instructorId) {
		this.instructorId = instructorId;
	}

	@Override
	public String toString() {
		return "LectureVO [lectureId=" + lectureId + ", lectureTitle=" + lectureTitle + ", lectureDesc=" + lectureDesc
				+ ", lectureLink=" + lectureLink + ", lectureDate=" + lectureDate + ", lectureTime=" + lectureTime
				+ ", instructorId=" + instructorId + "]";
	}
}