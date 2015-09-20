$(document).ready ->

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

  handler = (data) ->
    date = new Date(data.hourly.data[0].time * 1000)
    dateSummary = data.hourly.summary
    forecast = ''
    daily = data.daily.data
    i = 1
    while i <= daily.length - 1
      timestamp = new Date(daily[i].time * 1000)
      forecast = forecast.concat('<li>' + dateString(timestamp).day + ': ')
      forecast = forecast.concat(daily[i].summary + '</li>')
      i++
    $('p.wetter').append 'Heute ' + dateString(date).day + ', ' + dateString(date).fullDate + ': ' + dateSummary + '<ul>' + forecast + '</ul>'
    data.forecast = forecast
    window.data = data

  $.ajax
    url: 'https://api.forecast.io/forecast/901f738ef524ecd81eafcead2fd6389b/47.0441453,8.2971598?lang=de'
    dataType: 'jsonp'
    success: (data) ->
      handler data
      return

  getLocation = ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition showPosition
    else
      alert 'Geolocation is not supported by this browser.'
    return

  showPosition = (position) ->
    pos = ""
    pos = position.coords.latitude + "," + position.coords.longitude
    pos
    return

  getLocation()

  return

