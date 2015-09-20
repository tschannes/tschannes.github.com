
getContent = (href) ->
	console.log  href
	r = new XMLHttpRequest
	r.open 'GET', href, true

	r.onreadystatechange = ->
	  if r.readyState != 4 or r.status != 200
	    return
	  console.log 'Accessed ' + r.responseText
	  return
	r.send(null)

getPreview = () ->
	links = document.getElementsByTagName("a");
	for link in links
		link.addEventListener "mouseover", (e) ->
			console.log "Mouseover detected"
			this.style.color = "red"
			getContent(this)

		link.addEventListener "mouseout", (e) ->
			this.removeAttribute "style"



window.getWeather = () ->
	key = '901f738ef524ecd81eafcead2fd6389b'
	location = getLocation()
	url = 'https://api.forecast.io/forecast/'
	params = '?jsonp=parseResponse+units=si'
	if location
		link = url + key + '/' + location + params
		console.log link
		getContent(link)
		parseResponse (response) -> 
			console.log response

getWeather()