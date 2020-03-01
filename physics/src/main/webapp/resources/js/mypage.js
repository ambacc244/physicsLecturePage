function deleteLecture(lectureId) {
	if (confirm("강의를 삭제하시습니까?"))
		window.location.href = '/lecture/mypage/delete/' + lectureId;
}
