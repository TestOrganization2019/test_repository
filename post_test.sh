chmod 777 -R ~/project

token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "C19C6BF814F7442EA0DC15A86A3A2800","client_secret": "2354aedeaa47f729fbf0ce4c0b16f3b3a1624f759c7e492ad01339c6b3deb179" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')
sleep 5s


curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"/home/circleci/project/report_cucumber.json" https://xray.cloud.xpand-it.com/api/v1/import/execution/cucumber
