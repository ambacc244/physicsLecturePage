function checkInputIsNull(){
	//get values
	var lectureId = document.getElementsByName('lectureId')[0].value;
	var lectureTitle = document.getElementsByName('lectureTitle')[0].value;
	var lectureDesc = document.getElementsByName('lectureDesc')[0].value;
	var lectureLink = document.getElementsByName('lectureLink')[0].value;
	var lectureDate = document.getElementsByName('lectureDate')[0].value;
	var lectureTime = document.getElementsByName('lectureTime')[0].value;
	//check empty value
	if(lectureTitle == ""){
		alert("Title을 입력하세요.");
		return;
	}
	else if(lectureDesc == ""){
		alert("Description을 입력하세요.");
		return;
	}
	else if(lectureLink == ""){
		alert("Link를 입력하세요.");
		return;
	}
	else if(lectureDate == ""){
		alert("Date를 입력하세요.");
		return;
	}
	else if(lectureTime == ""){
		alert("Time을 입력하세요.");
		return;
	}

	if(confirm("강의를 추가 하시습니까?")){
		document.createLectureForm.submit();
	}
}