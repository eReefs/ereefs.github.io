---
title: eReefs Acknowledgements
toc: true
toc_sticky: true
---

# How to Acknowledge *eReefs*

If you use the *eReefs* model outputs, software or platforms in your research, we ask that you include the following acknowledgement:

> {% include  acknowlegement.md %}

&nbsp;

---

# Services Provided to *eReefs*

The *eReefs* teams wish to gratefully acknowledge the following parties for their in-kind support of the *eReefs* collaboration:

{% assign in_kind_supporters = site.acknowledgements | sort_natural: "name" %}
{% for supporter in in_kind_supporters %}
## {{ supporter.name }}
  {% if supporter.link_url %}
  <a href="{{supporter.link_url}}" class="align-left" title="{{supporter.name}}" target="_window">
    <img src="{{supporter.logo_url_dark}}" class="org-logo" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  </a>
  {% else %}
  <img src="{{supporter.logo_url_dark}}" class="org-logo align-left" alt="Logo for {{supporter.name}}" title="{{supporter.name}}"/>
  {% endif %}
  {{ supporter.content }}
{% endfor %}
