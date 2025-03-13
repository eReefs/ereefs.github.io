---
toc: true
toc_sticky: true
---

# Media

Media articles about the eReefs collaboration, platform and/or data products and tools:

## Mainstream Media Articles

{% assign sorted_media_references = site.data.publications.media.mainstream.references | sort:"date-published" %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }}, {{ media.journal }}: <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

## Bureau of Meteorology website

{% assign sorted_media_references = site.data.publications.media.bomwebsite.references | sort:"date-published" %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

## CSIRO's Official Website

{% assign sorted_media_references = site.data.publications.media.csiroofficialwebsite.references | sort:"date-published" %}
{% for media in sorted_media_references %}
- <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

## CSIRO News Articles and Blog Posts

{% assign sorted_media_references = site.data.publications.media.csironewsarticlesandblogposts.references | sort:"date-published" %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

## Great Barrier Reef Foundation News

{% assign sorted_media_references = site.data.publications.media.greatbarrierreeffoundationnews.references | sort:"date-published" %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}

## IMOS News

{% assign sorted_media_references = site.data.publications.media.imos.references | sort:"date-published" %}
{% for media in sorted_media_references reversed %}
- {{ media.date-published }} <a href="{{ media.url }}">{{ media.title }}</a>{% if media.authors[0].given-names != 'Unknown' %}
 by {{ media.authors[0].given-names}} {{ media.authors[0].family-names}}{% for author in media.authors offset:1 %}, {{ author.given-names}} {{ author.family-names}}{% endfor %}
{% endif %}
  > {{ media.abstract }}
{% endfor %}