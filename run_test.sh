#!/bin/bash

# set Python Path
export PYTHONPATH=.

token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "7CD4B7151C0049AE9E9D49DDC7C8174E","client_secret": "e8f8a5f710f9425c8399933db53424f683b66d6b3dc46bcb67b8abe9b7915683" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')

curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token"  "https://xray.cloud.xpand-it.com/api/v1/export/cucumber?keys=DSP-14" >cucumber_scenario

unzip cucumber_scenario

python3 remove_extra_scenario.py

behave xray_test/updated_feature_file.feature --format=cucumber_json:PrettyCucumberJSONFormatter -o report_cucumber.json

echo -e "Completed feature : 01_basic.feature"

#run behave tests
#touch /home/circleci/project/xray_test.txt
#behave "/home/circleci/project/xray_test/01_basic.feature"
#echo -e "Completed feature : 01_basic.feature"
