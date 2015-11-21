window.getSearchData = (query) ->
  markup = ""
  markUp = (object) ->
    result = "<div class='simple-post' itemscope itemtype='http://schema.org/Article'><a href='" + object.link + "' property='url'><span itemprop='name'>" + object.title + "</span></a>: " + object.summary + "</div>"
    markup += result
    document.getElementById('searchContainer').innerHTML = markup

  url = "http://www.tapirgo.com/api/1/search.json?token=564f13063093adf1ee000000&query=" + query
  JSONP url, (json) -> 
    markUp object for object in json
  markup

