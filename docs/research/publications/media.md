---
toc: true
toc_sticky: true
title: Media Mentions
---

Media articles about the eReefs collaboration, platform and/or data products and tools:


{% assign sorted_media_references = site.data.publications.media.mainstream.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## Mainstream Media Articles
{% endunless %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }}, {{ media.journal }}: <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}



{% assign sorted_media_references = site.data.publications.media.bomwebsite.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## Bureau of Meteorology website
{% endunless %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

{% assign sorted_media_references = site.data.publications.media.csiroofficialwebsite.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## CSIRO's Official Website
{% endunless %}
{% for media in sorted_media_references %}
- <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

{% assign sorted_media_references = site.data.publications.media.csironewsarticlesandblogposts.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## CSIRO News Articles and Blog Posts
{% endunless %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

{% assign sorted_media_references = site.data.publications.media.greatbarrierreeffoundationnews.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## Great Barrier Reef Foundation News
{% endunless %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

{% assign sorted_media_references = site.data.publications.media.imos.references | sort:"date-published" %}
{% unless sorted_media_references == empty %}
## IMOS News
{% endunless %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}