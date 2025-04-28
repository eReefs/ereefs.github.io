---
permalink: /tools/
toc: true
tick_sticky: true
title: eReefs Outputs
---
{% assign active_tools = site.tools | where_exp: "item", "item.status != 'decommissioned'" %}

# Powered by eReefs

Visit the main interactive components of the eReefs Platform:

<center>
{% assign website_tools = active_tools | where_exp: "item", "item.category == 'website'" %}
{% for tool in website_tools %}
<div class="tile {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endfor %}
</center>

---

# Data Access Tools

These tools have been developed to help you discover and re-use eReefs data products:

<center>
{% assign data_access_tools = active_tools | where_exp: "item", "item.category == 'data-access'" %}
{% for tool in data_access_tools %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endfor %}
</center>

---


# Data Access Tutorials

Follow these tutorials to learn how to subset, analyse and visualise eReefs data:

<center>
{% assign tutorial_tools = active_tools | where_exp: "item", "item.category == 'tutorial'" %}
{% for tool in tutorial_tools %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}">&nbsp;&#xf121;</i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
  </a>
</div>
{% endfor %}
</center>

---

# Open Source Software

The following open-source software has been produced by the eReefs research teams and is available for re-use in other applications:

<center>
{% assign software_tools = active_tools | where_exp: "item", "item.category == 'software'" %}
{% for tool in software_tools %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
  </a>
</div>
{% endfor %}
</center>

---

# Decommissioned Tools

The following tools were once part of eReefs but have reached the end of their lifespans and are no longer available online.

{% assign decommissioned_tools = site.tools | where_exp: "item", "item.status == 'decommissioned'" | sort_natural: "decommission_date" | reverse %}
{% for tool in decommissioned_tools %}
<div class="tile {{tool.agency}} {{tool.category}}">
  <a href="/research/historical_outputs.html#{{tool.title | slugify }}" oclick="return false;" target="_window" title="Information about {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endfor %}
