---
layout: single
toc: true
toc_sticky: true
title: Partners
permalink: /partners/
header:
  overlay_image: /assets/images/ereefs_header_2253_q75.jpg
  caption: "Photography by Gary Cranitch, Queensland Museum"
---
# Collaborators
{% for collaborator in site.collaborators %}
## {{ collaborator.name }}
  ![image-left]({{ collaborator.logo_url }}){: .align-left}
  {{ collaborator.content }}
{% endfor %}

# Supported by funding from
{% for supporter in site.funding %}
## {{ supporter.name }}
  ![image-left]({{ supporter.logo_url }}){: .align-left}
  {{ supporter.content }}
{% endfor %}
