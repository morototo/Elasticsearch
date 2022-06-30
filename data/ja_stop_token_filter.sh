curl -X DELETE 'localhost:9200/ja_stop'
curl -X PUT 'localhost:9200/ja_stop' -H 'Content-Type: application/json' --data-binary @data/mapping_json/ja_stop_token_filter.json
curl -X PUT 'localhost:9200/ja_stop/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/ja_stop_token_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/ja_stop/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/ja_stop_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/ja_stop/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_ja_stop_token_filter.json | jq"