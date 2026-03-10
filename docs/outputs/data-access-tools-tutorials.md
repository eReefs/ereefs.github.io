---
permalink: /outputs/data-access-tools-tutorials
redirect_from:
  - /research/publications/data-access-tools
  - /outputs/data-access-tools
title: Data Access Tools and Tutorials
---

# Data Access Applications

These web applications have been developed by the eReefs teams to help you discover and re-use eReefs data products:

<div class="tilegroup">
{% assign data_access_services = site.outputs | where_exp: "item", "item.categories contains 'data-access-service'" %}
{% for output in data_access_services %}
{% include output-tile.md %}
{% endfor %}
</div>

&nbsp;

# Data Access Tutorials

These detailed tutorials give examples of how to access *eReefs* data and services from a variety of programming environments:

<div class="tilegroup">
{% assign data_access_tutorials = site.outputs | where_exp: "item", "item.categories contains 'data-access-tutorial'" %}
{% for output in data_access_tutorials %}
{% include output-tile.md %}
{% endfor %}
</div>

&nbsp;

# Data Access Software

These software libraries have been created by the *eReefs* researchers and collaborators to help with accessing eReefs data and services:

<div class="tilegroup">
{% assign data_access_libraries = site.outputs | where_exp: "item", "item.categories contains 'data-access-library'" %}
{% for output in data_access_libraries %}
{% include output-tile.md %}
{% endfor %}
</div>