# GWL-reconstr
Modeling files and r scripts used to generate figures for Past Groundwater Drought in the North American Cordillera (Hunter et al.), submitted to Geophysical Research Letters (under review July 2022)

There are two branches in this repository. Modeling files are found in the reconstruction-model-files branch, and figure scripts are found in the figure-r-scripts branch.

Reconstruction modeling:

Reconstruction modeling was conducted in the program pcReg (multiple linear regression software). Included for each reconstruction (CBCI, SBCI (streamflow-driven), SBCI (high-elevation recharge-driven), and SC) are the modeling files for the common period models:

input files: the site-averaged groundwater level timeseries (sitename_GWLs) and the tree ring chronologies in the climate footprint (sitename_cfp)

log files: the settings used in the pcReg model (sitename_log)

the output files: the pcReg output showing the selected tree ring records (predictors) & modeling statistics

the final reddened reconstruction: the pcReg output file showing the reconstructed groundwater levels for each year (sitename_reconstr)

Figure scripts:

