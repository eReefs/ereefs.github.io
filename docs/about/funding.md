---
title: About eReefs Funding
toc: true
toc_sticky: true
---
# Current Funding
{% assign current_date = "now" | date: "%Y-%m-%d" %}
{% assign funders_sorted = site.funding | sort: "name" | sort_natural: "funding_end" | reverse  %}

The *eReefs* platform and associated research is currently supported by funding from:
{% assign funders_current = funders_sorted | where_exp: "item", "item.funding_end >= current_date" %}
{% for supporter in funders_current %}

## {{ supporter.name }}
{% if supporter.link_url %}
<a href="{{supporter.link_url}}" class="align-left" title="{{supporter.name}}" target="_window">
    <img src="{{supporter.logo_url_dark }}" class="org-logo" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
</a>
{% else %}
<img src="{{supporter.logo_url_dark }}" class="org-logo align-left" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
{% endif %}
*Supporter from {{supporter.funding_start | date: "%Y"}} to {{supporter.funding_end | date: "%Y"}}*
{{ supporter.content }}
{% endfor %}

&nbsp;

# Historical Funding

Previous phases of the *eReefs* collaboration were supported by funding from:
{% assign funders_historical = funders_sorted | where_exp: "item", "item.funding_end < current_date" %}
{% for supporter in funders_historical %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  <a href="{{supporter.link_url}}" class="align-left" title="{{supporter.name}}" target="_window">
      <img src="{{supporter.logo_url_dark }}" class="org-logo" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  </a>
  {% else %}
  <img src="{{supporter.logo_url_dark }}" class="org-logo align-left" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  {% endif %}
*Supporter from {{supporter.funding_start | date: "%Y"}} to {{supporter.funding_end | date: "%Y"}}*
{{ supporter.content }}
{% endfor %}
