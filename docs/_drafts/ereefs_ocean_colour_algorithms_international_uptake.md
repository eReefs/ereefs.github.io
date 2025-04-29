---
classes: wide
title: eReefs Ocean Colour Algorithms – International Uptake
---

Retrieval of coastal water quality from satellite Ocean Colour data is still a challenge due to the optical complexity of these waters. eReefs has developed state of the art machine learning algorithms to estimate water quality in optically complex waters such as chlorophyll-a. The remotely-sensed chlorophyll-a concentrations can be used to develop additional management-relevant indicators such as the Cyanobacterial Bloom Index (CyaBI). This index was originally developed for open waters, and was tested by research groups in Lithuania and the Ukraine (Vaičiūtė et. al, 2024) for transitional and coastal waters of the Lithuanian Baltic Sea and the Ukrainian Black Sea. Among three tested machine learning algorithms, the eReefs algorithm applied to Sentinel-3 OLCI images was the most appropriate for the retrieval of chlorophyll-a in both seas.

## eReefs Products used

The eReefs Ocean Colour algorithms have been integrated into the S3 FUB-CSIRO Coastal Water Processor, which is available as a Python/C plugin for the Sentinel Application Platform (SNAP) distributed by the European Space Agency (ESA). The plugin allows processing of large quantities of Sentinel-3 OLCI satellite data through the SNAP command-line Graph Processing Tool (GPT) as well as single images using the Graphical User Interface (GUI). The GUI also allows non-remote sensing experts to analyze and visualize the Sentinel-3 satellite data and derived water quality.
The eReefs S3 FUB-CSIRO Coastal Water Processor has been used by research groups in Lithuania and the Ukraine to test the applicability of remotely-sensed indicators to support environmental policies (Vaičiūtė et. al, 2024).

## Outcomes and Impact
- Simple access to complex satellite image processing software.

## Related Resources

The eReefs algorithm can be downloaded at: 
<a href="https://github.com/s3tbx-fub-csiro/s3tbx-fub-csiro.git">Github</a>

{% assign references = site.data.publications.case-studies.ereefs_ocean_colour_algorithms_international_uptake.references | sort:"date-published" %}
{% unless references == empty %}
{% endunless %}
{% for media in references reversed %}
<p class="references">
    {% for author in media.authors %}
    {{author.family-names}}, {{author.given-names | slice: 0}}.
    {% endfor %}
     ({{ media.year }}).
    {% if media.title %}
        {{ media.title }}.
    {% endif %}
    {% if media.editor %}
        {{ media.editor }},
    {% endif %}
    {% if media.book and media.collection and media.volume %}
        <i>{{ media.book }}</i> ({{ media.collection }} vol {{ media.volume }}, pp. {{ media.first_page }}–{{ media.last_page }}).
    {% else %}
        {% if media.book and media.volume %}
            <i>{{ media.book }}</i> (vol {{ media.volume }}, pp. {{ media.first_page }}–{{ media.last_page }}).
        {% else %}
            {% if media.book and media.first_page %}
                <i>{{ media.book }}</i> (pp. {{ media.first_page }}–{{ media.last_page }}).
            {% else %}
                {% if media.book and media.edition %}
                    <i>{{ media.book }}</i> ({{ media.edition }} ed.).
                {% else %}
                    {% if media.book %}
                        <i>{{ media.book }}</i>.
                    {% endif %}
                {% endif %}
            {% endif %}
        {% endif %}
    {% endif %}
    {% if media.book %}
        {{ media.publisher }}.
    {% endif %}
    {% if media.journal %}
        {% if media.volume or media.first_page %}
            <i>{{ media.journal }}</i>,
            {% if media.volume %}
                {% if media.issue %}
                    {% if media.first_page %}
                        <i>{{ media.volume }}</i> ({{ media.issue }}),
                    {% else %}
                        <i>{{ media.volume }}</i> ({{ media.issue }}).
                    {% endif %}
                {% else %}
                    {% if media.first_page %}
                        <i>{{ media.volume }}</i>,
                    {% else %}
                        <i>{{ media.volume }}</i>.
                    {% endif %}
                {% endif %}
            {% endif %}
            {% if media.first_page %}
                {% if media.last_page %}
                    {{ media.first_page }}–{{media.last_page }}.
                {% else %}
                    {{ media.first_page }}.
                {% endif %}
            {% endif %}
        {% else %}
            <i>{{ media.journal }}</i>.
        {% endif %}
    {% endif %}
    {% if media.doi and media.url contains "doi.org" %}
    <a href="https://doi.org/{{ media.doi }}">{{ media.doi }}</a>
    {% elsif media.doi and media.url %}
    <a href="https://doi.org/{{ media.doi }}">{{ media.doi }}</a>
    <a href="{{ media.url }}">{{ media.url }}</a>
    {% elsif media.doi %}
    <a href="https://doi.org/{{ media.doi }}">{{ media.doi }}</a>
    {% elsif media.url and media.identifiers[0].type == "url" %}
    <a href="{{ media.url }}">{{ media.url }}</a>
    <a href="{{ media.identifiers[0].value }}">{{ media.identifiers[0].value }}</a>
    {% elsif media.url %}
    <a href="{{ media.url }}">{{ media.url }}</a>
    {% endif %}
</p>
{% endfor %}
