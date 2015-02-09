---
---

restyle = ->
  adHeight = ->
    distance = ""
    if document.getElementsByClassName("intro").length > 0
      distance = document.getElementsByClassName("intro")[0].offsetHeight + 20
      distance
    else
      distance = 0
      distance
  window.addEventListener "scroll", (evt) ->
    
    # This value is your scroll distance from the top
    distance_from_top = (document.documentElement.scrollTop or document.body.scrollTop)
    ad = document.getElementsByClassName("ad")[0]
    
    # The user has scrolled to the tippy top of the page. Set appropriate style.
    ad.removeAttribute "style"  if distance_from_top < adHeight()
    
    # The user has scrolled down the page.
    marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
    if distance_from_top > adHeight()
      ad.style.position = "fixed"
      ad.style.top = "5em"
      ad.style.right = marginRight
    return

  return
watchIt = ->
  isBigScreen = ->
    true  if window.innerWidth > bigScreenLimit
  restyle()  if isBigScreen()
  window.addEventListener "resize", (evt) ->
    if isBigScreen()
      restyle()
    else
      location.reload()
    return

  return
bigScreenLimit = 1200


#Calling functions
watchIt()