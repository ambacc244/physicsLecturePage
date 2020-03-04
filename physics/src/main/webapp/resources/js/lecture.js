function tConvert(time) {
	var hour = time.substr(0, 2);
	var AmPm = (hour < 12 || hour === 24) ? "AM" : "PM";
	var h = hour % 12;
 
	if(h == 0)
		h = 12;

	document.write( h + time.substr(2, 3) + AmPm );
}