---
permalink: /outputs/web-applications
redirect_from:
  - /research/publications/web-applications.html
title: Web Applications
---
{% assign all_webapps = site.outputs | where_exp: "item", "item.categories contains 'web-application'" %}
{% assign active_webapps = all_webapps | where_exp: "item", "item.status != 'decommissioned'" %}
{% assign decommissioned_webapps = all_webapps | where_exp: "item", "item.status == 'decommissioned'" | sort_natural: "decommission_date" | reverse %}

# Powered by *eReefs*!

These web applications are the main interactive components of the *eReefs* web platform, and allow you to discover, visualise and explore *eReefs* and related datasets:

<div class="tilegroup">
{% for output in active_webapps %}{% if output.categories contains "web-application-featured" %}
{% include output-tile.md %}
{% endif %}{% endfor %}
</div>

&nbsp;

# Supporting Web Services

These web applications make *eReefs* documentation, data and metadata available to our web applications and yours:

<div class="tilegroup">
{% for output in active_webapps %}{% unless output.categories contains "web-application-featured" %}
{% include output-tile.md %}
{% endunless %}{% endfor %}
</div>

&nbsp;

---

# Decommissioned Web Applications

The following web applications were once part of *eReefs* but have reached the end of their lifespans and are no longer available online.

<div class="tilegroup">
{% for output in decommissioned_webapps %}
{% include output-tile.md %}
{% endfor %}
</div>