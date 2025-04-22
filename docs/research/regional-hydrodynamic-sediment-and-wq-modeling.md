---
classes: wide
title: Modelling System and Framework
---

The fate of materials in the marine environment is simulated using transport and transformation models. Catchment model (or watershed model) simulate how water moves through a land catchment and provide inputs for the receiving water ocean models. Hydrodynamic ocean models drive water movement and mixing, forming the foundation for water quality and ecological response models. Oceanic sediment transport models predict the movement of suspended particulates, including settling, resuspension, mixing, and flocculation.The Ocean biogeochemical models build on these, simulating primary and secondary productivity, nutrient cycling, and dissolved oxygen dynamics. Data assimilation quantifies uncertainties reduce errors to provide the best estimate of ocean condtions.


<div style="max-width: 90%; margin: auto;">
{% include figure image_path="/assets/images/research/eReefs_model_framework2.png" alt="eReefs modelling framework" caption="eReefs modelling framework" %}
</div>
The modelling framework adopted for eReefs involves nesting a regional ocean model within a global ocean circulation model [Bluelink](https://www.csiro.au/en/research/natural-environment/oceans/bluelink), to provide accurate forcing data along the boundary within the Coral Sea, where mesoscale oceanographic processes strongly affect exchange between the Coral Sea and the GBR Lagoon. The average resolution of the regional model is ~4 km. Within this regional grid, a more finely resolved model with a resolution of ~1 km is also availlable.

<div style="max-width: 90%; margin: auto;">
{% include figure image_path="/assets/images/research/eReefs_model_framework.png" alt="eReefs model domains" caption="eReefs model domains" %}
</div>

## Read More

### [Catchment model](/research/catchment_model)

### [Hydrodynamic model](/research/hydro_model)

### [Sediment transport](/research/sediment_transport_model)

### [Biogeochemical model](/research/biogeochemical_model)

### [Data Assimilation](/research/data_assimilation)



