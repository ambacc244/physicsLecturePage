console.log("Create js file is called");
function checkInputIsNull(){
	var get_title_value = document.getElementsByClassName("titleFrom")[0];
	var get_desc_value = document.getElementsByClassName("descFrom")[0];
	var get_text_value = document.getElementsByClassName("linkForm")[0];
	var get_date_value = document.getElementsByClassName("dateFrom")[0];
	var get_time_value = document.getElementsByClassName("timeForm")[0];
	
	var youtube_url_regex = /^(?:https?:\/\/)?(?:m\.|www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
	var input_values = [
		get_title_value, get_desc_value, get_text_value, get_date_value, get_time_value
	];

	var reject_msg =[
		"Title을 입력하세요",
		"Description을 입력하세요",
		"Link를 입력하세요",
		"Date를 입력하세요",
		"Time을 입력하세요"
	]

	for(var i=0; i< input_values.length; i++){
		if(input_values[i].value == ''){
			alert(reject_msg[i]);
			return false;
		}
		
		if(!(input_values[2].value.match(youtube_url_regex))){
			alert("Youtube링크가 잘못되었습니다!");
			return false;
		}
	}

    return confirm('강의를 새로 만드시겠어요?');;
}