els = document.getElementsByClassName('card');

fadeIn = ->
	#Velocity(els, "transition.flipXIn", {opacity:1}, {stagger:200});
	Velocity(els, "transition.bounceDownIn")

watch = ->
	els.addEventListener "mouseover", (evt) ->
		fadeIn(evt)
		alert('faded in.')
		

watch()