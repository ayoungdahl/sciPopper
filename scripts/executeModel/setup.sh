#!/bin/bash
set -ex
cd ../..
# [wf] activate sciunit
#source sciunit/bin/activate
PATH=~/.local/bin:$PATH

if [ -d $HOME/sciunit/fie ]; then
    rm -r $HOME/sciunit/fie
fi

sciunit create fie
# [wf] install R packages
Rscript CODE/00_Startup.R
# [wf] run and capture preprocessing

sciunit exec Rscript CODE/21_calculate_violation_matrix.R

sciunit exec Rscript CODE/22_calculate_heat_map_values.R

sciunit exec Rscript CODE/23_generate_model_dat.R

#deactivate
