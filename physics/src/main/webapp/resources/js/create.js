function checkInputIsNull(){
	var lectureTitle = document.getElementsByName('lectureTitle')[0].value;
	var lectureDesc = document.getElementsByName('lectureDesc')[0].value;
	var lectureLink = document.getElementsByName('lectureLink')[0].value;
	var lectureDate = document.getElementsByName('lectureDate')[0].value;
	var lectureTime = document.getElementsByName('lectureTime')[0].value;
	
	var input_values = [lectureTitle, lectureDesc, lectureLink, lectureDate, lectureTime];

	var reject_msg =[
		"Title을 입력하세요",
		"Description을 입력하세요",
		"Link를 입력하세요",
		"Date를 입력하세요",
		"Time을 입력하세요"
	];

	for(var i=0; i<5; i++){
		if(input_values[i] == ""){
			alert(reject_msg[i]);
			return false;
		}
	}
	if(confirm('강의를 새로 만드시겠어요?')){
		return document.createLectureForm.submit();
	}
	return false;
}