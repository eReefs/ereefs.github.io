---
classes: wide
title: Web Applications
#toc: true
#toc_sticky: true
---
{% assign all_webapps = site.tools | where_exp: "item", "item.category == 'website'" %}
{% assign active_webapps = all_webapps | where_exp: "item", "item.status != 'decommissioned'" %}
{% assign decommissioned_webapps = all_webapps | where_exp: "item", "item.status == 'decommissioned'" | sort_natural: "decommission_date" | reverse %}

# Powered by *eReefs*!

These web applications are the main interactive components of the *eReefs* web platform, and allow you to discover, visualise and explore *eReefs* and related datasets:

<div class="tilegroup">
{% for tool in active_webapps %}
<div class="tile {{tool.category | slugify}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endfor %}
</div>

&nbsp;

---

# Decommissioned Web Applications
The following tools were once part of *eReefs* but have reached the end of their lifespans and are no longer available online.

{% for tool in decommissioned_webapps %}
## {{tool.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{tool.agency | slugify}} {{tool.category | slugify}}">
    <a disabled  aria-disabled="true" href="" onclick="return false;" target="_window" title="{{tool.title}}">
      <i class="fas fa-{{tool.fa-icon}}"></i>
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      <img alt="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
    </a>
  </div>
  {{tool.content | markdownify}}
  <hr/>
</div>
{% endfor %}
