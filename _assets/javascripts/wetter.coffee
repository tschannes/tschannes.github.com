if window.location.pathname == "/wetter/"
  #console.log('The Weather Script is Running.')
  ajaxCounter = 0

  document.getElementById("tglBtn").addEventListener "click", (e) ->
    findLocation(getWeather) if ajaxCounter < 1

  handler = (json) ->
    printData(json)

  getWeather = (coords) ->
    stem = 'https://api.forecast.io/forecast/'
    key = '901f738ef524ecd81eafcead2fd6389b/'
    params = '?lang=de&units=ca'
    url = stem + key + coords + params
    makeRequest(url)

  makeRequest = (url) -> 
    JSONP url, (json) -> 
      handler(json)
    ajaxCounter += 1
    return

  findLocation = (callback) ->
    geolocFail = ->
      el = undefined
      msg = undefined
      document.getElementById('loader').setAttribute 'style', 'display: none;'
      msg = "<span class='red'>Aktivieren Sie Geolokalisation, um dieses Feature zu nutzen.</span>"
      if !(document.getElementsByClassName('wetter')[0].innerHTML.indexOf('span') > -1)
        document.getElementsByClassName('wetter')[0].innerHTML += msg
      return
    if navigator.geolocation
      location_timeout = setTimeout('geolocFail()', 2000)
      navigator.geolocation.getCurrentPosition ((position) ->
        clearTimeout location_timeout
        loc = position.coords.latitude + "," + position.coords.longitude
        callback(loc)
        return
      ), (error) ->
        clearTimeout location_timeout
        geolocFail()
        return
    else
      # Fallback for no geolocation
      geolocFail()

  printData = (data) ->
    document.getElementById("loader").setAttribute("style", "display: none;");

    dateString = (dateObject) ->
      date = 
        fullDate: ''
        day: ''
      months = [
        'Januar'
        'Februar'
        'März'
        'April'
        'Mai'
        'Juni'
        'Juli'
        'August'
        'September'
        'Oktober'
        'November'
        'Dezember'
      ]
      days = [
        'Sonntag'
        'Montag'
        'Dienstag'
        'Mittwoch'
        'Donnerstag'
        'Freitag'
        'Samstag'
      ]
      date.fullDate = dateObject.getDate() + '. ' + months[dateObject.getMonth()] + ' ' + dateObject.getFullYear()
      date.day = days[dateObject.getDay()]
      date

    speedHelper = (num) ->
      color = "<span style='color:white;background-color:red'>" + num + "</span>" if num > 20
      color = "<span style='color:white;background-color:orange'>" + num + "</span>" if num < 20
      color = "<span style='color:white;background-color:green'>" + num + "</span>" if num < 10
      color

    cloudBaseHelper = (temp,dewPoint) ->
      cloudBase = Math.round((temp - dewPoint) * 125)
      #console.log(cloudBase)
      return cloudBase

    directionHelper = (num) ->
      arrow = " </br>Wind: <img src='/images/arrow.svg' style='display:inline-block;color:purple;width:1em;height:1em;-ms-transform: rotate(" + num + "deg); /* IE 9 */-webkit-transform: rotate(" + num + "deg); /* Safari */transform: rotate(" + num + "deg);'></img> "

    date = new Date(data.hourly.data[0].time * 1000)
    dateSummary = data.hourly.summary
    forecast = []
    daily = data.daily.data 
    i = 0
    while i <= daily.length - 1
      day = daily[i]
      timestamp = new Date(day.time * 1000)
      wtr = []
      wtr.push('<li><b>')
      wtr.push(dateString(timestamp).day)
      wtr.push('</b>: ')
      wtr.push(day.summary)
      wtr.push(directionHelper(day.windBearing))
      wtr.push(speedHelper(day.windSpeed))
      wtr.push('km\/h')
      wtr.push('</br>Wolkenbasis: ')
      wtr.push(cloudBaseHelper(day.temperatureMax, day.dewPoint))
      wtr.push('m.ü.M.</li>')
      forecastDay = wtr.join("")
      forecast.push(forecastDay)
      i++
    forecast = forecast.join("")
    document.getElementsByClassName("wetter")[0].innerHTML += '<ul>' + forecast + '<br>Daten von <a href="http://forecast.io/">Forecast.io</a>.</ul>'