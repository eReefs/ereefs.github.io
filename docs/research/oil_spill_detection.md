---
classes: wide
title: Oil Spill Detection
---

The potential for oil spills, or illegal discharges in the marine park from ships transiting through GBR waters is a significant risk that requires early detection and ongoing situational awareness. The most prominent oil spill in the marine park occurred in March 2009 with the Pacific Adventurer cargo ship due to encountering severe weather conditions during Cyclone Hamish. Over the past seven years however, several instances of likely illegal discharges from passing ships have been identified in the GBR. 

## eReefs Products used
During eReefs Phase 5 a semi-automated oil features detection system was developed. Oil features floating on the ocean’s surface are best detected using Synthetic Aperture Radar (SAR) satellite scenes.  The workflow system primarily targets possible illegal oil discharges from passing ships, but it is used for monitoring ports and the GBR waters to assist GBRMPA in managing this environmental risk.

<div style="max-width: 90%; margin: auto;">
{% include figure image_path="/assets/images/research/Figure_9_oil_spill_detection.png" alt="A likely 64km-long illegal oil discharge off Swain Reefs (Southern GBR) captured by Sentinel-1A SAR-C on 19th February 2023 and verified by the CSIRO Oil Spills detection system (not shown)." caption="A likely 64km-long illegal oil discharge off Swain Reefs (Southern GBR) captured by Sentinel-1A SAR-C on 19th February 2023 and verified by the CSIRO Oil Spills detection system (not shown)." %}
</div>

The system is semi-automated: the download, processing and detection assessment is running daily, but a trained operator provides a final assessment when a detection occurs prior to informing partner agencies such as the GBRMPA. More than 900 scenes are acquired annually, and processed, over the GBR since 2014. 
The system uses first a machine learning (ML) approach specifically trained for the GBR to detect potential features resembling oil slicks floating on the ocean’s surface in each scene. A second, empirical approach is then used to further discriminate potential candidate features from false positives. The system shows that it is reliable for ongoing background monitoring of the GBR resulting in 98% detection accuracy.
Email alerts are sent to provide information on the number of SAR scenes processed on the day and possible features detected, thus allowing for further inspection by an operator if required. In addition, this new satellite information provides users with the ability to use various layers in synergy, such as ocean colour observations or hydrodynamic models, thus enhancing their understanding of the various processes and features observed in the GBR, as illustrated below. 

<div style="max-width: 90%; margin: auto;">
{% include figure image_path="/assets/images/research/Figure_10_oil_spill_detection.png" alt="The eReefs platform provides a valuable perspective and allows for synergetic application of satellite imagery with other data sources provided under eReefs Phase 5 (right panel). The Sentinel-1A SAR-C acquisition of 29th December 2023 of the central GBR is used in combination with the modelled sea water velocity (GBR1; left panel) and showcases biogenic slicks and low wind speed areas that could not be otherwise imaged." caption="The eReefs platform provides a valuable perspective and allows for synergetic application of satellite imagery with other data sources provided under eReefs Phase 5 (right panel). The Sentinel-1A SAR-C acquisition of 29th December 2023 of the central GBR is used in combination with the modelled sea water velocity (GBR1; left panel) and showcases biogenic slicks and low wind speed areas that could not be otherwise imaged." %}
</div>

## Outcomes and Impact
- A fully operational semi-automated oil spill detection system is in place and operating daily for the specific monitoring of the GBR.
- A 10-year SAR satellite archive (2014-2024) of contemporary acquisitions over the GBR
- Single use of the new SAR layer, or in synergy with other layers, allows for a new perspective on processes and marine features in the GBR.
- Oil spill detections (about 2~3 per year) were communicated to the relevant agencies, namely GBRMPA and AMSA, within a few hours of their detection (during weekdays).
- Regular updates were communicated on detection cases (every detection is communicated), progress and improvements of the detection system

## Related Resources

{% assign references = site.data.publications.case-studies.oil_spill_detection.references | sort:"date-published" %}
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