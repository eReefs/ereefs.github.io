---
layout: single
classes: wide
title: Operational hydrodynamic coastal ocean forecasting
header:
  overlay_image: /assets/images/ereefs_header_8243_q60.jpg
  caption: "Photography by Gary Cranitch, Queensland Museum"
sidebar:
   nav: "platform"
---
### Overview
The objectives of this component of eReefs are:

1. To deliver an operational ocean forecasting system, based at the Bureau of Meteorology, that produces real-time daily analyses and forecasts out to 3 days, of currents, temperature, salinity, sea-level and river tracer concentrations from major rivers for the Great Barrier Reef region.
To archive, for public access, a multi-year hindcast and reanalysis of the currents, temperature, salinity and sea-level for the Great Barrier Reef region, including the influence of freshwater flows from the hinterland catchments.
2. The models produced will find applications in a range of areas including ship routing, port management, modelling of river plumes, spill monitoring, fishing, recreation and search and rescue. This component of the eReefs Project will develop an operational ensemble ocean forecasting system that is comprised of the following components:

* ocean model,
* data assimilation system,
* observation system,
* forcing system, and
* river tracer system.

The prediction system based on these components will be configured to produce hourly forecast information of sea-level, surface currents and sea surface temperatures. It will also produce daily information of the 3D temperature, salinity, currents and river tracers. The components of the prediction system will be brought together into a complete system for operational forecasting. The system will be verified through historical simulations to quantify the performance with respect to the observing system. It will then be transferred to the Bureau operational centre to carry out operational trials.

### Ocean Model
The Regional Ocean Modeling System (ROMS; Haidvogel et al, 2008) is used as the ocean model. The grid configuration is curvilinear and the horizontal resolution is approximately 4 km. The model configuration and parameterisations are being determined from high 500 m resolution ROMS modelling studies and through using the data assimilation system. ROMS is interfaced to observations through the data assimilation system and forced using the Bureau’s NWP and OceanMAPS systems for delayed and real-time modes. It also includes real-time river forcing from the Bureau of Meteorology and tidal boundary forcing from the Oregon State University global tidal model, TOPEX/Poseidon Global Inverse Solution version TPX07.2.

{% include figure image_path="/assets/images/platform/image6.png" alt="Altimeter observations" caption="Overlaid tracks represent altimeter observations" %}

### Data Assimilation System
An Ensemble Kalman Filter (EnKF) system is used for data assimilation. This provides an optimal method for combining the model with observations, an advantage for the GBR region, which has a sparse observing system. A similar system has been implemented as part of TOPAZ at NERSC, the Nansen Environmental Remote Sensing Centre in Bergen, Norway (Sakov et al., 2012). A new data assimilation software (EnKF-C) has been developed by the Bureau of Meteorology within the BLUElink-3 project for next generation ocean forecasting. It has been adopted in OceanMAPS and in regional applications. The EnKF system can be optimised for accuracy, dynamical balance and computational efficiency so that the forecast system is practical for operational implementation. The data assimilation software is also used as the framework for quantifying system error and forecast uncertainty.

### Observation System
An observation system is being developed that processes both historical and real-time data into a format that the data assimilation system can read. The in situ observing system for the ocean state of the GBR is sparse. Real-time tide gauges and remotely sensed sea surface temperature will be used to provide the core observations for the operational prediction system. Current platforms ingested into the OceanMAPS system (Brassington et al., 2010) will also be assimilated.

The system is likely to also benefit from the assimilation of altimetric sea-levels, which can be routinely done for the deep water (>200 m) regions. In water depths less than 200 m the use of altimetry will require new analysis to ensure tides are properly evaluated, that land effects on the signal are removed and to confirm that the gravitational reference (the geoid) is accurately determined. Further to the standard set of observations, an enhanced set of observations will be processed into the format that the EnKF system can read. These will include AIMS mooring data, HF radar, Himawari-8 SST, ocean colour and other potential data products.

Towards the end of the project and after the historical simulations have been evaluated, an operational dataset will be determined for the routine feed to the real-time system.

### Forcing System
The forcing system is being designed to process the ocean model forcing data (atmospheric, open boundary and river forcing) and to be geographically re-locatable. Its main purpose is to provide forcing data products in a format suitable for ROMS. The atmospheric forcing for historical simulations is the National Centers for Environmental Prediction (NCEP) Climate Forecast System Reanalysis (CFSR) and for real-time forecasting it is Bureau of Meteorology forecast fluxes from the Australian Community Climate and Earth System Simulator (ACCESS) (Puri et al., 2013). River volume discharges from major rivers based on operational stream flow data and hydrological models, provided by the Bureau of Meteorology, will also be processed by the forcing system and made available to the model. The ocean model is one-way nested inside the Bureau’s operational OceanMAPS system using sea-level, currents, temperature and salinity.

### River Tracing System
The river tracing system will be designed to deliver ensemble based probabilistic distributions of passive tracers from available real-time forecasts of river discharge. This will use the standard ROMS passive tracer capability. Passive tracers for each of the significant rivers and for each member of the ensemble prediction system will be utilised to create a single probabilistic dataset (ensemble mean and spread) showing the spatial distribution of the effect of river inputs to the domain. Probabilistic distributions from combined and individual river sources will be made available as a data product to allow users to estimate the total and relative contributions. The aim will be to produce a real-time environmental data product containing information that describes the temporal distribution of river tracer concentrations, indicating the likely areas to be impacted by river discharge events.