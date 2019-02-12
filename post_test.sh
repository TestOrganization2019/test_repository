chmod 777 -R ~/project
sleep 5s
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"/home/circleci/project/report_cucumber.json" https://xray.cloud.xpand-it.com/api/v1/import/execution/cucumber
