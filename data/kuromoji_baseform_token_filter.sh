curl -X DELETE 'localhost:9200/kuromoji_baseform'
curl -X PUT 'localhost:9200/kuromoji_baseform' -H 'Content-Type: application/json' --data-binary @data/mapping_json/kuromoji_baseform_token_filter.json
curl -X PUT 'localhost:9200/kuromoji_baseform/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/kuromoji_baseform_token_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_baseform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/kuromoji_baseform_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_baseform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_kuromoji_baseform_token_filter.json | jq"