function checkInputIsNull(){
    var i = 0;
    var x = document.getElementsByClassName("createForm");
    for(;i < x.length; i++){
        if( x[i].value === ''){
            alert("You should write something");
            return false;
        }
    }
    return true;
}