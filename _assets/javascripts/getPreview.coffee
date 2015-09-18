
window.getContent = (link) ->
	console.log  link.href
	r = new XMLHttpRequest
	r.open 'GET', link.href, false

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

getPreview()