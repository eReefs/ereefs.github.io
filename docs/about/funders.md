---
toc: true
toc_sticky: true
---
# Funders

The eReefs platform and associated research has been supported by funding from:

{% for supporter in site.funding %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  [![image-left]({{ supporter.logo_url }})]({{ supporter.link_url }}){: .align-left}
  {% else %}
  ![image-left]({{ supporter.logo_url }}){: .align-left}
  {% endif %}
{{ supporter.content }}
{% endfor %}
