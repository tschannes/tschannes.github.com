---
layout: page
title: Text
permalink: /text/
order: 1
---

## Intro to Text

> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime enim pariatur, excepturi deserunt velit aperiam necessitatibus eius aspernatur minus ipsa ut? Quam eaque quidem possimus porro cumque ducimus, fugit eum!

<ul class="post-list"> 
	{% for post in site.categories.text %}
	   {% include card.html  %}
	{% endfor %}
</ul>