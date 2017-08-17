export ESADDR=localhost:9200

curl $ESADDR/ls/user?pretty -d '{
  "name" : "刘顺",
  "name_en" : "LIU Shun"
}'

curl $ESADDR/ls/user/_mget?pretty -d '{
  "ids" : ["1", "2", "3", "4"]
}'

curl $ESADDR/ls/user/_search?pretty -d '{
  "query" : {
    "query_string" : {
      "query" : "LIU Shun"
    }
  }
}'

curl $ESADDR/ls/user/_search?pretty -d '{
  "from" : 0, "size" : 10,
  "query" : {
    "match_all" : {}
  }
}'


# Search Term
curl -XPOST $ESADDR/ls/user/_search?pretty -d '{
  "query": {
    "term" : { "name_en" : "" } 
  }
}
'
