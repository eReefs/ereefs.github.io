---
title: Open Source Software
toc: true
toc_sticky: true
---
{% assign all_software = site.outputs | where_exp: "output", "output.category == 'software'" | sort_natural: "title" %}

# *eReefs* Software Outputs
The following open-source software has been created or extensively updated by the *eReefs* development teams for use in *eReefs* research and is available to be re-used in other applications:

{% assign ereefs_outputs = all_software | where_exp: "output", "output.subcategory == 'ereefs_output'" %}
{% for output in ereefs_outputs %}
## {{output.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{output.agency | slugify}} {{output.category | slugify}}" markdown="0">
    <a href="{{output.target_url}}" target="_window" title="Navigate to {{output.title}}">
      <i class="fas fa-{{output.fa-icon}}"></i>
      <h2>{{output.title}}</h2>
      {{output.caption | markdownify}}
      {% if output.preview_image and output.preview_caption %}
      <img alt="Preview of {{output.title}}" title="{{output.preview_caption}}" src="{{output.preview_image}}" />
      {% elsif output.preview_image %}
      <img alt="Preview of {{output.title}}" title="Preview of {{output.title}}" src="{{output.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{output.content | markdownify}}
  <hr/>
</div>
{% endfor %}
&nbsp;

{% assign ereefs_inputs = all_software | where_exp: "output", "output.subcategory == 'ereefs_input'" %}
{% if ereefs_inputs.size > 0 %}
# *eReefs* Software Inputs

The following open-source software was used by the *eReefs* development teams to create *eReefs* data products:
{% for output in ereefs_inputs %}
## {{output.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{output.agency | slugify}} {{output.category | slugify}}" markdown="0">
    <a href="{{output.target_url}}" target="_window" title="Navigate to {{output.title}}">
      <i class="fas fa-{{output.fa-icon}}"></i>
      <h2>{{output.title}}</h2>
      {{output.caption | markdownify}}
      {% if output.preview_image and output.preview_caption %}
      <img alt="Preview of {{output.title}}" title="{{output.preview_caption}}" src="{{output.preview_image}}" />
      {% elsif output.preview_image %}
      <img alt="Preview of {{output.title}}" title="Preview of {{output.title}}" src="{{output.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{output.content | markdownify}}
  <hr/>
</div>
{% endfor %}
&nbsp;
{% endif %}

# *eReefs*-related Software

The following open-source software was not created specifically for *eReefs*, but is may be useful for people working with *eReefs* data products:

{% assign ereefs_related = all_software | where_exp: "output", "output.subcategory == 'ereefs_related'" %}
{% for output in ereefs_related %}
## {{output.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{output.agency | slugify}} {{output.category | slugify}}" markdown="0">
    <a href="{{output.target_url}}" target="_window" title="Navigate to {{output.title}}">
      <i class="fas fa-{{output.fa-icon}}"></i>
      <h2>{{output.title}}</h2>
      {{output.caption | markdownify}}
      {% if output.preview_image and output.preview_caption %}
      <img alt="Preview of {{output.title}}" title="{{output.preview_caption}}" src="{{output.preview_image}}" />
      {% elsif output.preview_image %}
      <img alt="Preview of {{output.title}}" title="Preview of {{output.title}}" src="{{output.preview_image}}" />
      {% endif %}
    </a>
  </div>
  {{output.content | markdownify}}
  <hr/>
</div>
{% endfor %}
