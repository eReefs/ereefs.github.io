---
permalink: /outputs/open-source-software/
redirect_from:
  - /research/publications/software.html
  - /research/publications/software
  - /outputs/software.html
  - /outputs/software
title: Open Source Software
toc: true
toc_sticky: true
---
{% assign all_software = site.outputs | where_exp: "output", "output.categories contains 'open-source-software'" | sort_natural: "title" %}

# *eReefs* Software Outputs
The following open-source software has been created or extensively updated by the *eReefs* development teams for use in *eReefs* research and is available to be re-used in other applications:

<div class="tilegroup">
{% assign ereefs_ip_software = all_software | where_exp: "output", "output.ereefs_ip" %}
{% for output in ereefs_ip_software %}
{% include output-tile.md %}
{% endfor %}
</div>

&nbsp;

{% assign ereefs_data_pipeline_software = all_software | where_exp: "output", "output.categories contains 'data-pipeline'" %}
# *eReefs* Data Pipeline Software

The following open-source software was used by the *eReefs* development teams to create *eReefs* data products:

<div class="tilegroup">
{% for output in ereefs_data_pipeline_software %}{% unless output.ereefs_ip %}
{% include output-tile.md %}
{% endunless %}{% endfor %}
</div>

&nbsp;

# *eReefs* Community Software

The following open-source software was not created specifically for *eReefs*, but is may be useful for people working with *eReefs* data products:

<div class="tilegroup">
{% for output in all_software %}{% unless output.ereefs_ip or output.categories contains "data-pipeline" %}
{% include output-tile.md %}
{% endunless %}{% endfor %}
</div>
