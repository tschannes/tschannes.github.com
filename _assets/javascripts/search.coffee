getSearchData = (query) ->
  markup = ""
  markUp = (object) ->
    console.log ("marked up " + object.title + ".")
    result = "<div class='search-post' itemscope itemtype='http://schema.org/Article'><b><a href='" + object.link + "' property='url'><span itemprop='name'>" + object.title + "</span></a></b>: " + moreHelper(object.blob,160) + "</div>"
    markup += result
    document.getElementById('results').innerHTML = markup

  moreHelper = (string,limit) ->
    if string.length > limit
      return string.slice(0,limit) + "..."
    else
      return string.slice(0,limit)

  makeFuzzier = (query) ->
    first = query.charAt(0).toLowerCase()
    rest = query.substr(1)
    query = "(#{first.toUpperCase()}|#{first})#{rest}"
    console.log(query)
    return query

  #url = "http://www.tapirgo.com/api/1/search.json?token=56d744b614930ddbe4000000&query=" + makeFuzzier query
  #console.log(url)
  fehler = {"title":"Oops...","link":"/","content":null,"blob":"Nichts gefunden. Zurück zur Startseite?","published_on":"2015-04-30T22:00:00Z"}
  #JSONP url, (json) -> 
  json = getJSON 'http://localhost:4000/feed.json', query, searchJSON
  markUp object for object in json
  if json.length == 0
    console.log("No JSON AROUND.")
    markup = markUp fehler
  markup

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
  jsonObj = JSON.parse(resultsJSON)
  #console.log("Length of JSON: " + jsonObj.length);
  if jsonObj.length > 0
    #make results accessible to window
    results = []
    reg = new RegExp(query, 'ig')
    i = 0
    while i < jsonObj.length
      #console.log 'Query: ' + reg.toString() + ' Item: ' + jsonObj[i].title
      #console.log(jsonObj[i].title + " " + jsonObj[i].blob.indexOf(query) + " Treffer.");
      if (jsonObj[i].blob.match(reg) or 0).length >= 0
        console.log("Fund: " + (jsonObj[i].blob.match(reg)) + " at: " + jsonObj[i].title)
        result = jsonObj[i]
        weight = (result.blob.match(reg) or []).length
        result.weight = weight
        results.push result
      i++
    results.sort (a, b) ->
      parseFloat(b.weight) - parseFloat(a.weight)
    console.log results
    return results
  else
    console.log 'empty or non-valid results.'
  return

window.triggerSearch = ->
  query = document.getElementById('query').value
  result = getSearchData(query)