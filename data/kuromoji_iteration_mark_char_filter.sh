curl -X DELETE 'localhost:9200/kuromoji_iteration_mark_char'
curl -X PUT 'localhost:9200/kuromoji_iteration_mark_char' -H 'Content-Type: application/json' --data-binary @data/mapping_json/kuromoji_iteration_mark_char_filter.json | jq
curl -X PUT 'localhost:9200/kuromoji_iteration_mark_char/_bulk' -H 'Content-Type: application/x-ndjson' --data-binary @data/bulk_data/kuromoji_iteration_mark_char_filter.json | jq

echo '\n=====Search for the index containing plugins======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_iteration_mark_char/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/kuromoji_iteration_mark_char_filter.json | jq"

echo '\n=====Index search without plugin======\n'

echo "You can check this curl.\ncurl -X GET 'localhost:9200/kuromoji_iteration_mark_char/_search' -H 'Content-Type: application/json' --data-binary @data/search_query/non_kuromoji_iteration_mark_char_filter.json | jq"