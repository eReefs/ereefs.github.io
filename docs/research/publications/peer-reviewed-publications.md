---
toc: true
toc_sticky: true
---

# Peer-reviewed Research Publications
The peer-reviewed publications listed on this page reference, cite, acknowledge or are a direct output from eReefs research and projects.

For other related eReefs model input references, please see [References](https://research.csiro.au/ereefs/models/forcing/references/)

If you use the eReefs model outputs, software or platforms in your research, please include the following acknowledgement:

*"The eReefs datasets (model simulations, satellite or in-situ observations) were produced as part of eReefs (ereefs.org.au). The eReefs research project is a collaboration between Australia’s national science agency CSIRO, the Australian Institute of Marine Science (AIMS) and the Queensland Government, funded by the Australian Government Department of Climate Change, Energy, the Environment and Water, and with observations obtained through the Intgrated Marine Observing System (IMOS) and the Reef Authority (GBRMPA)."*{: style="color: #808080"}

{% assign total_references = 0 %}
{% for publications_file_list in site.data.publications.peer-reviewed-publications reversed %}
    {% assign total_references = total_references | plus: publications_file_list[1].references.size %}
{% endfor %}

{% for publications_file_list in site.data.publications.peer-reviewed-publications reversed %}
    {% assign publications_file = publications_file_list[1] %}
    
## Published in {{ publications_file.message }}
    {% assign sorted_publication_references = publications_file.references | sort:"date-published" %}
    {{sorted_publications[0].references}}
    {% for publications in sorted_publication_references reversed %}
<p class="references">
    [{{total_references}}]
    {% assign total_references = total_references | minus: 1 %}

    {% for author in publications.authors %}
    {{author.family-names}}, {{author.given-names | slice: 0}}.
    {% endfor %}
     ({{ publications.year }}).
    {% if publications.title %}
        {{ publications.title }}.
    {% endif %}
    {% if publications.editor %}
        {{ publications.editor }},
    {% endif %}
    {% if publications.book and publications.collection and publications.volume %}
        <i>{{ publications.book }}</i> ({{ publications.collection }} vol {{ publications.volume }}, pp. {{ publications.first_page }}–{{ publications.last_page }}).
    {% else %}
        {% if publications.book and publications.volume %}
            <i>{{ publications.book }}</i> (vol {{ publications.volume }}, pp. {{ publications.first_page }}–{{ publications.last_page }}).
        {% else %}
            {% if publications.book and publications.first_page %}
                <i>{{ publications.book }}</i> (pp. {{ publications.first_page }}–{{ publications.last_page }}).
            {% else %}
                {% if publications.book and publications.edition %}
                    <i>{{ publications.book }}</i> ({{ publications.edition }} ed.).
                {% else %}
                    {% if publications.book %}
                        <i>{{ publications.book }}</i>.
                    {% endif %}
                {% endif %}
            {% endif %}
        {% endif %}
    {% endif %}
    {% if publications.book %}
        {{ publications.publisher }}.
    {% endif %}
    {% if publications.journal %}
        {% if publications.volume or publications.first_page %}
            <i>{{ publications.journal }}</i>,
            {% if publications.volume %}
                {% if publications.issue %}
                    {% if publications.first_page %}
                        <i>{{ publications.volume }}</i> ({{ publications.issue }}),
                    {% else %}
                        <i>{{ publications.volume }}</i> ({{ publications.issue }}).
                    {% endif %}
                {% else %}
                    {% if publications.first_page %}
                        <i>{{ publications.volume }}</i>,
                    {% else %}
                        <i>{{ publications.volume }}</i>.
                    {% endif %}
                {% endif %}
            {% endif %}
            {% if publications.first_page %}
                {% if publications.last_page %}
                    {{ publications.first_page }}–{{publications.last_page }}.
                {% else %}
                    {{ publications.first_page }}.
                {% endif %}
            {% endif %}
        {% else %}
            <i>{{ publications.journal }}</i>.
        {% endif %}
    {% endif %}
    {% if publications.doi and publications.url contains "doi.org" %}
    <a href="https://doi.org/{{ publications.doi }}">{{ publications.doi }}</a>
    {% elsif publications.doi and publications.url %}
    <a href="https://doi.org/{{ publications.doi }}">{{ publications.doi }}</a>
    <a href="{{ publications.url }}">{{ publications.url }}</a>
    {% elsif publications.doi %}
    <a href="https://doi.org/{{ publications.doi }}">{{ publications.doi }}</a>
    {% elsif publications.url and publications.identifiers[0].type == "url" %}
    <a href="{{ publications.url }}">{{ publications.url }}</a>
    <a href="{{ publications.identifiers[0].value }}">{{ publications.identifiers[0].value }}</a>
    {% elsif publications.url %}
    <a href="{{ publications.url }}">{{ publications.url }}</a>
    {% endif %}
    
</p>
    {% endfor %}
{% endfor %}

