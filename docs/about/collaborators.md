---
header:
  caption: "Photography by Gary Cranitch, Queensland Museum"
  overlay_image: /assets/images/backgrounds/ereefs_about_header_2253_q75.jpg
layout: single
permalink: /about/collaborators.html
sidebar:
   nav: "about"
title: About eReefs
toc: true
toc_sticky: true
---

# Collaborators

eReefs is a research collaboration between the following agencies:

{% for collaborator in site.collaborators %}
## {{ collaborator.name }}
  {% if collaborator.link_url %}
  [![image-left]({{ collaborator.logo_url }})]({{ collaborator.link_url }}){: .align-left}
  {% else %}
  ### hello
  ![image-left]({{ collaborator.logo_url }}){: .align-left}
  {% endif %}
  {{ collaborator.content }}
{% endfor %}
