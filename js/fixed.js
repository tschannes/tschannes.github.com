function ad() {
	window.addEventListener("scroll", function(evt) {

		// This value is your scroll distance from the top
		var distance_from_top = document.body.scrollTop;
		var ad = document.getElementsByClassName('ad')[0];

		// The user has scrolled to the tippy top of the page. Set appropriate style.
		if (distance_from_top < CheckAdHeight()) {
			ad.removeAttribute("style");
		}

		// The user has scrolled down the page.
		if (distance_from_top > CheckAdHeight()) {
			ad.style.position = "fixed";
			ad.style.top = "5em";
			ad.style.right = "5%";
		}
	});

	function CheckAdHeight() {
		var distance = "";
		if (document.getElementsByClassName('intro').length > 0) {
			distance = document.getElementsByClassName('intro')[0].offsetHeight + 20;
			return distance;
		}else{
			distance = 0;
			return distance;
		}
	}
}

function checkWidth() {
	var w = window.innerWidth;
	if (w > 1200) {
		return true;
	}
}

function watchWidth() {
	window.addEventListener("resize", function(evt) {
		if (checkWidth() === true) {
			ad();
		}else{
			location.reload();
		}
	});
}

/*Calling functions*/
if (checkWidth() === true) {
	ad();
}
watchWidth();