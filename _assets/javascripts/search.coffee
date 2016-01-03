getSearchData = (query) ->
  markup = ""
  markUp = (object) ->
    result = "<div class='search-post' itemscope itemtype='http://schema.org/Article'><b><a href='" + object.link + "' property='url'><span itemprop='name'>" + object.title + "</span></a></b>: " + moreHelper(object.summary,160) + "</div>"
    markup += result
    document.getElementById('results').innerHTML = markup

  moreHelper = (string,limit) ->
    if string.length > limit
      return string.slice(0,limit) + "..."
    else
      return string.slice(0,limit)

  url = "http://www.tapirgo.com/api/1/search.json?token=5657607e3093adf1ee000000&query=" + query
  #console.log(url)
  fehler = {"title":"Oops...","_score":null,"link":"/","content":null,"summary":"Nichts gefunden. Zurück zur Startseite?","published_on":"2015-04-30T22:00:00Z"}
  JSONP url, (json) -> 
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

window.triggerSearch = ->
  query = document.getElementById('query').value
  result = getSearchData(query)