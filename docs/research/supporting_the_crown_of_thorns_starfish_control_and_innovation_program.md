---
toc: true
toc_sticky: true
---

# Supporting the Crown of Thorns Starfish Control and Innovation Program

## Overview
Recurrent s outbreaks of the crown-of-thorns starfish (COTS) along the GBR is a significant management issue now requiring active control programs to limit this coral predator to ecologically sustainable levels and re-establish coral growth and recovery The Crown of Thorns Starfish Control and Innovation program (CCIP) is a research initiative that is boosting capacity to predict, detect and respond to COTS outbreaks at scale across the Great Barrier Reef.

For the past 40 years, the "terrestrial run-off" hypothesis has been a leading hypothesis to explain the apparent increase in frequency of COTS outbreaks on the Reef. According to this hypothesis, terrestrial anthropogenic nutrient inputs increase the phytoplankton food source for COTS larvae in the outbreak initiation zone north of Cairns, and this enhances the survival and recruitment of COTS which subsequently spread throughout the GBR.

<div style="max-width: 70%; margin: auto;">
{% include figure image_path="/assets/images/research/Figure_5_supporting_the_crown_of_thorns_starfish_control_and_innovation_program.png" alt="Crown of Thorns Starfish Control and Innovation Program" caption="eReefs model scenerios inform Crown of Thorns Starfish Control and Innovation Program" %}
</div>

## eReefs Products used
eReefs model scenario outputs were used to test the terrestrial run-off hypothesis enabling the researchers to examine whether reductions of anthropogenic catchment loads are likely to result in improved water quality in the outbreak initiation zone during the COTS larval period.  

Analysis of eReefs scenarios found that that riverine nutrient loads are a minor control on planktonic biomass in the COTS initiation zone relative to other forcing, i.e. ocean and atmospheric processes. These results imply that even the most aggressive land management options will not substantially improve water quality in the initiation zone, despite improving nearshore water quality more generally. 

<div style="max-width: 70%; margin: auto;">
{% include figure image_path="/assets/images/research/Figure_6_supporting_the_crown_of_thorns_starfish_control_and_innovation_program.png" alt="Over of eReefs Scenario analysis, methodology and results" caption="Over of eReefs Scenario analysis, methodology and results" %}
</div>

## Benefits for users
- Study results indicate that there will be an ongoing need for direct COTS control measures (e.g., culling). 
- Findings also show that a fundamental shift in research directions will be essential to understanding environmental drivers of COTS outbreaks and identifying proactive control strategies. These directions include further development of eReefs scenarios and observations to assess how COTS life cycles and outbreaks are influenced by marine and atmospheric forcing.
- Additional research is needed on ecological controls, including fisheries management strategies, which have recently been linked to COTS densities. 

## Related Publications

{% assign references = site.data.publications.case-studies.supporting_the_crown_of_thorns_starfish_control_and_innovation_program.references | sort:"date-published" %}
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