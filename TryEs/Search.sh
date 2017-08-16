export ESADDR=localhost:9200

curl $ESADDR/ls/user?pretty -d '{
  "name" : "刘顺",
  "name_en" : "LIU Shun"
}'

curl $ESADDR/ls/user/_mget?pretty -d '{
  "ids" : ["1-6"]
}'

curl $ESADDR/ls/user/_search?pretty -d '{
  "query" : {
    "query_string" : {
      "query" : "tcr Adv",
      "operator"
    }
  }
}'

curl $ESADDR/ls/user/_search?pretty -d '{
  "from" : 0, "size" : 10,
  "query" : {
    "match_all" : {}
  }
}'
