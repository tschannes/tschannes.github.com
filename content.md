---
layout: page
title: Content
permalink: /content/
order: 2
---

## Intro to Content

> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime enim pariatur, excepturi deserunt velit aperiam necessitatibus eius aspernatur minus ipsa ut? Quam eaque quidem possimus porro cumque ducimus, fugit eum!

<ul class="post-list"> 
	{% for post in site.categories.content %}
	   {% include card.html  %}
	{% endfor %}
</ul>