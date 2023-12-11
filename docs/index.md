---
layout: splash
title: eReefs
permalink: /
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/backgrounds/ereefs_home_header_0937_q60.jpg
  caption: "Photography by Gary Cranitch, Queensland Museum"
excerpt: "a world-first delivering vital information about the entire Great Barrier Reef from catchment to ocean"
redirect_from: 
  - /ereefs/
---
{% include video id="CpNlev-YFDE?rel=0" provider="youtube" type="half" %}
{% include video id="_L99gaUPdhg?rel=0" provider="youtube" type="half" %}

# Powered by eReefs
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
