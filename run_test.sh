#!/bin/bash

# set Python Path
export PYTHONPATH=.
sleep 2s
token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "C19C6BF814F7442EA0DC15A86A3A2800","client_secret": "2354aedeaa47f729fbf0ce4c0b16f3b3a1624f759c7e492ad01339c6b3deb179" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')
sleep 5s
curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token"  "https://xray.cloud.xpand-it.com/api/v1/export/cucumber?keys=DP-8" >cucumber_scenario
sleep 5s
unzip cucumber_scenario
sleep 1s
python3 remove_extra_scenario.py
sleep 1s
behave xray_test/updated_feature_file.feature --format=cucumber_json:PrettyCucumberJSONFormatter -o report_cucumber.json
sleep 3s

#run behave tests
#touch /home/circleci/project/xray_test.txt
#behave "/home/circleci/project/xray_test/01_basic.feature"
#echo -e "Completed feature : 01_basic.feature"
