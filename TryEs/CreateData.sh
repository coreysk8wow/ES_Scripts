export ESADDR=localhost:9200

curl 'localhost:9200/ls/user/1?pretty' -d '{
  "name" : "刘顺",
  "name_en" : "LIU Shun"
}'

curl 'localhost:9200/ls/user/2?pretty' -d '{
  "name" : "爱因斯坦",
  "name_en" : "Albert Einstein"
}'

curl -XPOST $ESADDR/_bulk?pretty -d '
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "3" } }
{ "name" : "刘顺", "name_en" : "LIU Shun" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "3" } }
{ "name" : "爱因斯坦", "name_en" : "Albert Einstein" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "3" } }
{ "name" : "Leslie Lamport", "name_en" : "Leslie Lamport" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "4" } }
{ "name" : "理光GR", "name_en" : "Ricoh GR" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "5" } }
{ "name" : "尼康D90", "name_en" : "Nikon D90" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "6" } }
{ "name" : "捷安特TCR ADV 2", "name_en" : "Giant TCR Adv 2" }
{ "index" : { "_index" : "ls", "_type" : "user", "_id" : "7" } }
{ "name" : "捷安特TCR PRO 1", "name_en" : "Giant Tcr Pro 1" }
'
