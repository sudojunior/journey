---
title: Home
layout: default
---
{% assign pages = site.pages | where: "layout", "overview/locale" %}
{% for item in pages %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}