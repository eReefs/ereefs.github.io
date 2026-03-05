---
agency: CSIRO
caption: Python library for working with GBR4, GBR1 and RECOM model results
category: software
fa-icon: code
feature: true
preview_image: /assets/images/products/CSIRO-emsarray-example.webp
preview_caption: |
    Example of plotted EMS model output rendered using emsarray
subcategory: ereefs_output
target_url: https://emsarray.readthedocs.io/en/stable/
title: CSIRO emsarray
---
CSIRO's *emsarray* library is an extension to the [xarray](https://docs.xarray.dev/en/stable/) Python Package that adds support for datasets with the CSIRO EMS geometry conventions, including the results of the eReefs GBR4 and GBR1 models with their curvilinear grids. It supports:
- one- or two-dimensional grids that use the [Climate and Forecasting (CF) metadata conventions](https://cfconventions.org/)
- staggered (structured) grids for EMS-SHOC  (i.e. eReefs GBR4, GBR1 and RECOM )
- unstructured grids for EMS-COMPAS
- (additional conventions via plugins)


*emsarray* can be used to:
- locate a geographic point within the dataset
- subset the dataset to a collection of points
- clip a dataset to a geographic region
- export the dataset geometry to alternate formats
- draw basic plots
- render basic animations

The *emsarray* library was created in 2021 as an *eReefs* deliverable, but is a generic tool which can be used with any EMS or similar datasets, not just the eReefs ones.   It is freely reusable under a a [BSD-3-clause Open Source Licence](https://github.com/csiro-coasts/emsarray/blob/main/LICENSE).

- *emsarray* documentation: <https://emsarray.readthedocs.io/en/stable/>
- *emsarray* source code: <https://github.com/csiro-coasts/emsarray>
- *emsarray* package repositories: [PyPi](https://pypi.org/project/emsarray/) or [CondaForge](https://anaconda.org/conda-forge/emsarray/)
