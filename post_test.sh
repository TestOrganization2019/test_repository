chmod 777 -R ~/project

echo export token=$(curl -H "Content-Type: application/json" -X POST --data '{ "client_id": "95691DBDF0EE4D6282732A12352FBDC0","client_secret": "6045bb969dfb48499a16957604e2feafe96baa05367049a91c61dcd5ad12a7fe" }'  https://xray.cloud.xpand-it.com/api/v1/authenticate| tr -d '"') >> $BASH_ENV
source $BASH_ENV

curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @ ~/project/report_cucumber.json https://xray.cloud.xpand-it.com/api/v1/import/execution/cucumber?projectKey=S

'curl -H "Content-Type: application/json" -H "Authorization: Bearer $token" --data @ ~/project/report_cucumber.json  "https://xray.cloud.xpand-it.com/api/v1/import/execution/junit?projectKey=DEM"'

/home/sachinrau/repository_xray/test_repository