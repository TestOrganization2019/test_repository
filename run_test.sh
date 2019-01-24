#!/bin/bash

# set Python Path
export PYTHONPATH=.

#run behave tests

touch /home/circleci/project/xray_test.txt

behave "/home/circleci/project/xray_test/01_basic.feature"
echo -e "Completed feature : 01_basic.feature"
