---

---
### {{ page.title }}


<hr>
{{ page.url }}
<hr>

{% if page.artists %}
  {{ page.artists | array_to_sentence_string }}
{% elsif page.artist %}
  {{ page.artist }}
{% endif %}
<hr>
{% if page.based_on %}
  {% for entry in site.pages %}
    {% if entry.url contains page.based_on %}
      [{{ entry.title }} by {% if entry.artists %}{{ entry.artists | array_to_sentence_string }}{% else %}{{ entry.artist }}{%endif%}]({{ entry.url }})
    {% endif %}
  {% endfor %}
{% endif %}

{% if page.uploads.youtube %}
  {% include youtube.html id="C6CeA6vRtW4" %}
{% endif %}

<hr>

{{ page | jsonify }}
