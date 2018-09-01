#!/bin/bash
set -ex
cd ../..
# [wf] activate sciunit
#source sciunit/bin/activate
PATH=~/.local/bin:$PATH

sciunit open fie
# [wf] run and capture model execution
sciunit exec Rscript CODE/30_glmnet_model.R

sciunit exec Rscript CODE/30_random_forest_model.R

#deactivate
