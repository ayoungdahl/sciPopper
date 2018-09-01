#!/bin/bash
set -ex
cd ../..
# [wf] download business data
Rscript CODE/11_business_download.R
# [wf] download crime data
Rscript CODE/12_crime_download.R
# [wf] download food inspection data
Rscript CODE/13_food_inspection_download.R
# [wf] download garbage data
Rscript CODE/14_garbage_download.R
# [wf] download sanitation data
Rscript CODE/15_sanitation_download.R
