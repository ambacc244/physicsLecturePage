function register() {
	//get values
	
	var userId = document.getElementsByClassName("user-id")[0];
	var userPw = document.getElementsByClassName("user-pw")[0];
	var userName = document.getElementsByName("user-name")[0];
	//check empty value
	if (userId.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	else if (userPw.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	else if (userName.value == "") {
		alert("이름을 입력하세요.");
		return false;
	}

	return confirm('회원가입을 하시겠습니까?');
}
