curl -X DELETE 'localhost:9200/icu_collation'
curl -X PUT 'localhost:9200/icu_collation' -H 'Content-Type: application/json' --data-binary @data/mapping_json/icu_collation_token_filter.json | jq
curl -X PUT 'localhost:9200/icu_collation/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/icu_collation_token_filter.json | jq

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_collation/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/icu_collation_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_collation/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_icu_collation_token_filter.json | jq"