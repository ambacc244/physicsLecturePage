document.addEventListener("DOMContentLoaded", function(event) {
	console.log("Lecture page js is called");
	var replace_youtube_url = document.getElementsByClassName('lecture-video-link')[0].src.replace("watch?v=", "embed/");
	document.getElementsByClassName('lecture-video-link')[0].src = replace_youtube_url;
 });