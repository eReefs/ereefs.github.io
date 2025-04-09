---
toc: true
toc_sticky: true
---
# Macroalgae for mitigating Ocean Acidification and catchment derived nitrogen

## Summary 
The use of macroalgae is increasingly being looked at for is ability to buffer ocean acidification and to take up catchment derived nitrogen.

## eReefs Products used
- GBR1 hindcast 

## Benefits for users
- eReefs marine models used to undertake assessment of carbonate budgets for GBR and design of potential interventions (growing seaweed) to buffer OA
- Estuarine and rear coastal models are currently being used to evaluate the potential to grow Sargassum and Asparagopsis to uptake DIN and assist in meeting catchment specific DIN reduction targets 

## Related Publications

{% assign references = site.data.publications.case-studies.macroalgae_for_mitigating_ocean_acidification_and_catchment_derived_nitrogen.references | sort:"date-published" %}
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