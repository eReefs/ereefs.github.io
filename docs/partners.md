---
layout: single
toc: true
toc_sticky: true
title: Partners
permalink: /partners/
header:
  overlay_image: /assets/images/backgrounds/ereefs_header_2253_q75.jpg
  caption: "Photography by Gary Cranitch, Queensland Museum"
---
# Collaborators
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

# Supported by funding from
{% for supporter in site.funding %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  [![image-left]({{ supporter.logo_url }})]({{ supporter.link_url }}){: .align-left}
  {% else %}
  ![image-left]({{ supporter.logo_url }}){: .align-left}
  {% endif %}
{{ supporter.content }}
{% endfor %}
