---
title: Open Access Datasets
toc: true
toc_sticky: true
---

# *eReefs* Marine Model Results
The eReefs GBR4 and GBR1 model results are published as [National Reference Datasets](https://opus.nci.org.au/spaces/NDP/pages/35066150/NCI+Data+Collections) via the [NCI](https://nci.org.au/).

Model results are published as one dataset per unique EMS model configuration, and dataset names follow our [Model simulation naming protocol](https://research.csiro.au/ereefs/models/models-about/biogeochemical-simulation-naming-protocol/) which embeds some semantic information about that configuration in the dataset ID. The raw results files are published as a large number of files that comply with the [NetCDF Climate and Forecast (CF) Metadata Conventions](https://cfconventions.org/cf-conventions/cf-conventions.html). All the datasets are licensed as [Creative Commons by Attribution (CC-BY 4.0)](https://creativecommons.org/licenses/by/4.0/legalcode), and may be freely referenced by other data products. Please refer to the metadata record for each dataset for the preferred citation.

## Accessing Marine Model Results

We recommend that researchers access these datasets via the [NCI’s THREDDS Server](https://nci.org.au/our-services/data-services#THREDDS), which supports a number of standard HTTP data-query protocols, including [OPenDAP](https://en.wikipedia.org/wiki/OPeNDAP), [WMS](https://www.ogc.org/standards/wms), and [NetCDF Subset](https://docs.unidata.ucar.edu/tds/current/userguide/netcdf_subset_service_ref.html). It is also possible to download the individual results files from this service, but we do not recommend that approach, as some of these datasets are very large (10s of TB). It is much more efficient to query just the subset of data you need!

You can browse the available eReefs datasets in the NCI THREDDS catalog at:

[https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html)

For each dataset, the THREDDS catalog exposes both the individual NetCDF files and a time-based aggregation that allows the entire dataset to be queried from a single URL. See the tables below for links.

Researchers with existing high-performance compute allocations on the NCI may apply for access to the [fx3 project](https://my.nci.org.au/mancini/project/fx3) if you wish to use the eReefs model results dataset files in your HPC workflows on Gadi or from NCI Nirin Cloud servers. Please refer to the [NCI User Guides](https://opus.nci.org.au/spaces/Help/pages/114885007/3.1+Gadi+and+ARE) for detailed instructions.

## GBR4 Regional Model Results

### GBR4 Hydrodynamics v4.0

<span style="color: red;">**NEW! Released May 2025**</span>
This dataset is the results of a hindcast run of a newly updated version 4.0 of the GBR4 Hydrodynamic model, and it succeeds GBR4_H2p0 as the best available eReefs hydrodynamics model results for its time period.  Enhancements over the v2.0 model include updated OBC parameterisation allowing free-developing realistic shelf-break currents (no relaxation), and updated heat penetration via use of the Sed-BGC-optic model to calculate a spatially and temporally variable short wave radiation attenuation parameter.

This dataset is now available for visualisation and querying in the [eReefs Data Explorer](https://portal.ereefs.info/map).

A v4.0 river tracer dataset and Biogeochemistry and Sediments dataset which use this hindcast as input forcing will follow soon - watch this space!

| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | NCI THREDDS |
| --- | --- | --- | --- | --- | --- |
| [GBR4 Hydrodynamics v4.0 (GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dcc8462c-8dc5-4d78-b9d8-6f1c31ae0001) | 2010-09 | 2022-11 | hourly | 2.6 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd/catalog.html) |



### GBR4 Hydrodynamics v2.0
The following datasets were generated by a near-real-time GBR4 model workload that added one data file per day to each dataset for many years.

Unfortunately the eReefs near-real-time modelling system had to be paused on January 17 2024 after flooding events in northern Queensland catchments during the 2023/24 summer monsoon season caused damage to the real-time streamflow and water quality monitoring network in the catchment which we depend on for critical forcing data. We were initially able to restart the model with a simulated dataset substituting for the data lost to TC Jasper in December 2023, but were then faced with the failure of the Normanby river gauge on January 18 2024 and the Daintree gauge on February 8 2024. Without flow data for these major rivers, the hydrodynamic model results became unreliable, and so we have reluctantly made the call to cease operation of the GBR4 near-real-time models.

While the model was operating, the time lag between ‘now’ and the most recent timestamp available in the dataset varied depending on how long it took us to acquire and ingest the third-party forcing data, but was usually about one week, with the BGC model a day behind the hydrodynamics.

These datasets can all be visualised and queried via the [eReefs Data Explorer](https://portal.ereefs.info/map).

| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | NCI THREDDS |
| --- | --- | --- | --- | --- | --- |
| [GBR4 Hydrodynamics v2.0 (GBR4_H2p0)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/72020224-f086-434a-bbe9-a222c8e5cf0d) | 2010-09 | 2024-01-17 | hourly | 3.5 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr4_2.0)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_v2/catalog.html) |
| 🡒 [GBR4 Hydo v2.0 River Tracers (GBR4_H2p0_Rivers)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/fc5ad4ec-6777-4855-969e-6b29dbf1e122) | 2010-12 | 2024-01-17 | daily | 1.6 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr4_2.0_rivers)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_2.0_rivers/catalog.html) |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.1 (GBR4_H2p0_B3p1_Cfur_Dnrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/7bc0d1fc-d0e4-4c1a-956f-8f7cd1a6892d) | 2019-10 | 2024-01-16 | daily | 1.2 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cfur_Dnrt)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cfur_Dnrt/catalog.html) |

