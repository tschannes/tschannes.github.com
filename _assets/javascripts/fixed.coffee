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
  window.addEventListener "scroll", (evt) ->
    distanceFromTop = (document.documentElement.scrollTop or document.body.scrollTop)
    # The user has scrolled to the top of the page. Remove styles.
    ad.removeAttribute "style" if distanceFromTop <= (offsetHeight())
    # The user has scrolled down the page and we are on a big screen
    marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
    if distanceFromTop >= offsetHeight() and bigScreen()
      ad.style.position = "fixed"
      ad.style.top = "2em"
      ad.style.right = marginRight
    else
      ad.removeAttribute "style"
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
FixerMaker = (el)->
  needed = ->
    path = window.location.pathname
    true if path != '/lebenslauf/'
  this.run = if needed()
    makeFixed(el)
    watch(el)

el = document.getElementsByClassName("ad")[0]
r = new FixerMaker el
r.run