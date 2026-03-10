---
agency: AIMS
caption: R package to facilitate extracting and visualising eReefs model output data
categories:
  - data-access-library
  - open-source-software
ereefs_ip: false
fa-icon: code
title: eReefs R Package
---

{% assign output = page %}
{% include output-tile.md %}

An R package has been created to help R users to access and visualise eReefs marine model outputs directly from NCI servers. The package contains a few useful functions to make accessing eReefs and other [CSIRO-EMS](/outputs/open-source-software/csiro-ems) output files easier, and is available through <https://github.com/open-AIMS/ereefs>, with documentation available at <https://open-aims.github.io/ereefs/>

<div style="clear: both;"></div>

# Use Cases

- Extracting time-series of simulated water quality at your monitoring stations, to use together with observational data.
- Visualising a recent event in your area as an animated map.
- Extracting simulated data along a specified transect, such as a ship track.
- Extracting a vertical profile at a specified location and time.
- Extracting a vertical slice at a specified location and time.

# Installation instructions

Copy and paste the following lines into R:

```R
if (!requireNamespace("remotes")) {
  install.packages("remotes")
}
remotes::install_github("open-aims/ereefs")
```

# Featured Functions

## Extract time-series from eReefs netcdf files

[get_ereefs_ts()](https://open-aims.github.io/ereefs/reference/get_ereefs_ts.html)
[get_ereefs_depth_integrated_ts ()](https://open-aims.github.io/ereefs/reference/get_ereefs_depth_integrated_ts.html)
[get_ereefs_depth_specified_ts()](https://open-aims.github.io/ereefs/reference/get_ereefs_depth_specified_ts.html)
[get_ereefs_bottom_ts()](https://open-aims.github.io/ereefs/reference/get_ereefs_bottom_ts.html)

## Produce maps or animations of eReefs model outputs

[map_ereefs()](https://open-aims.github.io/ereefs/reference/map_ereefs.html)
[map_ereefs_movie()](https://open-aims.github.io/ereefs/reference/map_ereefs_movie.html)
[plot_map()](https://open-aims.github.io/ereefs/reference/plot_map.html)

## Calculate optical plume class from modelled surface reflectances

[plume_class()](https://open-aims.github.io/ereefs/reference/plume_class.html)

## Extract profiles and vertical slices

[get_ereefs_profile()](https://open-aims.github.io/ereefs/reference/plot_ereefs_profile.html)
[get_ereefs_slice()](https://open-aims.github.io/ereefs/reference/plot_ereefs_zvt.html)

## Plot profiles

[plot_ereefs_profile()](https://open-aims.github.io/ereefs/reference/plot_ereefs_profile.html)
[plot_ereefs_zvt()](https://open-aims.github.io/ereefs/reference/plot_ereefs_zvt.html)

## Convert outputs to GIS formats

[poly2sp()](https://open-aims.github.io/ereefs/reference/poly2sp.html)
[sp2raster()](https://open-aims.github.io/ereefs/reference/sp2raster.html)