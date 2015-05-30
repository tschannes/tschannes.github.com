window.pickRandomColor = ->
	colors = [
		"#130051", 
		"#3400DD", 
		"#25009E", 
		"#1C0077",
		"#2e00c4", 
		"#220091"
	]
	logo = document.getElementById('logo')
	rects = logo.getElementsByTagName('rect')
	for i in [0...rects.length] by 1
		x = Math.floor(Math.random() * colors.length)
		el = rects[i]
		unless rects[i].id == "background"
			el.style.fill = colors[x];

setInterval () ->
	pickRandomColor()
, 333