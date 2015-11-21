getSearchData = (query) ->
  markup = ""
  markUp = (object) ->
    result = "<div class='simple-post' itemscope itemtype='http://schema.org/Article'><a href='" + object.link + "' property='url'><span itemprop='name'>" + object.title + "</span></a>: " + object.summary + "</div>"
    markup += result
    document.getElementById('searchContainer').innerHTML = markup

  url = "http://www.tapirgo.com/api/1/search.json?token=564f13063093adf1ee000000&query=" + query
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
