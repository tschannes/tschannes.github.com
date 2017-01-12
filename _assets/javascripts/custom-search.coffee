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
        result = jsonObj[i]
        weight = (result.blob.match(reg) or []).length
        result.weight = weight
        results.push result
      i++
    results.sort (a, b) ->
      parseFloat(b.weight) - parseFloat(a.weight)
    return results
  else
    console.log 'empty or non-valid results.'
  return