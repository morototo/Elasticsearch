curl -X DELETE 'localhost:9200/kuromoji_readingform'
curl -X PUT 'localhost:9200/kuromoji_readingform' -H 'Content-Type: application/json' --data-binary @data/mapping_json/kuromoji_readingform_token_filter.json
curl -X PUT 'localhost:9200/kuromoji_readingform/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/kuromoji_readingform_token_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_readingform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/kuromoji_readingform_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_readingform/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_kuromoji_readingform_token_filter.json | jq"