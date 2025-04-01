---
toc: true
toc_sticky: true
---
# Funding

The eReefs platform and associated research is currently supported by funding from:
{% assign current_phase_funders = site.funding | where_exp: "item", "item.phases contains '6a'" %}
{% for supporter in current_phase_funders %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  <a href="{{supporter.link_url}}" class="align-left" title="{{supporter.name}}" target="_window">
      <img src="{{supporter.logo_url }}" class="org-logo" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  </a>
  {% else %}
  <img src="{{supporter.logo_url }}" class="org-logo align-left" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  {% endif %}
{{ supporter.content }}
{% endfor %}

&nbsp;

## Historical Funding

Previous phases of the research collaboration before 2024 were supported by funding from:
{% for supporter in site.funding %}
{% unless supporter.phases contains '6a' %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  <a href="{{supporter.link_url}}" class="align-left" title="{{supporter.name}}" target="_window">
      <img src="{{supporter.logo_url }}" class="org-logo" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  </a>
  {% else %}
  <img src="{{supporter.logo_url }}" class="org-logo align-left" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  {% endif %}
{{ supporter.content }}
{% endunless %}
{% endfor %}
