---
layout: page
title: Text
header: "Text-Tools und Schreib im Web"
permalink: /text/
excerpt: "Hier sammelt Hannes Tscherrig Tools, Tipps und Erfahrungen zum Texten im Internet."
order: 1
---

> {{ page.excerpt }}

<ul class="post-list"> 
	{% for post in site.categories.text %}
	   {% include card.html  %}
	{% endfor %}
</ul>