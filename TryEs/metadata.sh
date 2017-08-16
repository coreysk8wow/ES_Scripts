export ESADDR=localhost:9200

curl $ESADDR/ls?pretty

curl $ESADDR/_stats?pretty
