function login() {
	//get values
	var userId = document.getElementsByClassName("userId")[0];
	var userPw = document.getElementsByClassName("userPw")[0];
	//check empty value
	if (userId.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	else if (userPw.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}

	return true;
}