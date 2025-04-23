---

title: "Flugwetter"
header: "Wetter für Gleitschirmflieger"
permalink: /wetter/
excerpt: "Bise, Föhn, Wolken, Wind. Das wichtigste vom Wetter, was du heute zum Fliegen brauchst auf einem Blick."

---

<script>
	//redirecting focus from fullscreen iframe back to main page
	setInterval(_ => {
	    if (document.activeElement.tagName == "IFRAME") {
	        document.activeElement.blur();
	    }
	}, 500);
	//making iframes fullscreen when button is pressed
	document.addEventListener('keydown', function(event) {
		console.log("kepress registered.");
	    const targetMap = {
	        t: '.thermik',
	        w: '.winds',
	        c: '.clouds'
	        // add more key-selector pairs as needed
	    };

	    const key = event.key.toLowerCase();
	    const selector = targetMap[key];

	    if (selector) {
	    	console.log(selector);
	        const targetElement = document.querySelector(selector);
	        if (targetElement) {
	            targetElement.classList.toggle('fullscreen');
	            targetElement.classList.toggle('container');
	        }
	    }
	});
</script>

<style type="text/css">
	.container{
		position: relative;
		overflow: hidden;
		width: 100%;
		padding-top: 56.25%;
	}
	iframe{
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		width: 100%;
		height: 100%;
	}
	.fullscreen {
	    position: fixed;
	    top: 0;
	    left: 0;
	    width: 100vw;
	    height: 100vh;
	    z-index: 9999;
	    background: white; /* or any background color/image you want */
	}
</style>

![Grosswetterlage](https://www.wetter.net/components/com_weather/data/images/grosswetterlage.jpg)

**[Windytv.com](https://www.windyty.com/)** visualisiert mehrere globale Wettermodelle und lässt gute Kurzzeitprognosen für lokale Wind- und Wetterbedingungen zu.

## Wind Arome (w)

<div class="container winds">
	<iframe width="650" height="450" src="https://embed.windy.com/embed2.html?lat=46.473&lon=8.346&detailLat=46.473&detailLon=8.346&width=650&height=450&zoom=9&level=surface&overlay=wind&product=arome&menu=&message=&marker=&calendar=now&pressure=&type=map&location=coordinates&detail=&metricWind=default&metricTemp=default&radarRange=-1" frameborder="0"></iframe>
</div>


## Wolken Arome (c)

<div class="container clouds">
	<iframe width="650" height="450" src="https://embed.windy.com/embed2.html?lat=46.473&lon=8.346&detailLat=46.473&detailLon=8.346&width=650&height=450&zoom=9&level=surface&overlay=clouds&product=arome&menu=&message=&marker=&calendar=now&pressure=&type=map&location=coordinates&detail=&metricWind=default&metricTemp=default&radarRange=-1" frameborder="0"></iframe>
</div>


## Thermikprognose SoaringMeteo (t)

<div class="container thermik">
	<iframe width="650" height="450" src="https://soaringmeteo.org/v2/?lat=46.674&lng=9.239&z=8.7&model=wrf&zone=alps-overview">
	</iframe>
</div>


## Föhn- und Bisentendenz

**[srf.ch](https://www.srf.ch/meteo/surf-und-segelwetter/diagramme-foehn-und-bise)** zeigt wie sich Föhn- und Bisentendenz über die nächsten Tage entwickeln werden. Ab 4 hPa Druckunterschied wird's brenzlig zum Fliegen.

![Föhn](https://www.srf.ch/meteo/static/prognosetafeln/wind/FOEHNDIAGRAMM.jpg)

![Bise](https://www.srf.ch/meteo/static/prognosetafeln/wind/BISENDIAGRAMM.jpg)

Die **[Emagramme von Meteo Swiss](http://www.meteoswiss.admin.ch/home/measurement-and-forecasting-systems/atmosphere/radio-soundings.html)** zeigen, wie die Atmosphäre aktuell geschichtet ist. Es erlaubt Aufschlüsse über Wind, Temperatur, Luftfeuchtigkeit und Thermikpotenzial. Unten das aktuellste Emagramm von Meteo Swiss.


## Aktuelle Windwerte

- **[Messwerte Meteoschweiz](https://www.meteoschweiz.admin.ch/service-und-publikationen/applikationen/messwerte-und-messnetze.html#param=messwerte-windgeschwindigkeit-kmh-10min&lang=de)**
- **[Messwerte winds.mobi](https://winds.mobi/stations/map)**
- **[Regenradar Meteoschweiz](https://www.meteoschweiz.admin.ch/service-und-publikationen/applikationen/niederschlag.html)**


## Flugplanung

**[Paraglidable](https://paraglidable.com/?lat=46.643&lon=7.729&zoom=9)** zeigt ganz grob, ob es in den nächsten Tagen fliegt und in welcher Region das XC-Potenzial am grössten ist.

**[Burnair](https://www.burnair.cloud/)** zeigt weltweit Start- und Landeplätze, sowie Thermik-Hotspots, Webcams, Flugrouten mit Schlüssel- und Gefahrenstellen und vieles mehr. 

**[Parange](http://www.parange.ch/)** zeigt Gleitschirmfliegern in der Schweiz, wie weit sie von einem gewissen Ort aus theoretisch gleiten können. Oder: Wie hoch sie aufsteigen müssen, um einen bestimmten Zielort zu erreichen.