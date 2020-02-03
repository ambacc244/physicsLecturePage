function register(){
	//get values
	//var userName = document.getElementsByName('userName')[0].value;
	var userId = document.getElementsByName('userId')[0].value;
	var userPw = document.getElementsByName('userPw')[0].value;
	//check empty value
	if(userId == ""){
		alert("아이디를 입력하세요.");
		return;
	}
	else if(userPw == ""){
		alert("비밀번호를 입력하세요.");
		return;
	}
	
	document.registerFrom.submit();
}