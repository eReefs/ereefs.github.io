---
toc: true
toc_sticky: true
---


Reports and publications about the eReefs collaboration, platform, and data products/tools:  

#### **GBR Water Quality Targets Reports and Associated Modelling Reports**  

Development of basin-specific ecologically relevant water quality targets for the Great Barrier Reef.  

- **Water Quality Targets 2024-2025**  
  - Will be available when released by the Australian government.  

- **Water Quality Targets 2017**  
  - [Reef Plan Targets (2017)](https://www.reefplan.qld.gov.au/water-quality-and-the-reef/the-plan/targets)  
  - [Marine Modelling Report for 2017 Targets (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0025/46096/gbr-water-quality-targets-june2017.pdf)  

#### **GBR Water Quality Report Cards and Associated Modelling Reports**  

The Reef Water Quality Report Card assesses progress towards the Reef 2050 Water Quality Improvement Plan.  

- **Report Card 2021-2022 (Released in 2024 using eReefs products)**  
  - [Report Card 2021-2022](https://www.reefplan.qld.gov.au/tracking-progress/reef-report-card/2021-22)  
  - [Marine Modelling Report (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0023/336452/report-card-2021-2022-marine-modelling-methods.pdf)  

- **Report Card 2020 (Released in 2022 using eReefs products)**  
  - [Report Card 2020](https://www.reefplan.qld.gov.au/tracking-progress/reef-report-card/2020)  
  - [Marine Modelling Report (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0016/262015/report-card-2020-methods-combined.pdf)  

- **Report Card 2019 (Released in 2021 using eReefs products)**  
  - [Report Card 2019](https://www.reefplan.qld.gov.au/tracking-progress/reef-report-card/2019)  
  - [Marine Modelling Report (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0019/211672/report-card-2019-methods-combined.pdf)  

- **Report Card 2017-2018 (Released in 2019 using eReefs products)**  
  - [Report Card 2017-2018](https://www.reefplan.qld.gov.au/tracking-progress/reef-report-card/2017-2018)  
  - [Marine Modelling Report (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0022/82921/report-card-2017-2018-methods-combined.pdf)  

- **Report Card 2016 (Released in 2017 using eReefs products)**  
  - [Report Card 2016](https://www.reefplan.qld.gov.au/tracking-progress/reef-report-card/2016)  
  - [Marine Modelling Report (PDF)](https://www.reefplan.qld.gov.au/__data/assets/pdf_file/0024/46158/report-card-2016-detailed-methods.pdf)  

**Reports that incorporate eReefs data Great Barrier Reef Marine Park Authority**

{% assign reportPublishedYear = site.reports | group_by:"year" | sort: "year" %}
{% for year in reportPublishedYear reversed %}
### {{ year.name }}
  {% for report in year.items %}
**[{{ report.title }}]({{ report.link_url }})** ({{ report.publisher }})
  {{ report.content }}
  {% endfor %}
{% endfor %}
