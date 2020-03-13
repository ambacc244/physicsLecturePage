function checkInputIsNull() {
	console.log("Create js file is called");
	var lectureTitle = document.getElementsByClassName("lecture-title")[0];
	var lectureDesc = document.getElementsByClassName("lecture-desc")[0];
	var lectureLink = document.getElementsByClassName("lecture-link")[0];
	var lectureDate = document.getElementsByClassName("lecture-date")[0];
	var lectureTime = document.getElementsByClassName("lecture-time")[0];

	var youtube_url_regex = /^(?:https?:\/\/)?(?:m\.|www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
	var input_values = [
		lectureTitle, lectureDesc, lectureLink, lectureDate, lectureTime
	];

	var reject_msg = [
		"Title을 입력하세요",
		"Description을 입력하세요",
		"Link를 입력하세요",
		"Date를 입력하세요",
		"Time을 입력하세요"
	];

	for (var i = 0; i < 5; i++) {
		if (input_values[i].value == "") {
			alert(reject_msg[i]);
			return false;
		}

		if (!(input_values[2].value.match(youtube_url_regex))) {
			alert("Youtube링크가 잘못되었습니다!");
			return false;
		}
	}
	return confirm('강의를 새로 만드시겠어요?');
}