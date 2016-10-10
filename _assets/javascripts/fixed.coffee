bigScreen = ->
  bigScreenLimit = 1200
  true if window.innerWidth > bigScreenLimit

offsetHeight = ->
  nav = document.getElementsByTagName('header')[0].offsetHeight
  search = document.getElementById('searchContainer').offsetHeight
  total = nav + search

makeFixed = (el) ->
  ad = el
  #console.log(offsetHeight())
  window.addEventListener "load", (evt) ->
    adjustAd(ad)
  window.addEventListener "scroll", (evt) ->
    adjustAd(ad)

adjustAd = (el) ->
  distanceFromTop = (document.documentElement.scrollTop or document.body.scrollTop)
  # The user has scrolled down the page and we are on a big screen
  marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
  # The user has scrolled to the top of the page. Remove styles.
  if ! bigScreen()
    el.removeAttribute "style"
  else if distanceFromTop >= offsetHeight() and bigScreen()
    el.style.position = "fixed"
    el.style.top = "2em"
    el.style.right = marginRight
  else
    el.removeAttribute "style"
    el.style.position = "absolute"
    el.style.right = marginRight
    el.style.top = offsetHeight()
  return

watch = (el) ->
  ad = el
  window.addEventListener "resize", (evt) ->
    ad = document.getElementsByClassName("ad")[0]
    if bigScreen()
      makeFixed(ad)
      offsetHeight()
    else
      ad.removeAttribute "style"
  return

#Run functions
FixerMaker = (el) ->
  needed = ->
    path = window.location.pathname
    true if path != '/lebenslauf/'
  this.run = if needed()
    makeFixed(el)
    watch(el)

el = document.getElementsByClassName("ad")[0]
r = new FixerMaker el
r.run