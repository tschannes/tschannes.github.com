---
layout: page
title: 
permalink: /danke/
excerpt: "Sie haben mir eine Frage gestellt oder Ihr Feedback abgegeben. Danke dafür!"
order: 4
---

## Danke für Ihre Frage, Ihren Input oder Ihr Feedback!

Ich melde mich sobald als möglich bei Ihnen.

Hier geht's zurück zur [Startseite](/). Mehr Informationen zu mir finden Sie in meinem [Lebenslauf](/lebenslauf) oder unter meinen [Referenzen](/referenzen).

### Neueste Beiträge

{% for post in site.posts limit:5 %}
      {% include simple-post.html  %}
{% endfor %}