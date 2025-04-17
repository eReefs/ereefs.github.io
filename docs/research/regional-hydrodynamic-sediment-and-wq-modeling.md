---
classes: wide
---

# Modelling system and framework

The fate of materials in the marine environment is simulated using transport and transformation models. Cathment  model (or watershed model) simulate how water moves through a land catchment and provide inputs for the receiving water ocean models. Hydrodynamic ocean models drive water movement and mixing, forming the foundation for water quality and ecological response models. Oceanic sediment transport models predict the movement of suspended particulates, including settling, resuspension, mixing, and flocculation.The Ocean biogeochemical models build on these, simulating primary and secondary productivity, nutrient cycling, and dissolved oxygen dynamics. Data assimilation quantifies uncertainties reduce errors to provide the best estimate of ocean condtions.

The modelling framework adopted for eReefs involves nesting a regional ocean model within a global ocean circulation model (Bluelink https://www.csiro.au/en/research/natural-environment/oceans/bluelink), to provide accurate forcing data along the boundary within the Coral Sea, where mesoscale oceanographic processes strongly affect exchange between the Coral Sea and the GBR Lagoon. The average resolution of the regional model is ~4 km.  Within this regional grid, a more finely resolved model with a resolution of ~1 km is also availlable.

<div style="max-width: 70%; margin: auto;">
{% include figure image_path="/assets/images/research/eReefs_model_framework2.png" alt="eReefs modelling framework" caption="eReefs modelling framework" %}
</div>

### Catchment model

The eReefs modelling framework uses river flow rates and nutrient loads from the BOM G2G and Queensland government Paddock to Reef Catchment models.

<div style="max-width: 50%; margin: auto;">
  {% include figure image_path="/assets/images/research/catchment_input.png" alt="eReefs catchment input node (rivers) into water receiving ocean model" caption="eReefs catchment input nodes (rivers) into water receiving ocean model" %}
</div>

#### G2G hydrology model
G2G is a distributed, grid-based hydrological model used to predict river flows across regional, national and continental scales at both gauged and ungauged locations. G2G provides river flow accross the GBR for the 2010 -2022 time period.

 <div style="max-width: 50%; margin: auto;">
{% include figure image_path="/assets/images/research/g2g.png" alt="G2G input node,statistical metric used to assess the predictive accuracy of hydrological models by comparing simulated and observed data " caption="G2G input nodes, statistical metric used to assess the predictive accuracy of hydrological models by comparing simulated and observed data" %}
</div>


#### Paddock to Reef Catchment model
This model simulates the movement of water, sediment, nutrients (like nitrogen and phosphorus), and pesticides from agricultural and other land uses in catchments draining into the GBR lagoon. It integrates paddock outputs and simulate river and floodplain transport.
 
The Paddock to Reef Catchment Model feeds into eReefs by:
Providing Pollutant Loads – It supplies estimates of sediment, nutrients, and pesticide loads from different catchments.
Hydrological Inputs – The model outputs river flow and pollutant transport, which serve as boundary conditions for eReefs hydrodynamic models.
Scenario Testing – eReefs can use catchment model outputs to test how land management changes impact water quality at a regional scale.
By linking the Paddock to Reef Catchment Model with eReefs, scientists and policymakers can better understand how land-based activities influence the GBR's water quality, guiding efforts to reduce pollution and improve reef health.
 
 <div style="max-width: 50%; margin: auto;">
{% include figure image_path="/assets/images/research/source.png" alt="Paddock to Reef Catchment Model" caption="Paddock to Reef Catchment Model" %}
</div>

### Hydrodynamic model
The hydrodynamic model SHOC developed at CSIRO (Sparse Hydrodynamic Ocean Code; Herzfeld et al., 2006) is employed for both the regional and shelf model applications. Outputs from the model include three-dimensional distributions of velocity, temperature, salinity, density, passive tracers, mixing coefficients and sea-level. 

{% include figure image_path="/assets/images/research/eReefs_model_framework.png" alt="eReefs model domains" caption="eReefs model domains" %}

### Sediment transport
The sediment transport model adds a multilayer sediment bed to the hydrodynamic model grid and simulates the sinking, deposition, and resuspension of multiple size classes of suspended sediment (Gravel, Sand, Mud, Fine Sediment, and Dust). The sediment model is forced by reanalysis of the Australian wide waves prediction model.

 <div style="max-width: 50%; margin: auto;">
{% include figure image_path="/assets/images/research/mecosed.png" alt="eReefs sediment model processes" caption="eReefs sediment model processe" %}
</div>


### Biogeochemical model

The CSIRO Environmental Modelling Suite (EMS) has been developed over 20 years to model
coupled physical, sediment, chemical and biogeochemical processes in marine and estuarine envi-
ronments (https://research.csiro.au/cem/projects/). Recently the biogeochemical model has been significantly improved through the addition of a spectrally-resolved optical model and a number of new biogeochemical processes (carbon chemistry, coral processes, multiple seagrass species etc).

Ecological processes are organised into three zones with pelagic processes including phytoplankton and zooplankton growth and mortality, detritus remineralisation and fluxes of dissolved oxygen, nitrogen and phosphorus. Coral Macroalgae and seagrass growth and mortality are included in the epibenthic zone, whilst further phytoplankton mortality, microphytobenthos (benthic diatom) growth, detrital remineralisation and fluxes of dissolved substances are included in the sediment layer.

 <div style="max-width: 70%; margin: auto;">
{% include figure image_path="/assets/images/research/bgc_model.png" alt="eReefs Biogeochemical Model schematic" caption="eReefs Biogeochemical Model schematic with latest processes improvements" %}
</div>


### Data Assimilation 
The optically complex waters of the GBR contain mixtures of white carbonate and brown non-carbonate suspended sediments, green microalgae, colour dissolved organic matter and a reflective bottom visible in optically shallow water from a surface view. Here we use a bio-optical model to simultaneously assimilate multi-spectral remote-sensing reflectance observations from MODIS-Aqua, VIIRS-SNPP and OLCI Sentinel-3A/B (19 bands in total) into a coupled physical-biogeochemical model of the Great Barrier Reef region using a 100-member Ensemble Kalman Filter. The multi-spectral approach allows the assimilation system to update the differing constituents simultaneously, achieving a reduction in system errors when compared to withheld in-situ observations.  Schematic of the eReefs marine modelling system illustrating the modelling and observational products that are assembled to generate the data assimilating ensemble simulations. Model runs implemented on the National Computing Infrastructure. Aggregate outputs are used for GBR water quality report cards.

 <div style="max-width: 70%; margin: auto;">
{% include figure image_path="/assets/images/research/DA_schematic.png" alt="eReefs Data Assimilation schematic" caption="eReefs Data Assimilation schematic" %}
</div>



