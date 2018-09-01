#!/bin/bash
set -ex
cd ../..
# [wf] activate sciunit
#source sciunit/bin/activate
PATH=~/.local/bin:$PATH

sciunit open fie
# [wf] run and capture model execution
sciunit exec Rscript CODE/31_glmnet_model_evaluation.R

sciunit exec Rscript CODE/31_random_forest_evaluation.R

#deactivate

