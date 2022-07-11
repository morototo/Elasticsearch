curl -X DELETE 'localhost:9200/icu_normalizer_char'
curl -X PUT 'localhost:9200/icu_normalizer_char' -H 'Content-Type: application/json' --data-binary @data/mapping_json/icu_normalizer_char_filter.json
curl -X PUT 'localhost:9200/icu_normalizer_char/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/icu_normalizer_char_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_normalizer_char/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/icu_normalizer_char_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/icu_normalizer_char/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_icu_normalizer_char_filter.json | jq"