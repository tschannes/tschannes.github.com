---
layout: page
title: "Flugwetter"
permalink: /wetter/
excerpt: "Wind, Föhntendenz, Niederschlag, Startplätze. Das Wichtigste, was du heute zum Fliegen brauchst auf einem Blick."
order: 4
---

<script src="https://code.jquery.com/jquery-2.1.4.min.js">
</script>

<p class="post-meta">{{ page.excerpt }}</p>

<p>
	 Die nächsten paar Tage in der Gröbstübersicht: <a href="javascript:toggleVisibility('toggle');" id="tglBtn">Wetterübersicht anzeigen</a>.
</p>
<p id="toggle" class="wetter"></p>


[Windytv.com](https://www.windyty.com/) visualisiert zwei globale Wettermodelle und lässt gute Kurzzeitprognosen für lokale Wind- und Wetterbedingungen zu.

<div class="frame">
	<iframe src="/loader.gif" data-layzr="https://embed.windyty.com/?850h,clouds,2015-09-12-12,46.800,8.306,8,,menu,message,ip" width="700" height="500" frameborder="0"></iframe>
</div>

Zur Kontrolle: Die **[Windy-App](http://windy.atelier-agile.ch/balises?display_all=true)** zeigt keine Prognosen sondern Windmessungen in Echtzeit. Messpunkte sind über die ganze Schweiz verteilt.

[Meteocentrale.ch](http://www.meteocentrale.ch) zeigt wie sich Föhn- und Bisentendenz über die nächsten Tage entwickeln werden. Ab 4 hPa Druckunterschied wird's brenzlig zum Fliegen.

<div class="frame">
	<img src="/loader.gif" data-layzr="http://www.meteocentrale.ch/uploads/pics/uwz-ch_foehn_en.png">
</div>

<div class="frame">
	<img src="/loader.gif" data-layzr="http://www.meteocentrale.ch/uploads/pics/uwz-ch_bise_en.png">
</div>

**[Flyland.ch](http://flyland.ch)** zeigt auf einer Google-Karte, wo es sich in der Schweiz überall hochoffiziell und ganz korrekt starten lässt. Und wo zu landen, was zu vermeiden und welcher Wind ideal ist.

<div class="frame">
	<iframe src="/loader.gif" data-layzr="http://www.flyland.ch/fl_gis_2d_all.php?ST=1&LP=0&PP=0&CAM=0&GG=0&VZ=0&SZ=0&HI=0&BB=0" frameborder="0" allowfullscreen></iframe>
</div>

Das **[vereinfachte Emagramm auf Flugbasis.ch](http://www.flugbasis.ch/service/wetter/thermik/)** zeigt, wie hoch man idealerweise startet und wie gut der Thermik-Tag zu werden verspricht.

<ul class="post-list"> 
	{% include call-to-action.html %}
</ul>
