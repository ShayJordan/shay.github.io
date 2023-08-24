---
layout: archive
title: "Projects"
permalink: /projects/
excerpt: "A selection of research projects I have carried out, primarily during the course of my Integrated Master of Mathematics degree at the University of East Anglia (UEA)."
header:
  overlay_image: projects.JPG
  overlay_filter: rgba(51, 51, 90, 0.75)
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
