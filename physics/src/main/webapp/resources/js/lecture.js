function tConvert(time) {
	var hour = time.substr(0, 2);
	var AmPm = (hour < 12 || hour === 24) ? "AM" : "PM";
	var h = hour % 12;
 
	if(h == 0)
		h = 12;

	document.write( h + time.substr(2, 3) + AmPm );
}

function youtubeParser(url){
    var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
    var match = url.match(regExp);
    return (match&&match[7].length==11)? match[7] : false;
}

document.addEventListener("DOMContentLoaded", function (event) {
	var i = 0;
	var linkClass = document.getElementsByClassName('lecture-image-link');
    for(;i < linkClass.length; i++){
    	linkClass[i].src = "https://img.youtube.com/vi/" + youtubeParser(linkClass[i].src) + "/0.jpg"
    }
});