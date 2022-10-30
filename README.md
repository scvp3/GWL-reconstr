# GWL-reconstr
Modeling files and r scripts used to generate figures for Past Groundwater Drought in the North American Cordillera (Hunter et al.), submitted to Geophysical Research Letters (under review July 2022)

There are two folders in this repository. Modeling files are found in the model files folder, and figure scripts are found in thefigure scripts folder.

Model files folder:

Reconstruction modeling was conducted in the program pcReg (multiple linear regression software). Included for each reconstruction (CBCI, SBCI (streamflow-driven), SBCI (high-elevation recharge-driven), and SC) are the modeling files for the common period models:

input files: the site-averaged groundwater level timeseries (sitename_GWLs) and the tree ring chronologies in the climate footprint (sitename_cfp)

log files: the settings used in the pcReg model (sitename_log)

the output files: the pcReg output showing the selected tree ring records (predictors) & modeling statistics

the final reddened reconstructed groundwater levels: the pcReg output file showing the reconstructed groundwater levels for each year (sitename_reconstr)

Figure scripts folder:

Example script for generating a daily hysteresis plot, used to classify wells based on the dominant recharge mechanism (single-hysteresis_plot_daily.r)

Example script for generating a cross-correlation (ccf) plot, used to determine correlations between groundwater level reconstructions and teleconnection reconstructions (ccf_teleconnections.r)

Example workbook for the regime shift test, used for detecting regime shifts in the groundwater level reconstructions and the historical streamflow records (Regime shift test workbook.xlsm)

