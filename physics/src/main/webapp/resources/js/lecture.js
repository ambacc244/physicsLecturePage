function tConvert(time){
	console.log(time);
	var hour = time.substr(0, 2);
	var AmPm = (hour < 12 || hour === 24) ? "AM" : "PM";
	var h = H % 13;
	console.log(hour);
	console.log(AmPm);
	console.log(h);
	return h + time.substr(2, 3) + AmPm; 
}