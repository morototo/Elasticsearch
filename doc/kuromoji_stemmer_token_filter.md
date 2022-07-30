```
{
  "took": 6,
  "timed_out": false,
  "_shards": {
    "total": 1,
    "successful": 1,
    "skipped": 0,
    "failed": 0
  },
  "hits": {
    "total": {
      "value": 1,
      "relation": "eq"
    },
    "max_score": 0.8579817,
    "hits": [
      {
        "_index": "kuromoji_stemmer",
        "_id": "3",
        "_score": 0.8579817,
        "_source": {
          "content": "私はサーバーを構築しています",
          "content_without_analyzer": "私はサーバーを構築しています"
        }
      }
    ]
  }
}
```