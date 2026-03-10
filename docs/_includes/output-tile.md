<div class="tile {{output.agency | slugify}} {{output.category | slugify}}" markdown="0">
{% if output.tile_url %}
  <a href="{{output.tile_url}}" target="_blank" title="Navigate to {{output.title}}" {% if output.status == 'decommissioned' %}disabled  aria-disabled="true" onclick="return false;"{% endif %}>
{% else %}
  <a href="{{output.url}}" target="_self" title="Learn more about {{output.title}}" {% if output== page %}disabled  aria-disabled="true" onclick="return false;"{% endif %}>
{% endif %}
    <i class="fas fa-{{output.fa-icon}}"></i>
<div markdown="1">
{% if page == output %}#{% else %}##{% endif %} {{output.title}}
</div>
    {{output.caption | markdownify}}
    {% if output.preview_image and output.preview_caption %}
    <img alt="Preview of {{output.title}}" title="{{output.preview_caption}}" src="{{output.preview_image}}" />
    {% elsif output.preview_image %}
    <img alt="Preview of {{output.title}}" title="Preview of {{output.title}}" src="{{output.preview_image}}" />
    {% endif %}
  </a>
</div>
