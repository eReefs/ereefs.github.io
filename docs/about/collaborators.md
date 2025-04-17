---
title: About eReefs Collaborators
toc: true
toc_sticky: true
---
{% assign current_date = "now" | date: "%Y-%m-%d" %}
{% assign collaborators_sorted = site.collaborators | sort_natural: "name" %}

# Current Collaborators
eReefs is a research collaboration between the following agencies:
{% assign collaborators_current = collaborators_sorted | where_exp: "item", "item.collaboration_end >= current_date" %}
{% for collaborator in collaborators_current %}
## {{ collaborator.name }}
  {% if collaborator.link_url %}
  <a href="{{collaborator.link_url}}" class="align-left" title="{{collaborator.name}}" target="_window">
    <img src="{{collaborator.logo_url_dark}}" class="org-logo" alt="Logo for {{collaborator.name}}" title="{{collaborator.name}}"/>
  </a>
  {% else %}
  <img src="{{collaborator.logo_url_dark}}" class="org-logo align-left" alt="Logo for {{collaborator.name}}" title="{{collaborator.name}}"/>
  {% endif %}
  {{ collaborator.content }}
{% endfor %}

&nbsp;

# Historical Collaborators

Previous phases of the research collaboration also included the following agencies:
{% assign collaborators_historical = collaborators_sorted | where_exp: "item", "item.collaboration_end < current_date" %}
{% for collaborator in collaborators_historical %}
## {{collaborator.name}}
  {% if collaborator.link_url %}
  <a href="{{collaborator.link_url}}" class="align-left" title="{{collaborator.name}}" target="_window">
      <img src="{{collaborator.logo_url_dark }}" class="org-logo" alt="Logo for {{collaborator.name}}" title="{{collaborator.name}}"/>
  </a>
  {% else %}
  <img src="{{collaborator.logo_url_dark }}" class="org-logo align-left" alt="Logo for {{collaborator.name}}" title="{{collaborator.name}}"/>
  {% endif %}
*Collaboration partner from {{collaborator.collaboration_start | date: "%Y"}} to {{collaborator.collaboration_end | date: "%Y"}}*
{{ collaborator.content }}
{% endfor %}
