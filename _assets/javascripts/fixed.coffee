

bigScreenLimit = 1200
ad = document.getElementsByClassName("ad")[0]

makeFixed = ->

  window.addEventListener "scroll", (evt) ->

    adHeight = ->
      distance = ""
      if document.getElementsByClassName("intro").length > 0
        distance = document.getElementsByClassName("intro")[0].offsetHeight + 80
        distance
      else
        distance = 140
        distance

    distance_from_top = (document.documentElement.scrollTop or document.body.scrollTop)
    
    # The user has scrolled to the top of the page. Remove styles.
    ad.removeAttribute "style" if distance_from_top < adHeight()
    # The user has scrolled down the page and we are on a big screen
    marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
    if distance_from_top > adHeight() and window.innerWidth > bigScreenLimit
      ad.style.position = "fixed"
      ad.style.top = "2em"
      ad.style.right = marginRight
    else
      ad.removeAttribute "style"
      ###console.log('restyling applied.')###
    return

watchIt = ->
  window.addEventListener "resize", (evt) ->
    if window.innerWidth > bigScreenLimit
      makeFixed()
    else
      ad.removeAttribute "style"
      ###console.log('restyle() called.')###
  return

#Calling functions
makeFixed()
watchIt()