---
layout: page
title: Text
header: "Text-Tools und Schreiben im Web"
permalink: /text/
excerpt: "Text ist das Rückgrat des Internet. Information, Suche, Meta-Daten: Alles basiert auf dem geschriebenen Wort. Hier finden sich Tools, Einblicke und Erfahrungen aus der praktischen Arbeit an digitalen Texten."
order: 1
---

> {{ page.excerpt }}

<ul class="post-list"> 
	{% for post in site.categories.text %}
	   {% include card-with-image.html  %}
	{% endfor %}
</ul>