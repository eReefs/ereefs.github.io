---
classes: wide
title: Web Applications
#toc: true
#toc_sticky: true
---
{% assign all_webapps = site.outputs | where_exp: "item", "item.category == 'website'" %}
{% assign active_webapps = all_webapps | where_exp: "item", "item.status != 'decommissioned'" %}
{% assign decommissioned_webapps = all_webapps | where_exp: "item", "item.status == 'decommissioned'" | sort_natural: "decommission_date" | reverse %}

# Powered by *eReefs*!

These web applications are the main interactive components of the *eReefs* web platform, and allow you to discover, visualise and explore *eReefs* and related datasets:

<div class="tilegroup">
{% for output in active_webapps %}
<div class="tile {{output.category | slugify}}" markdown="0">
  <a href="{{output.target_url}}" target="_window" title="Navigate to {{output.title}}">
    <i class="fas fa-{{output.fa-icon}}"></i>
    <h2>{{output.title}}</h2>
    {{output.caption | markdownify}}
    <img alt="Preview of {{output.title}}" src="{{output.preview_image}}" />
  </a>
</div>
{% endfor %}
</div>

&nbsp;

---

# Decommissioned Web Applications
The following tools were once part of *eReefs* but have reached the end of their lifespans and are no longer available online.

{% for output in decommissioned_webapps %}
## {{output.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{output.agency | slugify}} {{output.category | slugify}}">
    <a disabled  aria-disabled="true" href="" onclick="return false;" target="_window" title="{{output.title}}">
      <i class="fas fa-{{output.fa-icon}}"></i>
      <h2>{{output.title}}</h2>
      {{output.caption | markdownify}}
      <img alt="Preview of {{output.title}}" src="{{output.preview_image}}" />
    </a>
  </div>
  {{output.content | markdownify}}
  <hr/>
</div>
{% endfor %}
