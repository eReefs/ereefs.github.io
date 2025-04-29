---
classes: wide
title: In-Situ Observations
---

Accurate prediction of sediment settling and transport is critical for managing water quality impacts on the GBR, but complex estuarine processes pose major modelling challenges. More efficient monitoring and modelling approaches are needed to better resolve estuarine sediment dynamics and thereby advance management of GBR water quality targets. 

<figure>
    <img src="/assets/images/research/Figure_7_measurement_and_modelling_of_sediment_dynamics.png" title="Estuarine processes (left) and observational tools (right) deployed to resolve these processess in the GB estuaries, particularly Fitzroy Estuary" alt="Estuarine processes (left) and observational tools (right) deployed to resolve these processess in the GB estuaries, particularly Fitzroy Estuary">
    <figcaption>
        Estuarine processes (left) and observational tools (right) deployed to resolve these processess in the GB estuaries, particularly Fitzroy Estuary
    </figcaption>
</figure>

To improve our ability to resolve and model sediment processes, extensive new observations were collected in the estuaries of several major GBR catchments. Field measurements focused on sediment flocculation - the aggregation of fine silt and clay particles into larger, faster-settling flocs. The Fitzroy Estuary was the focal study system for an intensive field campaign that constrained seasonal-to-tidal scale forcing in one of the most complex estuaries in the GBR. Broader spatial sampling was also conducted in over a dozen other estuaries spanning the full length of the GBR coastline. These observational datasets were then used to develop and validate new numerical models for sediment transport. Machine learning was also applied to predict floc size and settling velocity from more easily measured water quality parameters. 

<figure>
    <img src="/assets/images/research/Figure_8_measurement_and_modelling_of_sediment_dynamics.png" title="In-situ data from GBR estuaries (left) were used with a modelling approach (right) that integrated a fully coupled current-wave-sediment model with an embedded machine learning model to more efficiently resolve estuarine sediment dynamics" alt="In-situ data from GBR estuaries (left) were used with a modelling approach (right) that integrated a fully coupled current-wave-sediment model with an embedded machine learning model to more efficiently resolve estuarine sediment dynamics">
    <figcaption>
        In-situ data from GBR estuaries (left) were used with a modelling approach (right) that integrated a fully coupled current-wave-sediment model with an embedded machine learning model to more efficiently resolve estuarine sediment dynamics
    </figcaption>
</figure>

## eReefs Products used
- The high-resolution estuarine model was forced by eReef model to provide boundary conditions (e.g. salinity, temperature and currents) at the open boundary to predict estuarine-shelf exchanges.
- The eReef outputs of salinity, suspended sediment concentration and shear rate can be used to determine sediment particle size in estuaries within the GBR, using the machine learning algorithm developed in the case study.

## Outcomes and Impact
- Demonstrated how coupling of novel observations and modelling tools can advance our understanding of the critical land-sea interface and thereby better inform management actions.
- Integrating this new flocculation knowledge into existing model frameworks will enable water quality targets and monitoring to be refined based on more realistic sediment transport processes. Key insights include the following:
  - Fine sediment flocculation was found to be ubiquitous in GBR estuaries, with in-situ floc sizes (median 132 µm) an order of magnitude larger than the non-flocculated particles (15 µm), i.e., those more often present in rivers. This indicates that flocculation in estuaries can increase settling times by 10-100 fold and therefore has a similarly large impact on sediment dispersion in the GBR. 
  - Floc size varied depending on estuarine system and location along the freshwater-to-marine continuum. However, an important finding from the broad in-situ dataset was that floc size could be accurately predicted from salinity, shear stress and turbidity using machine learning. Finally, field data were used to implement flocculation dynamics into a catchment-to-reef modelling approach. Applying the model to quantify sediment budgets in the Fitzroy Estuary showed that the trapping efficiency varied from 28% during floods to 100% during dry conditions, but these robust budget terms were highly dependent on accurate parameterization of estuarine sediment dynamics. 
- This transferable approach is now being applied in the Fitzroy Estuary using an ongoing observing network and model and can be scaled to other GBR estuaries.

## Related Resources

{% assign references = site.data.publications.case-studies.measurement_and_modelling_of_sediment_dynamics.references | sort:"date-published" %}
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