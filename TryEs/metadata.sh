export ESADDR=localhost:9200

curl $ESADDR/ls?pretty

curl $ESADDR/_stats?pretty

curl -XPUT $ESADDR/ls -d '{
  "mappings": {
    "objectName": {
      "properties": {
        "data": {
          "enabled": false
        }
      }
    }
  }
}'
