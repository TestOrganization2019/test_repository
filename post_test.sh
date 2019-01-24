chmod 777 -R ~/project

token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "95691DBDF0EE4D6282732A12352FBDC0","client_secret": "6045bb969dfb48499a16957604e2feafe96baa05367049a91c61dcd5ad12a7fe" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')

curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"/home/circleci/project/report_cucumber.json" https://xray.cloud.xpand-it.com/api/v1/import/execution/cucumber
