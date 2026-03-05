---
agency: CSIRO
caption: Results of the GBR4 and GBR1 eReefs Marine Models
category: datasets
fa-icon: database
feature: true
target_url: https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html
title: eReefs Marine Model Results
---
The results datasets from runs of the GBR4 and GBR1 [*eReefs* marine models](/research/regional-hydrodynamic-sediment-and-wq-modeling) are published as [National Reference Datasets](https://opus.nci.org.au/spaces/NDP/pages/35066150/NCI+Data+Collections) via the [NCI](https://nci.org.au/).

Both models use the [CSIRO Environmental Modelling Suite (EMS)](/outputs/open-source-software#csiro-ems) software to simulate the waters of the Great Barrier Reef.  They are first run to simulate the hydrodynamics of the reef, producing a results dataset containing ocean current data, as well as temperature, salinity and sea-surface temperature.

The hydrodynamic model results are then used as boundary forcing for transport models, which can simulate river tracers for the various rivers which flow into the Great Barrier Reef lagoon or calculate the biogeochemical and optical properties of the water column and sediments.

Model results are published as one dataset per unique combination of model grid (GBR4 or GBR1), forcing data selection and run mode. Dataset names follow our [Model simulation naming protocol](https://research.csiro.au/ereefs/models/models-about/biogeochemical-simulation-naming-protocol/) which embeds some semantic information about that configuration in the dataset ID.


The raw results files are published as [netCDF files](https://www.unidata.ucar.edu/software/netcdf) that comply with the [NetCDF Climate and Forecast (CF) Metadata Conventions](https://cfconventions.org/cf-conventions/cf-conventions.html). Each file represents either a single day or a single month of the simulation, and includes the simulated date in the filename.

All the datasets are licensed as [Creative Commons by Attribution (CC-BY 4.0)](https://creativecommons.org/licenses/by/4.0/legalcode), and may be freely referenced by other data products. Please refer to the metadata record for each dataset for the preferred citation.

If you use any of these eReefs marine model results datasets in your research, please include the following acknowledgement:

> {% include  acknowlegement.md %}


## GBR4 Regional Model Datasets

<div style="float: right; max-width: 50%; margin-left: 1em;">
    <figure>
        <img src="/assets/images/datasets/gbr4_grid_context.png" title="GBR4 model grid extents and forcing data context" alt="Visualisation of the GBR4 model grid extents, coloured by bathymetry. Overlaid labels list the forcing datasets also required by the GBR4 model with arrows indicating the grid boundary that they apply to.">
        <figcaption>
            The GBR4 model grid extents and forcing data context
        </figcaption>
    </figure>
</div>

### GBR4 Regional Model Grid

All GBR4 Regional Models are based on a curvilinear grid with a spatial resolution of approximately 4km. This grid is made up of 220 x 500 horizontal cells and 47 depth layers with 1m depth resolution at the ocean surface.
The grid extends into the coral sea to ensure that simulations based on it include the south equatorial current while avoiding continental shelf features.
The GBR4 grid definition is available as a geospatial layer which you can access via links in its [metadata record here](https://catalogue.eatlas.org.au/geonetwork/srv/eng/catalog.search#/metadata/43ff162c-8132-41cd-8547-76a1acf58105).


### Current GBR4 Regional Model Results

The best available eReefs Marine Hydrodynamics dataset is a hindcast based on version 4.0 of the GBR4 Hydrodynamic model (`GBR4_H4p0`).

This version of the model includes several enhancements over the v2.0 model, including updated OBC parameterisation allowing free-developing realistic shelf-break currents (no relaxation), and updated heat penetration via use of the Sed-BGC-optic model to calculate a spatially and temporally variable short wave radiation attenuation parameter. These hindcasts are derived from validated boundary forcing data which is the best available for the time period of the simulations, including:

- [GBR100 DeepReef](https://eatlas.org.au/geonetwork/srv/eng/catalog.search#/metadata/200aba6b-6fb6-443e-b84b-86b0bbdb53ac) Bathymetry
- Ocean boundary forcing from the [BRAN 2020 Reanalysis](https://geonetwork.nci.org.au/geonetwork/srv/eng/catalog.search#/metadata/f9372_7752_2015_3718) results of the Bluelink global ocean model
- Atmospheric forcing from the [BARRA R2](https://geonetwork.nci.org.au/geonetwork/srv/eng/catalog.search#/metadata/f6028_3406_0600_7090) global atmosphere model
- Tidal forcing from the global [TPXO tide model](https://www.tpxo.net/)
- River Flows and nutrient loads from a combination of the [eReefs Grid2Grid hydrology model](/research/catchment_model#g2g-hydrology-model) and the [Paddock to Reef SOURCE catchments model](/research/catchment_model#paddock-to-reef-catchment-model)

The `GBR4_H4p0` hindcast datasets will be extended from time to time as new validated forcing data is published.

All current GBR4 Regional Model Results datasets can all be visualised and queried via the [eReefs Data Explorer](https://portal.ereefs.info/map).


| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | Links |
| --- | --- | --- | --- | --- | --- |
|  <span style="color: red;">**NEW! Released May 2025**</span><br/>[GBR4 Hydrodynamics v4.0 Hindcast (`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dcc8462c-8dc5-4d78-b9d8-6f1c31ae0001) | 2010-09 | 2022-11 | hourly | 2.6 TB | [Data Explorer](https://portal.ereefs.info/map?time=2022-10-31T14:00:00.000Z&bbox=134.56055,-28.07198,169.7168,-8.9936&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u%3Av-group;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u%3Av-group;label=sea_water_velocity;colorscalerange=0.005233,1.163;styles=default-vector/anu_fmc_rdylbu_9-inv;z=-0.5) <br/>[NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd/catalog.html) |
| <span style="color: red;">**NEW! Released December 2025**</span><br/>🡒 [GBR4 Biogeochemistry and Sediments v4.2 Baseline Catchment Scenario (`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) | 2011-01 | 2022-10 | daily | 1.1 TB | [Data Explorer](https://portal.ereefs.info/map?time=2022-10-31T14:00:00.000Z&bbox=134.56055,-28.07198,169.7168,-8.9936&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Chl_a_sum;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Chl_a_sum;label=Total%20Chlorophyll;colorscalerange=0.005253,1.094;styles=default-scalar/psu-viridis;z=-0.5) <br/>[NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd/catalog.html) |
| <span style="color: blue;">**Coming soon!**</span><br/>🡒 [GBR4 Hydrodynamics v4.0 River Tracers (`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd_Rivers`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dea876b8-ad0e-49a1-bf36-7e9cb0bbac2d) | 2010-12 | 2022-10 | daily | | |


### Deprecated GBR4 Near-Real-Time Model Results

Version 2.0 of the GBR4 hydrodynamic model was run in near-real-time mode from 2015 to January 2024, appending new files to the results datasets every day that new forcing data became available.

While the model was operating, the time lag between ‘now’ and the most recent timestamp available in the dataset varied depending on how long it took us to acquire and ingest the third-party forcing data, but was usually about one week, with the BGC model a day behind the hydrodynamics.

Unfortunately, flooding events in northern Queensland catchments during the 2023/24 summer monsoon season caused damage to the real-time streamflow and water quality monitoring network in the Great Barrier Reef catchments,  which meant we no longer had access to one of our most critical forcing datasets. We were initially able to restart the model with a simulated dataset substituting for the data lost to TC Jasper in December 2023, but were then faced with the failure of the Normanby river gauge on January 18 2024 and the Daintree gauge on February 8 2024. Without flow data for these major rivers, the hydrodynamic model results became unreliable, and so we reluctantly made the call to cease operation of the GBR4 near-real-time models, and complete the datasets with the end date of January 17 2024.

The `GBR4_H2p0` datasets have been superseded by the suite of current GBR4 datasets (listed [above](#current-gbr4-regional-model-results)) which use much higher quality, validated forcing data and an improved mathematical model.

<span style="color:red;">These datasets will be removed from the NCI fx3 project and THREDDS server in June 2026.</span>

After that date, the metadata records for these datasets will remain online and available for reference purposes, but the data files will no longer be easily accessible.  We recommend that any researchers who currently depend on these datasets switch to using the newer `GBR4_H4p0` datasets as soon as possible.

| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | Links |
| --- | --- | --- | --- | --- | --- | --- |
| [GBR4 Hydrodynamics v2.0 NRT (`GBR4_H2p0`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/72020224-f086-434a-bbe9-a222c8e5cf0d) | 2010-09 | 2024-01-17 | hourly | 3.5 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr4_2.0), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_v2/catalog.html) <br/>Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dcc8462c-8dc5-4d78-b9d8-6f1c31ae0001)|
| 🡒 [GBR4 Hydrodynamics v2.0 NRT River Tracers (`GBR4_H2p0_Rivers`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/fc5ad4ec-6777-4855-969e-6b29dbf1e122) | 2010-12 | 2024-01-17 | daily | 1.6 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr4_2.0_rivers), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_2.0_rivers/catalog.html) <br/>Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd_Rivers`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dea876b8-ad0e-49a1-bf36-7e9cb0bbac2d)|
| 🡒 [GBR4 Biogeochemistry and Sediments v3.1 NRT (`GBR4_H2p0_B3p1_Cfur_Dnrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/7bc0d1fc-d0e4-4c1a-956f-8f7cd1a6892d) | 2019-10 | 2024-01-16 | daily | 1.2 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cfur_Dnrt), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cfur_Dnrt/catalog.html) <br/>Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |
| 🡒 [GBR4 Biogeochemistry and Sediments v2.0 NRT (`GBR4_H2p0_B2p0_Chyd_Dnrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/c40d0251-61bf-4138-bfe0-f0afa6ce798b) | 2016-11 | 2019-11 | daily | 0.6 TB | Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |
| [GBR4 Hydrodynamics v1.85 (`GBR4_H1p85`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/5bf3ce71-b820-4474-b273-8a59d5b26fe8) | 2010-09 | 2016-06 | hourly | 1.3 TB | Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/dcc8462c-8dc5-4d78-b9d8-6f1c31ae0001) |
| 🡒 [GBR4 Biogeochemistry and Sediments B1p9 (v924) NRT (`GBR4_H1p85_B1p9_Cfur_Dnrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0af98fb1-c197-4a74-8d3b-874effa1e82e) | 2014-12 | 2017-07 | daily | 0.5 TB | Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |

### Deprecated GBR4 Water Quality Scenario Results

These datasets were produced using a succession of versions of the GBR4 Biogeochemistry and Sediments model to support multiple editions of the Reef Water Quality Report card.

Each related set of scenarios used the accumulated results of the then-current near-real-time hydrodynamic model as forcing data, but calculated in hindcast mode using the best-available validated (for the baseline) or scenario catchment forcing data and nutrient loads.
Each new suite of scenario results completely supersedes the one before it, and *all* of these have now been superseded by the new `GBR4_H4p0_B4p2` datases listed [above](#current-gbr4-regional-model-results).

We recommend that you do not use these for new research projects. The metadata records for these datasets will remain online and available for reference purposes, but the data files are removed from the NCI fx3 project and THREDDS server once the succeeding datasets have been published. If you need access to these old datasets for research purposes, please use the contact form on this website to request access to CSIRO’s archive copies.

<span style="color:red;">The `GBR4_H2p0_B3p1` catchment scenario datasets will be removed from the NCI fx3 project and THREDDS server in June 2026.  If you are still using these for your research, please switch to the `GBR4_H4p0_B4p2` catchment scenario results as soon as possible.</span>


| Dataset (metadata link) | Start | End | Temporal  <br>Resolution | Size (TB) | Links |
| --- | --- | --- | --- | --- | --- | --- |
| **GBR4 BGC v3.1 Catchment Scenarios (2010-12 to 2019-04)** |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.1 baseline catchment scenario (`GBR4_H2p0_B3p1_Cq3b_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3b_Dhnd), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3b_Dhnd/catalog.html) <br/>Superseded by [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.1 pre-industrial catchment scenario (`GBR4_H2p0_B3p1_Cq3P_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3P_Dhnd), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3P_Dhnd/catalog.html) |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.1 reduced loads catchment scenario (`GBR4_H2p0_B3p1_Cq3R_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bdbe56b9-0492-4442-bc8f-8adf4c227906) | 2010-12 | 2019-04 | daily | 2.0 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR4_H2p0_B3p1_Cq3R_Dhnd), [NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr4_bgc_GBR4_H2p0_B3p1_Cq3R_Dhnd/catalog.html) |
| **GBR4 BGC v3.0 Catchment Scenarios (2010-12 to 2018-10)** |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.0 baseline catchment scenario (`GBR4_H2p0_B3p0_Chyd_Dcrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/3b28a6be-8021-42c8-b7ca-b53434fd95bd) | 2010-12 | 2018-10 | daily | 1.8 TB | Superseded by [`GBR4_H2p0_B3p1_Cq3b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| 🡒 [GBR4 Biogeochemistry and Sediments v3.0 pre-industrial catchment scenario (`GBR4_H2p0_B3p0_Cpre_Dcrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bb8b0ee1-f3ca-4389-b2d6-3cdb9a45effa) | 2010-12 | 2018-01 | daily | 1.6 TB | Superseded by [`GBR4_H2p0_B3p1_Cq3P_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) |
| **GBR4 BGC v2.0 Catchment Scenarios (2010-12 to 2016-10)** |
| 🡒 [GBR4 Biogeochemistry and Sediments v2.0 baseline catchment scenario (`GBR4_H2p0_B2p0_Chyd_Dcrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b6ce22f0-b9c6-47b4-89ee-266807f72761) | 2010-12 | 2016-10 | daily | 1.1 TB | Superseded by [`GBR4_H2p0_B3p1_Cq3b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |
| 🡒 [GBR4 Biogeochemistry and Sediments v2.0 preindustrial catchment scenario (`GBR4_H2p0_B2p0_Cpre_Dcrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/e8ce1948-d22a-42b6-aa4e-b87069c3aaf4) | 2010-12 | 2016-10 | daily | 1.1 TB | Superseded by [`GBR4_H2p0_B3p1_Cq3P_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/bf37a213-2d6f-4cfe-ba70-6057a0b9e3b8) |
| **GBR4 BGC v1.0 (v926) Catchment Scenarios (2010-12 to 2014-12)** |
| 🡒 [GBR4 Biogeochemistry and Sediments v1.0 (v926) baseline catchment scenario (`GBR4_H1p85_B1p0_Cbas_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/b324b36a-0bf1-410f-91a9-aa8a188c768a) | 2010-12 | 2014-12 | daily | 0.7 TB | Superseded by [`GBR4_H2p0_B3p1_Cq3b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0c1c1cd9-d4e6-46c8-951c-f54378a07d59) |


## GBR1 Shelf Model Datasets

<div style="float: right; max-width: 50%; margin-left: 1em;">
    <figure>
        <img src="/assets/images/datasets/gbr1_grid_context.png" title="GBR1 model grid extents and forcing data context" alt="Visualisation of the GBR4 model grid extents, coloured by bathymetry. Overlaid labels list the forcing datasets also required by the GBR4 model with arrows indicating the grid boundary that they apply to.">
        <figcaption>
            The GBR4 model grid extents and forcing data context
        </figcaption>
    </figure>
</div>

The GBR1 Shelf Model is a higher-resolution model than GBR4, and uses results from the GBR4 models as ocean boundary forcing data.

### GBR1 Shelf Model Grid

The GBR1 model grid is a curvilinear grid with a 1km spatial resolution made up of 510 x 2390 horizontal cells and 44 depths, with a 1m vertical resolution at the surface.  The grid extends far enough from the Queensland coast to allow the model to resolve continental shelf hydrodynamics and larger reefs and islands, but does not include the rest of the Coral Sea.

Although only 50% of surface cells and 22% of all cells are wet, GBR1 model runs still calculate values for about twelve million cells every timestamp, so are both quite slow to run and produce very large results datasets!

The GBR1 grid definition is available as a geospatial dataset which you can access via links in its [metadata record](https://catalogue.eatlas.org.au/geonetwork/srv/eng/catalog.search#/metadata/43ff162c-8132-41cd-8547-76a1acf58105).


### Current GBR1 Shelf Model Results

Version 2.0 of the GBR1 shelf model was a part of the eReefs Near Real Time modelling workflow from 2015 onwards, with the model results datasets appended to each day as soon as the GBR4 Hydrodynamics v2.0 forcing dataset had been updated.
While this system was operating, the GBR1 near-real-time model results usually lagged their GBR4 equivalents by only a few hours.  When the GBR4 near-real-time modelling system had to cease operating on January 17, 2024, the GBR1 system lost access to its critical GBR4 forcing, and it also had to end.

The completed `GBR1_H2p0` datasets are still the most recent GBR1 datasets available.   They will remain online until the eReefs team complete work on the suite of `GBR1_H4p0` datasets which will supersede them.

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | Links |
| --- | --- | --- | --- | --- | --- |
| [GBR1 Hydrodynamics v2.0 NRT (`GBR1_H2p0`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0ce4f380-ac99-46d5-a327-571bd20a0478) | 2014-12-01 | 2024-01-17 | hourly | 20 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr1_2.0)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_2.0/catalog.html) |
| 🡒 [GBR1 Hydrodynamics v2.0 NRT River Tracers (`GBR1_H2p0_rivers`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/d2ff17de-8347-4213-b59d-ab9afeb0b899) | 2014-12-01 | 2024-01-17 | daily | 3.8 TB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=gbr1_2.0_rivers)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_2.0_rivers/catalog.html) |
| <span style="color: red;">**NEW! Released May 2025**</span><br/> 🡒 [GBR1 Diuron Dispersal Scenario (`GBR1_H2p0_Cq3pe1_Dhnd`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/aefc4227-8779-47a8-9137-2839631f9328) | 2016-01 | 2018-06 | hourly | 34 GB | [NcML Aggregation](https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html?dataset=GBR1_H2p0_Cq3pe1_Dhnd)  <br>[NetCDF Files](https://thredds.nci.org.au/thredds/catalog/fx3/gbr1_H2p0_Cq3pe1_Dhnd/catalog.html) <br/> More information about this pesticide scenario: [Pesticide Modelling and Management](/research/pesticide_modelling_and_management) |

### Deprecated GBR1 Shelf Model Results
The following sets of GBR1 shelf model results are older and have been retired by the eReefs modelling team in favour of newer data products.

We recommend that you do not use these for new research projects.

The metadata records for these datasets will remain online and available for reference purposes, but the data files have been removed from the NCI fx3 project and THREDDS server, and the datasets are not available for visualisation in the eReefs Data Explorer. If you need access to these old data files for research purposes, please use the contact form on this website to request access to CSIRO’s archive copy of the dataset.

| Dataset (metadata link) | Start | End | Temporal Resolution | Size (TB) | Links |
| --- | --- | --- | --- | --- | --- |
| [GBR1 Biogeochemistry and Sediments v3.2 NRT (`GBR1_H2p0_B3p2_Cfur_Dnrt`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/85241b4c-4106-4a9d-992b-a77ee8c615ff)<br/> WITHDRAWN February 2020 due to abnormally high/unrealistic Chlorophyll-a levels on the shelf edge and reef matrix | 2019-10-16 | 2024-01-16 | daily | 7.2 TB | Best alternative is [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |
| [GBR1 Biogeochemistry and Sediments v1.0 (v924) NRT](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/84cecc61-612f-40d1-9e14-a7515fffe801) | 2014-12 | 2019-11 | daily | 5.6 TB | Best alternative is [`GBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/12aa09af-23a1-4174-8e21-f0c5515b2b18) |
| [GBR1 Hydrodynamics v1.71 (`GBR1_H1p71`)](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/97fc0051-58b7-4e14-84aa-50251385084a) | 2014-12 | 2016-04 | hourly | 2.2 TB | Superseded by [`GBR1_H2p0`](https://marlin.csiro.au/geonetwork/srv/eng/catalog.search#/metadata/0ce4f380-ac99-46d5-a327-571bd20a0478) |



# Accessing GBR4 and GBR1 Model Results

## NCI THREDDS Catalog and Query Endpoints

We recommend that researchers access these datasets via the [NCI’s THREDDS Server](https://nci.org.au/our-services/data-services#THREDDS), which supports a number of standard HTTP data-query protocols, including [OPenDAP](https://en.wikipedia.org/wiki/OPeNDAP), [Web Map Service](https://www.ogc.org/standards/wms) with [netCDF Extensions](https://reading-escience-centre.github.io/ncwms/), and [Web Coverage Service (WCS)](https://www.ogc.org/standards/wcs/). It is also possible to download the individual results files from this service, but we do not recommend that approach, as some of these datasets are very large (10s of TB). It is much more efficient to query just the subset of data you need!

<div style="background-color: var(--ereefs-status-info); max-width: 80%; margin: 1em auto 1em auto; padding: 1em;">
You can browse the available eReefs datasets in the NCI THREDDS catalog at:
<a href="https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html" target="_blank">https://thredds.nci.org.au/thredds/catalog/catalogs/fx3/catalog.html</a>
</div>

For each dataset, the THREDDS catalog exposes both the individual NetCDF files and a time-based aggregation that allows the entire dataset to be queried from a single URL. See the tables below for links.

## NCI High Performance Compute

Researchers with existing high-performance compute allocations on the NCI may apply for access to the [fx3 project](https://my.nci.org.au/mancini/project/fx3) if you wish to use the eReefs model results dataset files in your HPC workflows on Gadi or from NCI Nirin Cloud servers. Please refer to the [NCI User Guides](https://opus.nci.org.au/spaces/Help/pages/114885007/3.1+Gadi+and+ARE) for detailed instructions.

## eReefs Tools and Tutorials

The eReefs platform includes a number of tools designed to help you access and use these datasets:

- The GBR4 and GBR1 model grids and current results datasets can be browsed, displayed, queried and animated via the [eReefs Data Explorer](https://portal.ereefs.info/map).
- The [emsarray python library](/outputs/open-source-software#csiro-emsarray) understands the curvilinear grids used for GBR4 and GBR1 model results and can be used to query the datasets from the NCI THREDDS server without needing to download them.   Detailed examples of how to use this librray to subset, plot and animate eReefs marine model results are [available as Jupyter notebooks](https://github.com/eReefs/ereefs-data-access-notebooks).
- The [eReefs data extraction tool](https://extraction.ereefs.aims.gov.au/) can be used to download environmental conditions at research sites on the Great Barrier Reef from the GBR4 and GBR1 model results.
- A [growing number of tutorials](https://open-aims.github.io/ereefs-tutorials/) explain how to work with this data in both Python and R.

# Variables in GBR4 and GBR1 Datasets

## Grid Dimensions and Coordinates

The GBR4 and GBR1 model results are all published as NetCDF files which comply with the [Climate and Forecasting Metadata Conventions](https://cfconventions.org/).

The published datasets all use the EMS Simple Results Geometry Convention, which uses the following NetCDF dimensions:

| Dimension Variable | Description |
|--------------------|-------------|
| `i` | x-axis for the grid.   This is an index for where a grid cell is positioned outward from the Queensland coast.  It starts at 0 for grid cells furthest inland and gets higher as you move offshore. |
| `j` |	y-axis for the grid.   This is also an index which indicates where a grid cell is positioned along the Queensland coast.  It starts at 0 for the most southward cells in the grid, and gets higher as you move northward towards Cape York. |
| `k` | z-axis for the grid cells that occur in the water column.   This starts at 0 at the seabed, and gets higher as you move toward the sea-surface. |
| `k_sed` | z-axis for the grid cells that occur in the sediment layers on the sea floor. This starts at 0 at the bedrock, and gets higher as you move towards the sea-bed (i.e. k=0 for the water column) |
| `t` | This is the time index.   It starts at 0 for the earliest timestep in the dataset, and increases from there. |


Each dataset will always contain a matching set of coordinate variables, which can be used to translate the NetCDF dimension indices into real-world coordinate systems:

| Coordinate Variable | Related Dimension(s) | Description |
|---------------------|----------------------|-------------|
| `longitude` | `i,j` | The longitude in decimal degrees-east of the centre of the grid cell in the `(i, j)` position. |
| `latitude` | `i,j` | The latitude in decimal degrees-north of the centre of the grid cell in the `(i, j)` position. |
| `botz` | `i,j` | The depth of the sea-bed below the mean astronomical tide in metres at the horizontal grid cells in the `(i, j)` position. |
| `zc` | `k` | The elevation in metres of the centre of any water-column grid cell with z-axis index `k` relative to the mean astronomical tide line (a.k.a. sea level). Positive values are above sea level, and negative values (almost all) are below  sea level. |
| `zc_sed` | `k_sed` | The elevation in metres of the centre of a sediment grid-cell at z-axis index `k_sed` relative to the location of the sea-floor, which has `zc_sed=0`. Negative values indicate distance below the sea-floor. |
| `time` | `t` | The time that timestamp `t` represents in the simulation, given as days since 1990-01-01 00:00:00 +10 |


<div style="margin: 1em auto 1em auto; text-align: center;">
    <figure style="display: inline-block; max-width: 300px; text-align: right; margin-right: 1em;" >
        <img src="/assets/images/datasets/gbr4_grid_coordinates.png" title="GBR4 horizontal grid dimensions and coordinates" alt="Visualisation of the horizontal GBR4 model grid indixes (i, j) compared to the real-world spatial coordinates (longitude, latitude)">
        <figcaption>GBR4 horizontal grid dimensions and coordinates</figcaption>
    </figure>
    <figure style="display: inline-block; max-width: 300px; text-align: left; margin-left: 1em;" >
        <img src="/assets/images/datasets/gbr1_grid_coordinates.png" title="GBR1 horizontal grid dimensions and coordinates" alt="Visualisation of the horizontal GBR1 model grid indixes (i, j) compared to the real-world spatial coordinates (longitude, latitude)">
        <figcaption>GBR1 horizontal grid dimensions and coordinates</figcaption>
    </figure>
</div>
<div style="clear: both; max-width: 75%; margin-left: auto; margin-right: auto;">
    <figure>
        <img src="/assets/images/datasets/gbr4_gbr1_depths_diagram.png" title="Vertical Dimensions of GBR4 and GBR1" alt="Diagram of the GBR4 and GBR1 depth dimensions k and k_sed and the related coordinate variables zc and zc_sed and how both relate to the seabed and sea surface">
        <figcaption>Vertical Dimensions of GBR4 and GBR1 (not to scale!)</figcaption>
    </figure>
</div>

When you are working with these datasets, you will need to ensure your code properly translates the grid-cell-index dimensions `(i, j, k, t)` or `(i, j, k_sed, t)` which are used to extract the data-values to real-world coordinates `(longitude, latitude, depth, time)` before visualising the data or combining the eReefs model results with other datasets.

The [emsarray python library](https://emsarray.readthedocs.io/) has been created especially to help with this translation step: it supports working with data both grid and world coordinates, and greatly simplifies working with eReefs regional model results datasets.


## BGC Data Variable Definitions

All other variables which are present in the eReefs Marine Model Results files are data variables which contain the results of the model calculations.

The Biogeochemistry and Sediments model results datasets may include several *hundred* data variables! For definitions of what each of these variables represents, you can refer to:

- The Biogeochemical Scientific Description for version `B3p0` of the model.  This was published at [Geoscientific Model Development](https://gmd.copernicus.org/articles/13/4503/2020/gmd-13-4503-2020.html) which contains an assessment of an eReefs configuration.
- For additional details, especially definitions of diagnostic variables and simulated observations (true colour, Secchi depth etc.) as well as processes added to the model since 1 January 2020, please see [EMSmanual_afterGMDarticle8Jan25](https://research.csiro.au/cem/wp-content/uploads/sites/194/2025/01/EMSmanual_afterGMDarticle8Jan25.pdf).
- The `puv__parameter` attribute from the netCDF metadata for each variable. This attribute is present in recent datasets (`GBR4_H4p0` and later), and takes the form of a URL for a formal vocabulary record, e.g. <http://vocab.nerc.ac.uk/collection/P01/current/ARGTMOD1/>.  You can open these links in a browser to see a description and other information about the variable, and they also support content negotiation for machine-readable formats like JSON-LD, so can be used to look up variable level metadata from other software. Please see the [NERC Vocabulary Server documentation](https://vocab.nerc.ac.uk/) for more information about these vocabulary terms.

**A note on sediment variables:**

Many BGC dataset variables are calculated for the both the water column and for sediment.

- The data variable for cells in the water column will have `(i, j, k, t)` dimensions (`zc` as a depth coordinate)
- The data variable for cells in sediment layers will have `_sed` as a suffix on the variable name and `(i, j, k_sed, t)` as dimensions (`zc_sed` as a depth coordinate)


## Key Data Variables by Field of Research

If you are planning on using the eReefs GBR4 or GBR1 datasets in your own research, these lists should help you identify the most important data variables for your field.

### Water Quality

<figure class="right">
    <img src="/assets/images/datasets/gbr4_vars_water_quality_Chl_a_sum.png" title="GBR4 Water Quality variable plots: Chl_a_sum" alt="GBR4 Water Quality variable (Chl_a_sum) plotted horizontally near the sea surface and vertically along a transect offshore from central Queensland">
    <figcaption>GBR4 Water Quality variable: Total Chlorophyll (<code>Chl_a_sum</code>) from the <code>GBR4_H2p0_B3p1_Cq3b_Dhnd</code> dataset</figcaption>
</figure>

| Concept | Data Variable | Units |
|---------|---------------|-------|
| Total Suspended Solids | `tss`, `tss_sed` | <nobr>kg m<sup>-3</sup></nobr> |
| [Total Chlorophyll](http://vocab.nerc.ac.uk/collection/P01/current/CPHLMOD1/) | `Chl_a_sum` | <nobr>mg Chl m<sup>-3</sup></nobr> |
| [Nitrate](http://vocab.nerc.ac.uk/collection/P01/current/NTRZMOD1/) | `NO3`, `NO3_sed` |<nobr>mg N m<sup>-3</sup></nobr> |
| [Secchi from 488nm](http://vocab.nerc.ac.uk/collection/P01/current/ADEPMP01/) | `Secchi` | <nobr>m</nobr> |
| [Temperature](http://vocab.nerc.ac.uk/collection/P01/current/TEMPMP01/) | `temp` | <nobr>degrees C</nobr> |
| [Salinity](http://vocab.nerc.ac.uk/collection/P01/current/PSLTMP01/) | `salt` | <nobr>PSU</nobr> |

<div style="clear: both"></div>
- [Load water quality variables in the eReefs Data Explorer](https://portal.ereefs.info/map?time=2026-03-04T00:51:10.888Z&bbox=137.06543,-28.57487,172.22168,-9.55742&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23temp;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23temp;label=Temperature;colorscalerange=22.29,30.43;styles=default-scalar/div-BuRd2;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23salt;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23salt;label=Salinity;colorscalerange=29.86,35.8;styles=default-scalar/div-PiYG-inv;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Chl_a_sum;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Chl_a_sum;label=Total%20Chlorophyll;colorscalerange=0.004855,0.7068;styles=default-scalar/psu-viridis;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23NO3;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23NO3;label=Nitrate;colorscalerange=0,95.62;styles=default-scalar/seq-BuPu;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23tss;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23tss;label=Total%20Suspended%20Sediments;colorscalerange=0,0.1734;styles=default-scalar/seq-YlOrBr;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Secchi;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Secchi;label=Secchi%20from%20488%20nm;colorscalerange=3.413,42.03;styles=default-scalar/seq-BlueHeat-inv)
- [Learn more about water quality measures in eReefs](https://ereefs.aims.gov.au/gbr4/bgc/baseline/chl-a-sum_din_efi/)
- Learn how to <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-model-results-with-matplotlib-plotipynb" target="_blank">plot eReefs data on a map</a> and <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-transects-transectipynb" target="_blank">plot an eReefs transect</a>

### Carbon Chemistry

<figure class="left">
    <img src="/assets/images/datasets/gbr4_vars_carbon_chemistry_DIC.png" title="GBR4 Carbon Chemistry variable plots: DIC" alt="GBR4 Carbon Chemistry variable (CDIC) plotted horizontally near the sea surface and vertically along a transect offshore from central Queensland">
    <figcaption>GBR4 Carbon Chemistry variable: Dissolved Inorganic Carbon (<code>DIC</code>) from the <code>GBR4_H2p0_B3p1_Cq3b_Dhnd</code> dataset</figcaption>
</figure>

| Concept | Data Variable | Units |
|---------|---------------|-------|
| [Dissolved Inorganic Carbon](http://vocab.nerc.ac.uk/collection/P01/current/CINCMOD1/) | `DIC` | <nobr>mg C m<sup>-3</sup> |
| [Total Alkalinity](http://vocab.nerc.ac.uk/collection/P01/current/ALKYMP01/) | `alk` | <nobr>mmol m<sup>-3</sup> |
| [PH](http://vocab.nerc.ac.uk/collection/P01/current/PHTLMP01/) | `PH` | <nobr>log(mM) |
| [Aragonite Saturation State](http://vocab.nerc.ac.uk/collection/P01/current/ARGTMOD1/) | `omega_ar` | |
| [Temperature](http://vocab.nerc.ac.uk/collection/P01/current/TEMPMP01/) | `temp` | <nobr>degrees C |
| [Salinity](http://vocab.nerc.ac.uk/collection/P01/current/PSLTMP01/) | `salt` | <nobr>PSU |

<div style="clear: both"></div>
- [Load Carbon Chemistry variables in the eReefs Data Explorer](https://portal.ereefs.info/map?time=2026-03-04T00:51:10.888Z&bbox=137.06543,-28.57487,172.22168,-9.55742&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23DIC;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23DIC;label=Dissolved%20Inorganic%20Carbon;colorscalerange=22450,25040;styles=default-scalar/seq-cubeYF;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23alk;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23alk;label=Total%20Alkalinity;colorscalerange=2190,2349;styles=default-scalar/anu_wald_bluescale20;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23PH;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23PH;label=PH;colorscalerange=7.681,8.121;styles=default-scalar/div-BuRd-inv;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23omega_ar;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23omega_ar;label=Aragonite%20saturation%20state;colorscalerange=1.419,3.803;styles=default-scalar/seq-YlOrRd;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23temp;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23temp;label=Temperature;colorscalerange=21.89,31.02;styles=default-scalar/div-BuRd2;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23salt;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23salt;label=Salinity;colorscalerange=33.7,36.29;styles=default-scalar/div-PiYG-inv;z=-0.5)
- [Learn more about Water Chemistry measures in eReefs](https://ereefs.aims.gov.au/gbr4/bgc/baseline/alk_ph_omega-ar/)
- Learn how to <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-model-results-with-matplotlib-plotipynb" target="_blank">plot eReefs data on a map</a> and <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-transects-transectipynb" target="_blank">plot an eReefs transect</a>

### Benthic Plants and Corals

All of the benthic plant and coral data variables are 2D!  They can only occur on the seabed, so they do not have a depth dimension in the dataset. To work out the depth for these plants and corals occur at, you should look up the value of the `botz` coordinate variable at the same `(i,j)` grid indices.

<figure class="right">
    <img src="/assets/images/datasets/gbr4_vars_benthic_2D.png" title="GBR4 Benthic Plants and Corals variable plots" alt="GBR4 Benthic Plants and Corals variables CS_N, SGH_N, and SGD_N plotted on a map">
    <figcaption>GBR4 Benthic Plans and Corals Variables: Coral Symbiont Nitrogen (<code>CS_N</code>), Halophilia Seagrass Nitrogen (<code>SGH_N</code>) and Deep Seagrass Nitrogen (<code>SGD_N</code>) from the <code>GBR4_H2p0_B3p1_Cq3b_Dhnd</code> dataset</figcaption>
</figure>

| Concept | Data Variable | Units |
|---------|---------------|-------|
| [Coral Host Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NB9623MO/) | `CH_N` | <nobr>g N m<sup>-2</sup></nobr> |
| [Coral Symbiont Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NBZOXAM1/) | `CS_N` | <nobr>mg N m<sup>-2</sup></nobr> |
| [Seagrass Zostera spp. Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NB9622MO/) | `SG_N` | <nobr>g N m<sup>-2</sup></nobr> |
| [Seagrass Halophila deciphens Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NB9625MO/) | `SGD_N` | <nobr>g N m<sup>-2</sup></nobr> |
| [Seagrass Halophila ovalis Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NB9621MO/) | `SGH_N` | <nobr>g N m<sup>-2</sup></nobr> |
| [Macroalgae Nitrogen](http://vocab.nerc.ac.uk/collection/P01/current/NB9624MO/) | `MA_N` | <nobr>g N m<sup>-2</sup></nobr> |

<div style="clear: both"></div>
- [Load Benthic Plants and Corals variables in the eReefs Data Explorer](https://portal.ereefs.info/map?time=2026-03-04T01:20:25.397Z&bbox=114.8291,-35.92464,185.1416,1.93323&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23CH_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23CH_N;label=Coral%20host%20Nitrogen;colorscalerange=1e-12,0.1481;styles=default-scalar/psu-plasma&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23CS_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23CS_N;label=Coral%20symbiont%20Nitrogen;colorscalerange=1e-12,5.593;styles=default-scalar/psu-plasma&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SG_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SG_N;label=Seagrass%20Zostera%20spp.%20Nitrogen;colorscalerange=9.5e-13,1.05e-12;styles=default-scalar/psu-inferno&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SGD_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SGD_N;label=Seagrass%20Halophila%20deciphens%20Nitrogen;colorscalerange=1e-12,0.01896;styles=default-scalar/psu-inferno&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SGH_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23SGH_N;label=Seagrass%20Halophila%20ovalis%20Nitrogen;colorscalerange=0.002632,0.02881;styles=default-scalar/psu-inferno&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23MA_N;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23MA_N;label=Macroalgae%20Nitrogen;colorscalerange=9.992e-13,0.000002422;styles=default-scalar/div-BrBG)
- [Learn more about macroalgae, seagrass and corals in eReefs](https://ereefs.aims.gov.au/gbr4/bgc/baseline/cs-n_cs-chl_ch-n/)
- Learn how to <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-model-results-with-matplotlib-plotipynb" target="_blank">plot eReefs data variables on a map</a>

### Optics and Remote Sensing

Got Clouds?   The eReefs Biogeochemistry and Sediments model results include variables for simulated satellite observations, including MODIS, VIIRS and the Sentinel-3 Ocean and Land Colour Instrument (OLCI).

**Warning:** Several of the optical variables have changed name in the newest version of the model (`B4p2`).  Make sure you use the names that match the version of the dataset you are working with

| Concept | Data Variable | Units |
|---------|---------------|-------|
| **Red:** Simulated Sentinel-3 OLCI Remote Sensing Reflectance Band 08 (665nm).<br/>Used for Chl, sediment, vegetation | B3p1: `R_665`<br/>B4p2: `Sentinel_3B_B8` | <nobr>sr<sup>-1</sup></nobr> |
| **Green:** Simulated Sentinel-3 OLCI Remote Sensing Reflectance Band 06 (560nm).<br/>Used for Chlorophyll reference | B3p1: `R_560`<br/>B4p2: `Sentinel_3B_B6` | <nobr>sr<sup>-1</sup></nobr> |
| **Blue:** Simulated Sentinel-3 OLCI Remote Sensing Reflectance Band 04 (490nm).<br/>Used for high Chl, other pigments | B3p1: `R_490`<br/>B4p2: `Sentinel_3B_B4` | <nobr>sr<sup>-1</sup></nobr> |

<figure class="centre">
    <img src="/assets/images/datasets/gbr4_vars_rs_true_colour.png" title="GBR4 Simulated Sentinel-3 OLCI True Colour" alt="A plot of which combines data from GBR4 Simulated Sentinel-3 OLCI Remote Sensing Reflectance data variables at red, green and blue wavelengths side-by-side with a True colour image from a real Sentintel-3 overpass on the same date">
    <figcaption>GBR4 Optics and Remote Sensing Variables: Simulated Sentinel-3A True Colour from the <code>GBR4_H2p0_B3p1_Cq3b_Dhnd</code> dataset</figcaption>
</figure>

<div style="clear: both"></div>
- [Load Optics and Remote Sensing variables in the eReefs Data Explorer](https://portal.ereefs.info/map?time=2022-03-03T02:00:00.000Z&bbox=114.8291,-35.92464,185.1416,1.93323&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B8;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B8;label=Simulated%20Sentinel-3B%20OLCI%20Band%2008%20(centre%20665nm)%20used%20for%20Chl%20(2nd%20Chl%20abs.%20max.)%2C%20sediment%2C%20yellow%20substance%2Fvegetation;colorscalerange=0.00005449,0.009573;styles=default-scalar/seq-BkRd&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B6;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B6;label=Simulated%20Sentinel-3B%20OLCI%20Band%2006%20(centre%20560nm)%20used%20for%20Chlorophyll%20reference%20(Chl%20minimum);colorscalerange=0.0006227,0.01334;styles=default-scalar/seq-BkGn&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B4;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_B4p2_Cq5b_Dhnd%23Sentinel_3B_B4;label=Simulated%20Sentinel-3B%20OLCI%20Band%2004%20(centre%20490nm)%20used%20for%20high%20Chl%2C%20other%20pigments;colorscalerange=0.003437,0.01243;styles=default-scalar/seq-BkBu&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fwww.cmar.csiro.au%2Fgeoserver%2Frest%2Fworkspaces%2Fereefs%2Fcoverages%2FSentinel-3B-OLCI-GBR.json%23Sentinel-3B-OLCI-GBR;id=https%3A%2F%2Fwww.cmar.csiro.au%2Fgeoserver%2Frest%2Fworkspaces%2Fereefs%2Fcoverages%2FSentinel-3B-OLCI-GBR.json%23Sentinel-3B-OLCI-GBR;label=Sentinel-3B%20-%20OLCI%20-%20True%20Colour%20Composites;colorscalerange=undefined;styles=)
- [Learn more about simulated true colour in eReefs](https://ereefs.aims.gov.au/gbr4/bgc/baseline/true-colour/)
- Learn how to <a href="https://github.com/eReefs/ereefs-data-access-notebooks#simulated-true-colour-from-ereefs-optical-model-variables-true-colouripynb" target="_blank">plot simulated True Colour with eReefs data</a>

### Hydrodynamic Velocity Fields

We recommend using GBR1 Hydrodynamics datasets for working with velocity fields.  For even better results, you may need to nest a higher-resolution model inside GBR1. (Talk to us about [RECOM](/research/relocatable-fine-scale-coastal-models)!)


<figure class="right">
    <img src="/assets/images/datasets/gbr1_vars_velocity_fields.png" title="GBR Velocity Fields Plots" alt="Plots of GBR1 Sea-surface wind, near-surface sea-water velocity and deep sea-water velocity overlaid on temperature at the same depth">
    <figcaption>GBR1 Velocity Field Variables: Sea surface wind <code>(wspeed_u:wspeed_v)</code>, and Sea water velocity <code>(u:v)</code> at -0.5m and -31m from the <code>GBR1_H2p0</code> dataset</figcaption>
</figure>

| Concept | Data Variable | Units |
|---------|---------------|-------|
| **Sea Water Velocity:** |
| - [Eastward Current](http://vocab.nerc.ac.uk/collection/P01/current/LCEWMP01/) | `u` | <nobr>ms<sup>-1</sup></nobr> |
| - [Northward Current](http://vocab.nerc.ac.uk/collection/P01/current/LCNSMP01/) | `v` | <nobr>ms<sup>-1</sup></nobr> |
| - [Vertical Current](http://vocab.nerc.ac.uk/collection/P01/current/LRZAMP01/) | `w` | <nobr>ms<sup>-1</sup></nobr> |
| **Sea Surface Wind:** |
| - [Eastward Wind](http://vocab.nerc.ac.uk/collection/P01/current/ESEWMPXX/) | `wspeed_u` | <nobr>ms<sup>-1</sup></nobr> |
| - [Northward Wind](http://vocab.nerc.ac.uk/collection/P01/current/ESNSMPXX/) | `wspeed_v` | <nobr>ms<sup>-1</sup></nobr> |

<div style="clear: both"></div>
- [Load velocity fields in the eReefs Data Explorer](https://portal.ereefs.info/map?time=2022-03-03T02:00:00.000Z&bbox=114.8291,-35.92464,185.1416,1.93323&basemap=streetmap&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_u%3Awspeed_v-group;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_u%3Awspeed_v-group;label=wind;colorscalerange=3.493,13.2;styles=default-vector/anu_fmc_rdylbu_9-inv&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u%3Av-group;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u%3Av-group;label=sea_water_velocity;colorscalerange=0.02442,1.149;styles=default-vector/div-Spectral-inv;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23v;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23v;label=Northward%20current;colorscalerange=-0.9731,0.4494;styles=default-scalar/seq-YlGnBu;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23u;label=Eastward%20current;colorscalerange=-0.4179,0.9012;styles=default-scalar/seq-YlGnBu;z=-0.5&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_u;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_u;label=Eastward%20wind;colorscalerange=-9.073,2.024;styles=default-scalar/seq-BuPu&dbl_layer=url=https://data.ereefs.info//dataset/item?uri=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_v;id=https%3A%2F%2Fthredds.nci.org.au%2Fthredds%2Fcatalog%2Fcatalogs%2Ffx3%2Fcatalog.xml%3Fdataset%3DGBR4_H4p0_ABARRAr2_OBRAN2020_FG2Gv3_Dhnd%23wspeed_v;label=Northward%20wind;colorscalerange=-13.05,4.109;styles=default-scalar/seq-BuPu)
- Learn more about [Sea water velocity currents in eReefs](https://ereefs.aims.gov.au/gbr1/current-multi-depth/), and [Current magnitude in eReefs](https://ereefs.aims.gov.au/gbr1/current-magnitude-average/)
- Learn how to <a href="https://github.com/eReefs/ereefs-data-access-notebooks#plotting-ereefs-model-vector-results-with-matplotlib-vectorsipynb" target="_blank">plot eReefs velocity fields on a map</a>
