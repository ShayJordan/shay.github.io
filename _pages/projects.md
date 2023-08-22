---
layout: archive
title: "Projects"
permalink: /projects/
excerpt: "A selection of research projects I have carried out, primarily during the course of my Integrated Master of Mathematics degree at the University of East Anglia (UEA)."
author_profile: true
<meta property="og:image" content="/images/og_image.png"/>
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