### GBR4 BGC and Sediments v3.1
The following sets of GBR4 model results are from hindcast scenario runs based on the best available catchment forcing data combined with nutrient loads based on a variety of possible management scenarios.

These datasets can all be visualised and queried via the [eReefs Data Explorer](https://portal.ereefs.info/map).

| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | NCI THREDDS |
| --- | --- | --- | --- | --- | --- |
| [GBR4 BGC v3.1 baseline (GBR4_H2p0_B3p1_Cq3b_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3b_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3b_Dhnd/catalog.html) |
| [GBR4 BGC v3.1 pre-industrial (GBR4_H2p0_B3p1_Cq3P_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3P_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3P_Dhnd/catalog.html) |
| [GBR4 BGC v3.1 reduced loads (GBR4_H2p0_B3p1_Cq3R_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bdbe56b9-0492-4442-bc8f-8adf4c227906) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3R_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3R_Dhnd/catalog.html) |

### GBR4 Deprecated Model Results
The following sets of GBR4 regional model results have been superseded by the more recent, and more correct results listed above.

We recommend that you do not use these for new research projects.

The metadata records for these datasets will remain online and available for reference purposes, but the data files have been removed from the NCI fx3 project and THREDDS server, and the datasets are not available for visualisation in the eReefs Data Explorer. If you need access to these old data files for research purposes, please use the contact form on this website to request access to CSIRO’s archive copy of the dataset.

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | Superseded By |
| --- | --- | --- | --- | --- | --- |
| [GBR4 hydrodynamics v1.85 (GBR4_H1p85)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/5bf3ce71-b820-4474-b273-8a59d5b26fe8) | 2010-09 | 2016-06 | hourly | 1.3 TB | [GBR4\_H2p0](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/72020224-f086-434a-bbe9-a222c8e5cf0d) |
| [GBR4 BGC v926 Hindcast](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b324b36a-0bf1-410f-91a9-aa8a188c768a)  <br>[(GBR4_H1p85_B1p0_Cbas_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b324b36a-0bf1-410f-91a9-aa8a188c768a) | 2010-12 | 2014-12 | daily | 0.7 TB | [GBR4_H2p0_B3p1_Cq3b_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| [GBR4 BGC v924 NRT](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0af98fb1-c197-4a74-8d3b-874effa1e82e)  <br>[(GBR4_H1p85_B1p9_Cfur_Dnrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0af98fb1-c197-4a74-8d3b-874effa1e82e) | 2014-12 | 2017-07 | daily | 0.5 TB | [GBR4_H2p0_B3p1_Cq3b_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| [GBR4 BGC v2.0 Baseline Hindcast](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b6ce22f0-b9c6-47b4-89ee-266807f72761)  <br>[(GBR4_H2p0_B2p0_Chyd_Dcrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b6ce22f0-b9c6-47b4-89ee-266807f72761) | 2010-12 | 2016-10 | daily | 1.1 TB | [GBR4_H2p0_B3p1_Cq3b_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| [GBR4 BGC v2.0 Preindustrial Hindcast](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/e8ce1948-d22a-42b6-aa4e-b87069c3aaf4)  <br>[(GBR4_H2p0_B2p0_Cpre_Dcrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/e8ce1948-d22a-42b6-aa4e-b87069c3aaf4) | 2010-12 | 2016-10 | daily | 1.1 TB | [GBR4_H2p0_B3p1_Cq3P_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) |
| [GBR4 BGC v2.0 NRT](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/c40d0251-61bf-4138-bfe0-f0afa6ce798b)  <br>[(GBR4_H2p0_B2p0_Chyd_Dnrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/c40d0251-61bf-4138-bfe0-f0afa6ce798b) | 2016-11 | 2019-11 | daily | 0.6 TB | [GBR4_H2p0_B3p1_Cq3b_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) +  <br>[GBR4_H2p0_B3p1_Cfur_Dnrt](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/7bc0d1fc-d0e4-4c1a-956f-8f7cd1a6892d) |
| [GBR4 BGC v3.0 Baseline Hindcast (GBR4_H2p0_B3p0_Chyd_Dcrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/3b28a6be-8021-42c8-b7ca-b53434fd95bd) | 2010-12 | 2018-10 | daily | 1.8 TB | [GBR4_H2p0_B3p1_Cq3b_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| [GBR4 BGC v3.0 Pre-industrial Hindcast (GBR4_H2p0_B3p0_Cpre_Dcrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bb8b0ee1-f3ca-4389-b2d6-3cdb9a45effa) | 2010-12 | 2018-01 | daily | 1.6 TB | [GBR4_H2p0_B3p1_Cq3P_Dhnd](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) |                        |

## GBR1 Shelf Model Results

### GBR1 Hydrodynamics v2.0
The following datasets were generated by a near-real-time GBR1 shelf model workflow that ran each day as soon as the new GBR4 Hydrodynamics v2.0 forcing dataset had been updated. When the GBR4 near-real-time modelling system had to cease operating on January 17, 2024, the GBR1 system lost access to its critical GBR4 forcing, and it also had to end.

While this system was operating, the GBR1 near-real-time model results usually lagged their GBR4 equivalents by only a few hours.

These datasets can all be visualised and queried via the [eReefs Data Explorer](https://portal.ereefs.info/map).

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | NCI THREDDS |
| --- | --- | --- | --- | --- | --- |
| [GBR1 Hydrodynamics v2.0 (GBR1_H2p0)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0ce4f380-ac99-46d5-a327-571bd20a0478) | 2014-12-01 | 2024-01-17 | hourly | 20 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr1_2.0)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_2.0/catalog.html) |
| 🡒 [GBR1 Hydro v2.0 River Tracers (GBR1_H2p0_rivers)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/d2ff17de-8347-4213-b59d-ab9afeb0b899) | 2014-12-01 | 2024-01-17 | daily | 3.8 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr1_2.0_rivers)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_2.0_rivers/catalog.html) |
| 🡒 [GBR1 BGC and Sediments v3.2 (GBR1_H2p0_B3p2_Cfur_Dnrt)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/85241b4c-4106-4a9d-992b-a77ee8c615ff) | 2019-10-16 | 2024-01-16 | daily | 7.2 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR1_H2p0_B3p2_Cfur_Dnrt)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_bgc_GBR1_H2p0_B3p2_Cfur_Dnrt/catalog.html) |

### GBR1 Pesticide Scenario - Diuron

<span style="color: red;">**NEW! Released May 2025**</span>
This dataset is the result of simulation of the dispersal of the pesticide Diuron that was forced by the GBR1 Hydrodynamic model for the time period from January 2016 to June 2018. For more information about this scenario run and the analysis that followed, see [eReefs Pesticide Modelling and Management](/research/pesticide_modelling_and_management.html).

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | NCI THREDDS |
| --- | --- | --- | --- | --- | --- |
| [GBR1 Diuron Dispersal (GBR1_H2p0_Cq3pe1_Dhnd)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/aefc4227-8779-47a8-9137-2839631f9328) | 2016-01 | 2018-06 | hourly | 34 GB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR1_H2p0_Cq3pe1_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_H2p0_Cq3pe1_Dhnd/catalog.html) |


### GBR1 Deprecated Model Results
The following sets of GBR1 shelf model results are older and have been superseeded by newer data products.

We recommend that you do not use these for new research projects.

The metadata records for these datasets will remain online and available for reference purposes, but the data files have been removed from the NCI fx3 project and THREDDS server, and the datasets are not available for visualisation in the eReefs Data Explorer. If you need access to these old data files for research purposes, please use the contact form on this website to request access to CSIRO’s archive copy of the dataset.

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | Superseded By |
| --- | --- | --- | --- | --- | --- |
| [GBR1 hydro version 1.71 (GBR1\_H1p71)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/97fc0051-58b7-4e14-84aa-50251385084a) | 2014-12 | 2016-04 | hourly | 2.2 TB | [GBR1\_H2p0](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0ce4f380-ac99-46d5-a327-571bd20a0478) |
| 🡒 [GBR1\_BGC Version 924 NRT](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/84cecc61-612f-40d1-9e14-a7515fffe801) | 2014-12 | 2019-11 | daily | 5.6 TB | (no replacement) |
