---
permalink: /tools/
toc: true
tick_sticky: true
---

# Powered by eReefs

These are the main components of the eReefs Platform:

<center>
{% for tool in site.tools %}{% if tool.category == "website" and tool.status != "decommissioned" %}
<div class="tile {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endif %}{% endfor %}
</center>


---

# Decommissioned Tools

The following tools were once part of eReefs but have now been decommissioned:

{% for tool in site.tools %}{% if tool.status == "decommissioned" %}
<div class="tile-and-content" markdown="0">
  <div class="tile {{tool.category}}">
    <a disabled  aria-disabled="true" href="{{tool.target_url}}" oclick="return false;" target="_window" title="Navigate to {{tool.title}}">
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
    </a>
  </div>
  {{tool.content | markdownify}}
</div>
{% endif %}{% endfor %}
