bigScreen = ->
  bigScreenLimit = 1200
  true if window.innerWidth > bigScreenLimit

makeFixed = (el) ->
  ad = el

  measure = (el) -> 
    if document.getElementsByClassName(el).length
      height = document.getElementsByClassName(el)[0].offsetHeight
    else
      height = 0

  introHeight = measure('intro')
  navHeight = measure('site-header')

  window.addEventListener "scroll", (evt) ->
    distanceFromTop = (document.documentElement.scrollTop or document.body.scrollTop)
    # The user has scrolled to the top of the page. Remove styles.
    ad.removeAttribute "style" if distanceFromTop <= (navHeight + introHeight)
    # The user has scrolled down the page and we are on a big screen
    marginRight = (window.innerWidth - document.querySelectorAll('.home, .post')[0].offsetWidth - scrollbarWidth) / 2 + "px";
    if distanceFromTop > (navHeight + introHeight) and bigScreen()
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
    else
      ad.removeAttribute "style"
  return

#Run functions
FixerMaker = (el)->
  needed = ->
    path = window.location.pathname
    true if path == '/' || path == '/content/' || path == '/text/' || path == '/referenzen/'
  this.run = if needed()
    makeFixed(el)
    watch(el)

el = document.getElementsByClassName("ad")[0]
r = new FixerMaker el
r.run