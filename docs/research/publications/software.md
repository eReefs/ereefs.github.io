---
title: Open Source Software
toc: true
toc_sticky: true
---
{% assign all_software = site.tools | where_exp: "tool", "tool.category == 'software'" | sort_natural: "title" %}

# *eReefs* Software Outputs
These following open-source software has been produced by the *eReefs* development teams for use in *eReefs* research and is available to be re-used in other applications:

{% assign ereefs_outputs = all_software | where_exp: "tool", "tool.subcategory == 'ereefs_output'" %}
{% for tool in ereefs_outputs %}
## {{tool.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{tool.agency | slugify}} {{tool.category | slugify}}" markdown="0">
    <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
      <i class="fas fa-{{tool.fa-icon}}"></i>
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      {% if tool.preview_image and tool.preview_caption %}
      <img alt="Preview of {{tool.title}}" title="{{tool.preview_caption}}" src="{{tool.preview_image}}" />
      {% elsif tool.preview_image %}
      <img alt="Preview of {{tool.title}}" title="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{tool.content | markdownify}}
</div>
{% endfor %}

&nbsp;

---

# *eReefs* Software Inputs

The following open-source software was used by the *eReefs* development teams to create *eReefs* data products:
{% assign ereefs_inputs = all_software | where_exp: "tool", "tool.subcategory == 'ereefs_input'" %}
{% for tool in ereefs_inputs %}
## {{tool.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{tool.agency | slugify}} {{tool.category | slugify}}" markdown="0">
    <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
      <i class="fas fa-{{tool.fa-icon}}"></i>
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      {% if tool.preview_image and tool.preview_caption %}
      <img alt="Preview of {{tool.title}}" title="{{tool.preview_caption}}" src="{{tool.preview_image}}" />
      {% elsif tool.preview_image %}
      <img alt="Preview of {{tool.title}}" title="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{tool.content | markdownify}}
  <hr/>
</div>
{% endfor %}


# Other Useful Software

The following open-source software was not created specifically for *eReefs*, but is may be useful for people working with *eReefs* data products:

{% assign ereefs_related = all_software | where_exp: "tool", "tool.subcategory == 'ereefs_related'" %}
{% for tool in ereefs_related %}
## {{tool.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{tool.agency | slugify}} {{tool.category | slugify}}" markdown="0">
    <a href="{{tool.target_url}}" target="_window" title="Navigate to {{tool.title}}">
      <i class="fas fa-{{tool.fa-icon}}"></i>
      <h2>{{tool.title}}</h2>
      {{tool.caption | markdownify}}
      {% if tool.preview_image and tool.preview_caption %}
      <img alt="Preview of {{tool.title}}" title="{{tool.preview_caption}}" src="{{tool.preview_image}}" />
      {% elsif tool.preview_image %}
      <img alt="Preview of {{tool.title}}" title="Preview of {{tool.title}}" src="{{tool.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{tool.content | markdownify}}
  <hr/>
</div>
{% endfor %}
