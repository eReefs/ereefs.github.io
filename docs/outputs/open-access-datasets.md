---
permalink: /outputs/open-access-datasets
redirect_from:
    - /research/publications/datasets.html
    - /outputs/datasets.html
title: Open Access Datasets
toc: true
toc_sticky: true
---

{% assign all_datasets = site.outputs | where_exp: "output", "output.category == 'datasets'" | sort_natural: "title" %}
{% if all_datasets.size == 1 %}
# {{all_datasets[0].title}}
{{all_datasets[0].content | markdownify}}
{% else %}

{% for output in all_datasets %}
# {{output.title}}
<div class="tile-and-content" markdown="0">
  <div class="tile {{output.agency | slugify}} {{output.category | slugify}}" markdown="0">
    <a href="{{output.target_url}}" target="_window" title="See details of {{output.title}}">
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
{% endif %}
