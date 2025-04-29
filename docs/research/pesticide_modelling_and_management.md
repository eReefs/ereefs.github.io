---
classes: wide
title: Pesticide Modelling and Management
---

Pesticides from agricultural runoff have been detected above marine water quality guidelines for the GBR and here eReefs can be used to inform management strategies. 

## What scenarios have been run?
A pesticide modelling capability for simulating single pesticide (diuron) dispersal was developed and tested. Diuron dispersal was modelled using the GBR1 model between 2016 and 2019 and validated with available diuron observational data. 
The model incorporates various factors such as river plumes, currents, tides, coastline, and bathymetry to simulate the movement and dispersion of substances such as pesticides in the marine environment. The eReefs marine model can pinpoint areas where pesticides are most likely to accumulate or have the greatest impact on reef ecosystems.

| **Scenarios completed (Report Card 11 period)**  | **Date of model run** | **Model used**    | **With remote sensing** | **Number of rivers** | **Flow** |
| ------------------------------------------------ | --------------------- | ----------------- | ----------------------------------------------- | ------------------------------------ | -------- |
| **Pesticide scenarios**                          |                       |                   |                                                 |                                      |          |
| Diuron                                           | Dec 2016 to Dec 2019  | GBR1<br>1 km grid | no                                              | 35                                   | Gauged   |
| Diuron atrazine hexazinone tebuthiuron 24D       | Dec 2016 to Dec 2019  | GBR1<br>1 km grid | no                                              | 35                                   | Gauged   |

Overall, it was found diuron was above 0.075 μg.L−1 for 175 km2 seagrass and 60 km2 coral habitats respectively. 

<figure>
    <img src="/assets/images/research/Figure_3_Pesticide_modelling_diuron_dispersal_in_the_central_GBR.png" title="Pesticide modelling (diuron dispersal) in the central GBR." alt="Pesticide modelling (diuron dispersal) in the central GBR.">
    <figcaption>
        Pesticide modelling (diuron dispersal) in the central GBR.
    </figcaption>
</figure>

## Outcomes and Impact
- Use of the model can quantify ecologically sensitive areas and then nutrient/pollutant/sediment exceedance within these areas.  Quantification of these areas   produces model outputs that are easily applied to observational and management decisions. 
- This process can also allow choice of appropriate monitoring sites and this analysis and was crucial for the reinstatement of pesticide monitoring which had been cancelled for two years and, in determining the priority locations of 14 field sites for the Reef Authority (GBRMPA). Furthermore, the eReefs modelling team is actively participating in the pesticide working group tasked with developing management strategies and guidelines for pesticides in the GBR.


## Related Resources

{% assign references = site.data.publications.case-studies.pesticide_modelling_and_management.references | sort:"date-published" %}
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
