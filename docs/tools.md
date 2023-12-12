---
permalink: /tools/
toc: true
tick_sticky: true
---

# Powered by eReefs

Visit the main interactive components of the eReefs Platform:

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

---

# Data Access Tools

These tools have been developed to help you discover and re-use eReefs data products:

<center>
{% for tool in site.tools %}{% if tool.category == "data-access" and tool.status != "decommissioned" %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
    <img alt="TODO: Preview of {{tool.title}}" src="{{tool.preview_image}}" />
  </a>
</div>
{% endif %}{% endfor %}
</center>

---


# Data Access Tutorials

Follow these tutorials to learn how to subset, analyse and visualise eReefs data:

<center>
{% for tool in site.tools %}{% if tool.category == "tutorial" and tool.status != "decommissioned" %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}">&nbsp;&#xf121;</i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
  </a>
</div>
{% endif %}{% endfor %}
</center>

---

# Open Source Software

The following open-source software has been produced by the eReefs research teams and is available for re-use in other applications:

<center>
{% for tool in site.tools %}{% if tool.category == "software" and tool.status != "decommissioned" %}
<div class="tile {{tool.agency}} {{tool.category}}" markdown="0">
  <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
    <i class="fas fa-{{tool.fa-icon}}"></i>
    <h2>{{tool.title}}</h2>
    {{tool.caption | markdownify}}
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
      <i class="fas fa-{{tool.fa-icon}}"></i>
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      <img alt="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
    </a>
  </div>
  {{tool.content | markdownify}}
</div>
{% endif %}{% endfor %}
