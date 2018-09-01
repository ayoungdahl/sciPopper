#!/bin/bash
set -ex
cd ../../

# [wf] copy sciunit archive from user's home to popper repo

#source sciunit/bin/activate
PATH=~/.local/bin:$PATH

sciunit open fie
sciunit copy -n
cp -r $HOME/sciunit/fie.zip .

#deactivate
