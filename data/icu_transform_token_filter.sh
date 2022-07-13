curl -X DELETE 'localhost:9200/icu_transform'
curl -X PUT 'localhost:9200/icu_transform' -H 'Content-Type: application/json' --data-binary @data/mapping_json/icu_transform_token_filter.json | jq
curl -X PUT 'localhost:9200/icu_transform/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/icu_transform_token_filter.json | jq

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_transform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/icu_transform_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_transform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_icu_transform_token_filter.json | jq"