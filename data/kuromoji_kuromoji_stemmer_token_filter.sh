curl -X DELETE 'localhost:9200/kuromoji_stemmer'
curl -X PUT 'localhost:9200/kuromoji_stemmer' -H 'Content-Type: application/json' --data-binary @data/mapping_json/kuromoji_stemmer_token_filter.json
curl -X PUT 'localhost:9200/kuromoji_stemmer/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/kuromoji_stemmer_token_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_stemmer/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/kuromoji_stemmer_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_stemmer/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_kuromoji_stemmer_token_filter.json | jq"