curl -X DELETE 'localhost:9200/kuromoji_part_of_speech'
curl -X PUT 'localhost:9200/kuromoji_part_of_speech' -H 'Content-Type: application/json' --data-binary @data/mapping_json/kuromoji_part_of_speech_token_filter.json
curl -X PUT 'localhost:9200/kuromoji_part_of_speech/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/kuromoji_part_of_speech_token_filter.json

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_part_of_speech/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/kuromoji_part_of_speech_token_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_part_of_speech/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_kuromoji_part_of_speech_token_filter.json | jq"