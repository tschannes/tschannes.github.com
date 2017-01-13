getEm = (el) ->
  div.style.height = "1em"
  em = div.offsetHeight
  div.style.height = 0
  return em

paddingValue = getEm('div') * 1.875

bigScreen = ->
  bigScreenLimit = 1200
  true if window.innerWidth > bigScreenLimit

headerHeight = -> 
  if document.getElementsByClassName('post-header')[0] == undefined
    return 0
  else
    return document.getElementsByClassName('post-header')[0].offsetHeight + paddingValue

offsetHeight = ->
  nav = document.getElementsByTagName('header')[0].offsetHeight
  search = document.getElementById('searchContainer').offsetHeight
  header = headerHeight()
  padding = paddingValue
  total = nav + search + header + padding
  return total

makeFixed = (el) ->
  ad = el
  window.addEventListener "load", (evt) ->
    adjustAd(ad)
  window.addEventListener "scroll", (evt) ->
    adjustAd(ad)

adjustAd = (el) ->
  distanceFromTop = (document.documentElement.scrollTop or document.body.scrollTop) + 37.5
  # The user has scrolled down the page and we are on a big screen
  marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
  # The user has scrolled to the top of the page. Remove styles.
  offset = offsetHeight()
  if ! bigScreen()
    el.removeAttribute "style"
  else if distanceFromTop >= offset and bigScreen()
    el.style.position = "fixed"
    el.style.top = "2em"
    el.style.right = marginRight
  else
    #console.log "else is actually being called with offsetHeight at " + offset
    el.removeAttribute "style"
    el.style.position = "absolute"
    el.style.right = marginRight
    el.style.top = offset + "px"
  return

watch = (el) ->
  ad = el
  window.addEventListener "resize", (evt) ->
    ad = document.getElementsByClassName("ad")[0]
    if bigScreen()
      makeFixed(ad)
      offsetHeight()
  window.addEventListener "triggerSearch", (evt) ->
    ad = document.getElementsByClassName("ad")[0]
    if bigScreen()
      makeFixed(ad)
      offsetHeight()
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