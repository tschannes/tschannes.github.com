moreHelper = (string,limit) ->
  if string.length > limit
    return string.slice(0,limit) + "..."
  else
    return string.slice(0,limit)

getSearchData = (query) ->
  getJSON 'http://localhost:4000/feed.json', query, searchJSON

window.searchOnEnter = (e) ->
  # look for window.event in case event isn't passed in
  e = e or window.event
  if e.keyCode == 13
    document.getElementById('search').click()
    return false
  true

getJSON = (url, query, callback) ->
  Httpreq = new XMLHttpRequest
  # a new request
  Httpreq.open 'GET', url, false
  Httpreq.send null
  json = Httpreq.responseText
  callback json, query
  return

searchJSON = (resultsJSON, query) ->
  resultsObj = JSON.parse(resultsJSON)
  #console.log("Length of JSON: " + resultsObj.length);
  if resultsObj.length > 0
    #make results accessible to window
    results = []
    reg = new RegExp(query, 'ig')
    i = 0
    while i < resultsObj.length
      #console.log 'Query: ' + reg.toString() + ' Item: ' + resultsObj[i].title
      #console.log(resultsObj[i].title + " " + resultsObj[i].blob.indexOf(query) + " Treffer.");
      if (resultsObj[i].blob.match(reg) or 0).length >= 0
        #console.log("Fund: " + (resultsObj[i].blob.match(reg)) + " at: " + resultsObj[i].title)
        result = resultsObj[i]
        weight = (result.blob.match(reg) or []).length
        result.weight = weight
        html = "<div class='search-post' itemscope itemtype='http://schema.org/Article'><b><a href='" + result.link + "' property='url'><span itemprop='name'>" + result.title + "</span></a></b>: " + moreHelper(result.excerpt,160) + "</div>"
        result.html = html
        results.push result
      i++
    results.sort (a, b) ->
      parseFloat(b.weight) - parseFloat(a.weight)
    #console.log "Found " + results.length + " results."
  else
    errorObj = {}
    errorObj.title = "Oops..."
    errorObj.link = "/"
    errorObj.blob = "Nichts gefunden. Zurück zur Startseite?"
    errorObj.html = "<div class='search-post' itemscope itemtype='http://schema.org/Article'><b><a href='" + errorObj.link + "' property='url'><span itemprop='name'>" + errorObj.title + "</span></a></b>: " + moreHelper(errorObj.excerpt,160) + "</div>"
    results.push errorObj
  # function to generate and insert resultString
  resultString = ""
  for el in results
    resultString = resultString + el.html
  #console.log(resultString)
  document.getElementById('results').innerHTML = resultString
  return

window.triggerSearch = ->
  query = document.getElementById('query').value
  result = getSearchData(query)