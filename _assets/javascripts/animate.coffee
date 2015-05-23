el = document.getElementsByTagName('body')

efx = ->
	Velocity(el, "transition.expandIn", {stagger:100});
	######console.log("efx called. El is " + el.toString())
window.addEventListener("click", efxOut);

efxOut = ->
	#prevent.Default
	console.alert('wait.')
	Velocity(el, "transition.expandOut")

window.efx = efx
window.efxOut = efxOut

//= require velocity.js
//= require velocity.ui.min.js
//= require animate.coffee