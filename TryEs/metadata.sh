export ESADDR=localhost:9200

curl $ESADDR/ls?pretty

curl $ESADDR/_stats?pretty


# Update index mappings
curl -XPUT $ESADDR/ls?pretty -d '{
  "mappings": {
    "user": {
      "properties": {
        "name": {
          "enabled": false
        },
        "name_en": {
          "enabled": false
        }
      }
    }
  }
}'
curl $ESADDR/ls/user/_mapping?pretty
Output:
{
  "ls" : {
    "mappings" : {
      "user" : {
        "properties" : {
          "name" : {
            "type" : "object",
            "enabled" : false
          },
          "name_en" : {
            "type" : "object",
            "enabled" : false
          }
        }
      }
    }
  }
}

# Update index mappings
curl -XPUT $ESADDR/ls?pretty -d '{
  "mappings": {
    "user": {
      "properties": {
        "name": {
          "type" : "keyword"
        },
        "name_en": {
          "type" : "keyword"
        }
      }
    }
  }
}'


curl -XGET '$ESADDR/_cat'

curl -XGET $ESADDR/_cat/shards?v
curl -XGET $ESADDR/_cat/nodes?v


# Check metadata
curl -XGET 'localhost:9200/_cluster/state?filter_path=metadata.indices.ls.mappings&pretty'
equals to
curl -XGET 'localhost:9200/ls/_mappings?pretty'
