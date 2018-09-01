#!/bin/bash
set -ex
cd ../..
# [wf] activate sciunit
#source sciunit/bin/activate
PATH=~/.local/bin:$PATH
# [wf] repeat preprocessing from sciunit repo

if [ ! -d $HOME/sciunit/fie ]; then
    unzip -d $HOME/sciunit fie.zip
fi


sciunit open fie
# [wf] repeat calculate violation matrix
sciunit repeat e1
# [wf] repeat calculate heat map values
sciunit repeat e2
# [wf] repeat generate model data
sciunit repeat e3

#deactivate
