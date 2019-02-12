chmod 777 -R ~/project

token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "7CD4B7151C0049AE9E9D49DDC7C8174E","client_secret": "e8f8a5f710f9425c8399933db53424f683b66d6b3dc46bcb67b8abe9b7915683" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')

curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"/home/circleci/project/report_cucumber.json" https://xray.cloud.xpand-it.com/api/v1/import/execution/cucumber
