package com.osu.lecture.lecture;

import java.sql.Date;

public class LectureVO {

    private int lectureId;
	private String lectureTitle;
    private String lectureDesc;
    private String lectureLink;
    private String lectureDate;
    private int instructorId;

    public LectureVO(){}
    
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

	public String getLectureDate() {
		return lectureDate;
	}

	public void setLectureDate(String lectureDate) {
		this.lectureDate = lectureDate;
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
				+ ", lectureLink=" + lectureLink + ", lectureDate=" + lectureDate + ", instructorId=" + instructorId
				+ "]";
	}
}