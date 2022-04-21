# covid_forestfire
Sample code for running a Bayesian mixed-effect model with spatiotemporal autocorrelation. <br />
<br />
Using the code, we analyze the relationship between human mobility reduction during COVID-19 lockdowns and forest fire incidence in the Amazon regions of Bolivia, Brazil, Colombia, Ecuador, and Colombia. We control a set of confounders: precipitation, temperature, land use patterns, elevation, hemisphere, country (as a fixed effect), population density, and take into consideration the spatial and temporal autocorrelation of the forest fires. We include a time effect in the model to understand how lockdowns affected change in forest fires over time.<br />
<br />
Data used in this analysis are obtained from publicly accessible datasets. We prepare them on a per country state level.<br />
 <br />
- Visible Infrared Imaging Radiometer Suite (VIIRS): https://firms.modaps.eosdis.nasa.gov/ <br />
- Google COVID-19 Community Mobility Report: https://www.google.com/covid19/mobility/ <br />
- ERA5: Fifth generation of ECMWF atmospheric reanalyses of the global climate:https://developers.google.com/earth-engine/datasets/catalog/ECMWF_ERA5_DAILY <br />
- NASA-MODIS Terra (MCD12Q1): https://appeears.earthdatacloud.nasa.gov/ <br />
- NASADEM Merged DEM Global 1 arc second V001: https://developers.google.com/earth-engine/datasets/catalog/NASA_NASADEM_HGT_001 <br />
-Center For International Earth Science Information Network-CIESIN-Columbia University. Gridded Population of the World, Version 4 (GPWv4):https://sedac.ciesin.columbia.edu/data/set/gpw-v4-population-count-rev11 <br />
