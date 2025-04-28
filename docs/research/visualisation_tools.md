---
classes: wide
title: Interactive Visualisation
---
A collection of interactive visualisation tools, developed by the eReefs collaboration.

<center>
{% for tool in site.tools %}{% if tool.category == "website" and tool.status != "decommissioned" %}
<div class="tile {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endif %}{% endfor %}
</center>