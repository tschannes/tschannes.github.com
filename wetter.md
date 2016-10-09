---
layout: page
title: "Flugwetter"
header: "Wetter für Gleitschirmflieger"
permalink: /wetter/
excerpt: "Wind, Föhntendenz, Niederschlag, Startplätze. Das Wichtigste, was du heute zum Fliegen brauchst auf einem Blick."
order: 4
published: false
---

<p class="post-meta">{{ page.excerpt }}</p>

## Wetter

<p>
	 Forecast.io liefert die Wetter-Grobübersicht (<strong><a href="javascript:toggleVisibility('toggle');" id="tglBtn">Meteo anzeigen</a></strong>) für die nächsten paar Tage.
</p>
<p id="toggle" class="wetter"><img id="loader" src="/loader.gif" alt=""></p>

<div class="frame" style="padding-bottom:0;height:auto;">
    <img src="/loader.gif"  data-layzr="http://www.wetter.net/images/kontinente/Europa-600.jpg">
</div>

**[Windytv.com](https://www.windyty.com/)** visualisiert zwei globale Wettermodelle und lässt gute Kurzzeitprognosen für lokale Wind- und Wetterbedingungen zu.

<div class="frame">
    <iframe src="/loader.gif" data-layzr="https://embed.windyty.com/?51.124,5.186,700,850h,menu,message" width="700" height="500" frameborder="0"></iframe>
</div>

Zur Kontrolle: Die **[Windy-App](http://windy.atelier-agile.ch/balises?display_all=true)** oder die **[Windfinder-App](http://www.windfinder.com/weather-maps/spots/#8/46.830/8.144)** beschränken sich nicht auf Prognosen sondern liefern Winddaten in Echtzeit. Messpunkte sind über die ganze Schweiz verteilt.

**[Meteocentrale.ch](http://www.meteocentrale.ch)** zeigt wie sich Föhn- und Bisentendenz über die nächsten Tage entwickeln werden. Ab 4 hPa Druckunterschied wird's brenzlig zum Fliegen.

<div class="frame">
	<img src="/loader.gif" data-layzr="http://www.meteocentrale.ch/uploads/pics/uwz-ch_foehn_en.png">
</div>

<div class="frame">
	<img src="/loader.gif" data-layzr="http://www.meteocentrale.ch/uploads/pics/uwz-ch_bise_en.png">
</div>

Das Emagramm zeigt, wie die Atmosphäre aktuell geschichtet ist. Es erlaubt Aufschlüsse über Wind, Temperatur, Luftfeuchtigkeit und Thermikpotenzial. Unten das aktuellste Emagramm von Meteo Swiss.

<div id="emagramm" class="frame"></div>
<!--<div class="frame">
    <iframe id="emagramm"></iframe>
</div> -->

Alternativ bietet das **[vereinfachte Emagramm auf Flugbasis.ch](http://www.flugbasis.ch/service/wetter/thermik/)** Informationen dazu, wie hoch man idealerweise startet und wie gut der Thermik-Tag zu werden verspricht.

## Fliegen

**[Paragliding Map](http://www.paraglidingmap.com/#)** zeigt weltweit Start- und Landeplätze, sowie Thermik-Hotspots und Webcams. Die App kombiniert die Startplatz-Informationen mit aktuellen Wetterdaten und Wettermodellen, um anzuzeigen, ob Startplätze fliegbar sind.

**[Flyland.ch](http://flyland.ch/fl_gis_2d_all.php?ST=1&LP=0&PP=0&CAM=0&GG=0&VZ=0&SZ=0&HI=0&BB=0)** zeigt auf einer Google-Karte, wo es sich in der Schweiz überall hochoffiziell und ganz korrekt starten lässt. Und wo zu landen, was zu vermeiden und welcher Wind ideal ist.

**[Parange](http://www.parange.ch/)** zeigt Gleitschirmfliegern in der Schweiz, wie weit sie von einem gewissen Ort aus theoretisch gleiten können. Oder: Wie hoch sie aufsteigen müssen, um einen bestimmten Zielort zu erreichen.

Der deutsche Pilot Bernd Gassner hat mit seinem **[XC Planner](https://xcplanner.appspot.com/)** ein extrem vielseitiges Planungs-Tool für Thermikflieger entworfen.

<div class="frame">
    <iframe src="/loader.gif" data-layzr="https://xcplanner.appspot.com/" width="700" height="500" frameborder="0" sandbox="allow-same-origin allow-scripts"></iframe>
</div>

Die guten Leute vom Cross Country Magazine verraten in ihrem **[Travel Guide](http://www.xcmag.com/travel-guide/)**, wo man auch mitten im Winter sagenhaft-toll Thermik fliegen kann.

<ul class="post-list">
	{% include call-to-action.html %}
</ul>
